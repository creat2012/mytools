// ------------------------------------------------------------------
// Fast R-CNN
// Copyright (c) 2015 Microsoft
// Licensed under The MIT License [see fast-rcnn/LICENSE for details]
// Written by Ross Girshick
// ------------------------------------------------------------------

#include <cfloat>

#include "caffe/fast_rcnn_layers.hpp"

using std::max;
using std::min;
using std::floor;
using std::ceil;

namespace caffe {

template <typename Dtype>
void ROIPoolingLayer<Dtype>::LayerSetUp(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top) {
  ROIPoolingParameter roi_pool_param = this->layer_param_.roi_pooling_param(); // get the params
  CHECK_GT(roi_pool_param.pooled_h(), 0)
      << "pooled_h must be > 0";
  CHECK_GT(roi_pool_param.pooled_w(), 0)
      << "pooled_w must be > 0";
  pooled_height_ = roi_pool_param.pooled_h(); // after the height of the layer
  pooled_width_ = roi_pool_param.pooled_w();  // after the wifth of ..
  spatial_scale_ = roi_pool_param.spatial_scale(); // 输入图片与该层输入feature map的比值
  LOG(INFO) << "Spatial scale: " << spatial_scale_; // 这个东西不是应该是算出来的吗?????????
}

template <typename Dtype>
void ROIPoolingLayer<Dtype>::Reshape(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top) {
  channels_ = bottom[0]->channels();
  height_ = bottom[0]->height();
  width_ = bottom[0]->width();
  top[0]->Reshape(bottom[1]->num(), channels_, pooled_height_,  // so , the channels  and the num is not changed
      pooled_width_);  // top reshape
  max_idx_.Reshape(bottom[1]->num(), channels_, pooled_height_,
      pooled_width_); // max_idx_'s shape == top's shape
}
// 所以，这个roi是基于feature map 来生成的？
// 所以   spatial_scale_ 是个萨满东西
template <typename Dtype>
void ROIPoolingLayer<Dtype>::Forward_cpu(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top) {
  const Dtype* bottom_data = bottom[0]->cpu_data(); // read only
  const Dtype* bottom_rois = bottom[1]->cpu_data();
  // Number of ROIs
  int num_rois = bottom[1]->num();
  // number of image
  int batch_size = bottom[0]->num();
  int top_count = top[0]->count(); // top.count = top.num * top.height * top.width * top.channels
  Dtype* top_data = top[0]->mutable_cpu_data();
  caffe_set(top_count, Dtype(-FLT_MAX), top_data); // FLT_MAX == float max
  int* argmax_data = max_idx_.mutable_cpu_data();
  caffe_set(top_count, -1, argmax_data);

  // For each ROI R = [batch_index x1 y1 x2 y2]: max pool over R
  for (int n = 0; n < num_rois; ++n) {
    // the output of roi pooling is  num_rois * channels * height * width
    int roi_batch_ind = bottom_rois[0];  // id
    // 原图映射到feature map
    int roi_start_w = round(bottom_rois[1] * spatial_scale_); // start_w
    int roi_start_h = round(bottom_rois[2] * spatial_scale_); // start_h
    int roi_end_w = round(bottom_rois[3] * spatial_scale_); // end_w
    int roi_end_h = round(bottom_rois[4] * spatial_scale_); // end_h
    CHECK_GE(roi_batch_ind, 0);
    CHECK_LT(roi_batch_ind, batch_size);

    int roi_height = max(roi_end_h - roi_start_h + 1, 1); // region of interst  height
    int roi_width = max(roi_end_w - roi_start_w + 1, 1);  // ... width
    const Dtype bin_size_h = static_cast<Dtype>(roi_height)
                             / static_cast<Dtype>(pooled_height_); //  p_h
    const Dtype bin_size_w = static_cast<Dtype>(roi_width)
                             / static_cast<Dtype>(pooled_width_); //p_w

    const Dtype* batch_data = bottom_data + bottom[0]->offset(roi_batch_ind);

    for (int c = 0; c < channels_; ++c) {
      for (int ph = 0; ph < pooled_height_; ++ph) {
        for (int pw = 0; pw < pooled_width_; ++pw) {
          // Compute pooling region for this output unit:
          //  start (included) = floor(ph * roi_height / pooled_height_)
          //  end (excluded) = ceil((ph + 1) * roi_height / pooled_height_)
          int hstart = static_cast<int>(floor(static_cast<Dtype>(ph)
                                              * bin_size_h));
          int wstart = static_cast<int>(floor(static_cast<Dtype>(pw)
                                              * bin_size_w));
          int hend = static_cast<int>(ceil(static_cast<Dtype>(ph + 1)
                                           * bin_size_h));
          int wend = static_cast<int>(ceil(static_cast<Dtype>(pw + 1)
                                           * bin_size_w));
          // iou , hstart hend wstart wend in roi
          hstart = min(max(hstart + roi_start_h, 0), height_);
          hend = min(max(hend + roi_start_h, 0), height_);
          wstart = min(max(wstart + roi_start, 0), width_);
          wend = min(max(wend + roi_start_w, 0), width_);

          bool is_empty = (hend <= hstart) || (wend <= wstart); // not empty 映射到feature map 中可能会出现empty..

          const int pool_index = ph * pooled_width_ + pw;
          if (is_empty) {
            top_data[pool_index] = 0;
            argmax_data[pool_index] = -1;
          }
          // max pooling
          // find the max  hstart and wstart in feature map location
          for (int h = hstart; h < hend; ++h) {
            for (int w = wstart; w < wend; ++w) {
              const int index = h * width_ + w;
              if (batch_data[index] > top_data[pool_index]) {
                top_data[pool_index] = batch_data[index];
                argmax_data[pool_index] = index;
              }
            }
          }
        }
      }
      // Increment all data pointers by one channel
      // move the pointer
      batch_data += bottom[0]->offset(0, 1);
      top_data += top[0]->offset(0, 1);
      argmax_data += max_idx_.offset(0, 1);
    }
    // Increment ROI data pointer
    bottom_rois += bottom[1]->offset(1); // bottom += 5
  }
}

template <typename Dtype>
void ROIPoolingLayer<Dtype>::Backward_cpu(const vector<Blob<Dtype>*>& top,
      const vector<bool>& propagate_down, const vector<Blob<Dtype>*>& bottom) {
  NOT_IMPLEMENTED;
}


#ifdef CPU_ONLY
STUB_GPU(ROIPoolingLayer);
#endif

INSTANTIATE_CLASS(ROIPoolingLayer);
REGISTER_LAYER_CLASS(ROIPooling);

}  // namespace caffe

#ifndef CAFFE_NET_HPP_
#define CAFFE_NET_HPP_

#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>

#include "caffe/blob.hpp"
#include "caffe/common.hpp"
#include "caffe/layer.hpp"
#include "caffe/proto/caffe.pb.h"

namespace caffe {

/**
 * @brief Connects Layer%s together into a directed acyclic graph (DAG)
 *        specified by a NetParameter.
 *
 * TODO(dox): more thorough description.
 */
template <typename Dtype>
class Net {
 public:
  //  构造函数， 可以从 netparamter 进行生成 net
  //  也可以从文件中 (prototxt) 中进行生成 net
  explicit Net(const NetParameter& param);
  explicit Net(const string& param_file, Phase phase,
      const int level = 0, const vector<string>* stages = NULL);
  virtual ~Net() {} // 析构函数

  /// @brief Initialize a network with a NetParameter.
  void Init(const NetParameter& param);

  /**
   * @brief Run Forward and return the result.
   *
   */
  const vector<Blob<Dtype>*>& Forward(Dtype* loss = NULL);
  /// @brief DEPRECATED; use Forward() instead.
  const vector<Blob<Dtype>*>& ForwardPrefilled(Dtype* loss = NULL) {
    LOG_EVERY_N(WARNING, 1000) << "DEPRECATED: ForwardPrefilled() "
        << "will be removed in a future version. Use Forward().";
    return Forward(loss);
  }

  /**
   * The From and To variants of Forward and Backward operate on the
   * (topological) ordering by which the net is specified. For general DAG
   * networks, note that (1) computing from one layer to another might entail
   * extra computation on unrelated branches, and (2) computation starting in
   * the middle may be incorrect if all of the layers of a fan-in are not
   * included.
   */
  Dtype ForwardFromTo(int start, int end);
  Dtype ForwardFrom(int start);
  Dtype ForwardTo(int end);
  /// @brief DEPRECATED; set input blobs then use Forward() instead.
  const vector<Blob<Dtype>*>& Forward(const vector<Blob<Dtype>* > & bottom,
      Dtype* loss = NULL);

  /**
   * @brief Zeroes out the diffs of all net parameters.
   *        Should be run before Backward.
   */
  void ClearParamDiffs();

  /**
   * The network backward should take no input and output, since it solely
   * computes the gradient w.r.t the parameters, and the data has already been
   * provided during the forward pass.
   */
  void Backward();
  void BackwardFromTo(int start, int end);
  void BackwardFrom(int start);
  void BackwardTo(int end);

  /**
   * @brief Reshape all layers from bottom to top.
   *
   * This is useful to propagate changes to layer sizes without running
   * a forward pass, e.g. to compute output feature size.
   */
  void Reshape();

  Dtype ForwardBackward() {
    Dtype loss;
    Forward(&loss);
    Backward();
    return loss;
  }

  /// @brief Updates the network weights based on the diff values computed.
  void Update();
  /**
   * @brief Shares weight data of owner blobs with shared blobs.
   *
   * Note: this is called by Net::Init, and thus should normally not be
   * called manually.
   */
  void ShareWeights();

  /**
   * @brief For an already initialized net, implicitly copies (i.e., using no
   *        additional memory) the pre-trained layers from another Net.
   */
  void ShareTrainedLayersWith(const Net* other);
  // For an already initialized net, CopyTrainedLayersFrom() copies the already
  // trained layers from another net parameter instance.
  /**
   * @brief For an already initialized net, copies the pre-trained layers from
   *        another Net.
   */
  void CopyTrainedLayersFrom(const NetParameter& param);
  void CopyTrainedLayersFrom(const string trained_filename);
  void CopyTrainedLayersFromBinaryProto(const string trained_filename);
  void CopyTrainedLayersFromHDF5(const string trained_filename);
  /// @brief Writes the net to a proto.
  void ToProto(NetParameter* param, bool write_diff = false) const;
  /// @brief Writes the net to an HDF5 file.
  void ToHDF5(const string& filename, bool write_diff = false) const;

  /// @brief returns the network name. 返回net的名称
  inline const string& name() const { return name_; }
  /// @brief returns the layer names 返回层的名称
  inline const vector<string>& layer_names() const { return layer_names_; }
  /// @brief returns the blob names 
  inline const vector<string>& blob_names() const { return blob_names_; }
  /// @brief returns the blobs
  inline const vector<shared_ptr<Blob<Dtype> > >& blobs() const {
    return blobs_;
  }
  /// @brief returns the layers
  inline const vector<shared_ptr<Layer<Dtype> > >& layers() const {
    return layers_;
  }
  /// @brief returns the phase: TRAIN or TEST
  inline Phase phase() const { return phase_; }
  /**
   * @brief returns the bottom vecs for each layer -- usually you won't
   *        need this unless you do per-layer checks such as gradients.
   */
  inline const vector<vector<Blob<Dtype>*> >& bottom_vecs() const {
    return bottom_vecs_;
  }
  /**
   * @brief returns the top vecs for each layer -- usually you won't
   *        need this unless you do per-layer checks such as gradients.
   */
  inline const vector<vector<Blob<Dtype>*> >& top_vecs() const {
    return top_vecs_;
  }
  /// @brief returns the ids of the top blobs of layer i
  inline const vector<int> & top_ids(int i) const {
    CHECK_GE(i, 0) << "Invalid layer id";
    CHECK_LT(i, top_id_vecs_.size()) << "Invalid layer id";
    return top_id_vecs_[i];
  }
  /// @brief returns the ids of the bottom blobs of layer i
  inline const vector<int> & bottom_ids(int i) const {
    CHECK_GE(i, 0) << "Invalid layer id";
    CHECK_LT(i, bottom_id_vecs_.size()) << "Invalid layer id";
    return bottom_id_vecs_[i];
  }
  inline const vector<vector<bool> >& bottom_need_backward() const {
    return bottom_need_backward_;
  }
  inline const vector<Dtype>& blob_loss_weights() const {
    return blob_loss_weights_;
  }
  inline const vector<bool>& layer_need_backward() const {
    return layer_need_backward_;
  }
  /// @brief returns the parameters
  inline const vector<shared_ptr<Blob<Dtype> > >& params() const {
    return params_;
  }
  inline const vector<Blob<Dtype>*>& learnable_params() const {
    return learnable_params_;
  }
  /// @brief returns the learnable parameter learning rate multipliers
  inline const vector<float>& params_lr() const { return params_lr_; }
  inline const vector<bool>& has_params_lr() const { return has_params_lr_; }
  /// @brief returns the learnable parameter decay multipliers
  inline const vector<float>& params_weight_decay() const {
    return params_weight_decay_;
  }
  inline const vector<bool>& has_params_decay() const {
    return has_params_decay_;
  }
  const map<string, int>& param_names_index() const {
    return param_names_index_;
  }
  inline const vector<int>& param_owners() const { return param_owners_; }
  inline const vector<string>& param_display_names() const {
    return param_display_names_;
  }
  /// @brief Input and output blob numbers
  inline int num_inputs() const { return net_input_blobs_.size(); }
  inline int num_outputs() const { return net_output_blobs_.size(); }
  inline const vector<Blob<Dtype>*>& input_blobs() const {
    return net_input_blobs_;
  }
  inline const vector<Blob<Dtype>*>& output_blobs() const {
    return net_output_blobs_;
  }
  inline const vector<int>& input_blob_indices() const {
    return net_input_blob_indices_;
  }
  inline const vector<int>& output_blob_indices() const {
    return net_output_blob_indices_;
  }
  bool has_blob(const string& blob_name) const;
  const shared_ptr<Blob<Dtype> > blob_by_name(const string& blob_name) const;
  bool has_layer(const string& layer_name) const;
  const shared_ptr<Layer<Dtype> > layer_by_name(const string& layer_name) const;

  void set_debug_info(const bool value) { debug_info_ = value; }

  // Helpers for Init.
  /**
   * @brief Remove layers that the user specified should be excluded given the current
   *        phase, level, and stage.
   */
  static void FilterNet(const NetParameter& param,
      NetParameter* param_filtered);
  /// @brief return whether NetState state meets NetStateRule rule
  static bool StateMeetsRule(const NetState& state, const NetStateRule& rule,
      const string& layer_name);

  // Invoked at specific points during an iteration
  class Callback {
   protected:
    virtual void run(int layer) = 0;

    template <typename T>
    friend class Net;
  };
  const vector<Callback*>& before_forward() const { return before_forward_; }
  void add_before_forward(Callback* value) {
    before_forward_.push_back(value);
  }
  const vector<Callback*>& after_forward() const { return after_forward_; }
  void add_after_forward(Callback* value) {
    after_forward_.push_back(value);
  }
  const vector<Callback*>& before_backward() const { return before_backward_; }
  void add_before_backward(Callback* value) {
    before_backward_.push_back(value);
  }
  const vector<Callback*>& after_backward() const { return after_backward_; }
  void add_after_backward(Callback* value) {
    after_backward_.push_back(value);
  }

 protected:
  // Helpers for Init.
  /// @brief Append a new top blob to the net.
  void AppendTop(const NetParameter& param, const int layer_id,
                 const int top_id, set<string>* available_blobs,
                 map<string, int>* blob_name_to_idx);
  /// @brief Append a new bottom blob to the net.
  int AppendBottom(const NetParameter& param, const int layer_id,
                   const int bottom_id, set<string>* available_blobs,
                   map<string, int>* blob_name_to_idx);
  /// @brief Append a new parameter blob to the net.
  void AppendParam(const NetParameter& param, const int layer_id,
                   const int param_id);

  /// @brief Helper for displaying debug info in Forward.
  void ForwardDebugInfo(const int layer_id);
  /// @brief Helper for displaying debug info in Backward.
  void BackwardDebugInfo(const int layer_id);
  /// @brief Helper for displaying debug info in Update.
  void UpdateDebugInfo(const int param_id);

  /// @brief The network name
  string name_; // net name
  /// @brief The phase: TRAIN or TEST
  Phase phase_; // 该网络结构用来 train 还是 test
  /// @brief Individual layers in the net
  vector<shared_ptr<Layer<Dtype> > > layers_; // net 中出现的所有 layer, 是一个个的layer实例
  vector<string> layer_names_;  // net 中出现的所有 layer的名称, 是一个个string
  map<string, int> layer_names_index_;  // net 中 layers 的名称和索引的映射
  vector<bool> layer_need_backward_;  // 记录每个layer 是否需要反向传播
  /// @brief the blobs storing intermediate results between the layer.
  vector<shared_ptr<Blob<Dtype> > > blobs_; // net中的所有blob ？
  vector<string> blob_names_; // net 中所有 blob的名称
  map<string, int> blob_names_index_; // 记录net中所有blob 名称和索引的对应
  vector<bool> blob_need_backward_;   // 记录net中所有blob是否需要反向传播
  /// bottom_vecs stores the vectors containing the input for each layer.
  /// They don't actually host the blobs (blobs_ does), so we simply store
  /// pointers.
  vector<vector<Blob<Dtype>*> > bottom_vecs_; // 记录每个layer的输入blob ,  只是记录了指针	
  vector<vector<int> > bottom_id_vecs_;       // 用于定位每个layer的输入blob在blobs_中的位置
  vector<vector<bool> > bottom_need_backward_; // 标识每个输入blob是否需要反向传播
  /// top_vecs stores the vectors containing the output for each layer
  vector<vector<Blob<Dtype>*> > top_vecs_; // 输出blob
  vector<vector<int> > top_id_vecs_;
  /// Vector of weight in the loss (or objective) function of each net blob,
  /// indexed by blob_id.
  vector<Dtype> blob_loss_weights_; // 每个blob 对全局损失函数的贡献权重
  vector<vector<int> > param_id_vecs_;
  vector<int> param_owners_;
  vector<string> param_display_names_;
  vector<pair<int, int> > param_layer_indices_;
  map<string, int> param_names_index_;
  /// blob indices for the input and the output of the net  网络输入输出索引
  vector<int> net_input_blob_indices_;
  vector<int> net_output_blob_indices_;
  vector<Blob<Dtype>*> net_input_blobs_;
  vector<Blob<Dtype>*> net_output_blobs_;
  /// The parameters in the network.  
  vector<shared_ptr<Blob<Dtype> > > params_; // 网络权值
  vector<Blob<Dtype>*> learnable_params_;   // 网络可训练权值
  /**
   * The mapping from params_ -> learnable_params_: we have
   * learnable_param_ids_.size() == params_.size(),
   * and learnable_params_[learnable_param_ids_[i]] == params_[i].get()
   * if and only if params_[i] is an "owner"; otherwise, params_[i] is a sharer
   * and learnable_params_[learnable_param_ids_[i]] gives its owner.
   */
  vector<int> learnable_param_ids_;
  /// the learning rate multipliers for learnable_params_
  vector<float> params_lr_; // 学习速率 北辰因子
  vector<bool> has_params_lr_;
  /// the weight decay multipliers for learnable_params_
  vector<float> params_weight_decay_;
  vector<bool> has_params_decay_;
  /// The bytes of memory used by this net
  size_t memory_used_;  // 记录网络占用内存多少
  /// Whether to compute and display debug info for the net.
  bool debug_info_; // 是否显示调试信息 
  // Callbacksa ? 
  vector<Callback*> before_forward_;
  vector<Callback*> after_forward_;
  vector<Callback*> before_backward_;
  vector<Callback*> after_backward_;

DISABLE_COPY_AND_ASSIGN(Net); // 禁用拷贝构造函数/ 赋值运算函数
};


}  // namespace caffe

#endif  // CAFFE_NET_HPP_

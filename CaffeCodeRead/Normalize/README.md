x[i] = scales[i] * x[i] / ( 1 / sum(x[i]^2) ) 

bool across_spatial_; // norm  for all channels * height * width , or channels
if across_spatial_ == True:
norm for channels * width * heigth pix
else:
norm for channles pix (for every pix)

bool channel_shared_; // the result mult scale for same or not
if channel_shared_ == True:
scales[i] is same for all channels * width * heigth
else :
// wrong :scales[i] is same for all channels of every pix
scales[i] is same for every channel, so the up is wrong..!

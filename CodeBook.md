---
title: "Getting and Cleaning Data Project Code Book"
author: "HH"
date: "Friday, September 19, 2014"
output: html_document
---

This codebook describes the output data contained in the text file:

* **tidy_dataset_2.txt**

1. Column 1 contains the Row Names. Column Names [2] through [87] are human readable, and are detailed in the section **Column Names** below
2. Row Names are of the form **Subject_n_DOING**, where **n** is the subject identifier and **DOING** is the activity label and are detailed in the section **Row Names** below
3. Data is numeric, and contains the average value (mean) of the COLNAME in the original data, for each ROWNAME

## Column Names

 [1] ""                                                                      
 [2] "time_domain_Body_Accelerometer_mean_X"                                 
 [3] "time_domain_Body_Accelerometer_mean_Y"                                 
 [4] "time_domain_Body_Accelerometer_mean_Z"                                 
 [5] "time_domain_Body_Accelerometer_std_X"                                  
 [6] "time_domain_Body_Accelerometer_std_Y"                                  
 [7] "time_domain_Body_Accelerometer_std_Z"                                  
 [8] "time_domain_GravityAccelerometer_mean_X"                               
 [9] "time_domain_GravityAccelerometer_mean_Y"                               
[10] "time_domain_GravityAccelerometer_mean_Z"                               
[11] "time_domain_GravityAccelerometer_std_X"                                
[12] "time_domain_GravityAccelerometer_std_Y"                                
[13] "time_domain_GravityAccelerometer_std_Z"                                
[14] "time_domain_Body_Accelerometer_Jerk_mean_X"                            
[15] "time_domain_Body_Accelerometer_Jerk_mean_Y"                            
[16] "time_domain_Body_Accelerometer_Jerk_mean_Z"                            
[17] "time_domain_Body_Accelerometer_Jerk_std_X"                             
[18] "time_domain_Body_Accelerometer_Jerk_std_Y"                             
[19] "time_domain_Body_Accelerometer_Jerk_std_Z"                             
[20] "time_domain_Body_Gyroscope_mean_X"                                     
[21] "time_domain_Body_Gyroscope_mean_Y"                                     
[22] "time_domain_Body_Gyroscope_mean_Z"                                     
[23] "time_domain_Body_Gyroscope_std_X"                                      
[24] "time_domain_Body_Gyroscope_std_Y"                                      
[25] "time_domain_Body_Gyroscope_std_Z"                                      
[26] "time_domain_Body_Gyroscope_Jerk_mean_X"                                
[27] "time_domain_Body_Gyroscope_Jerk_mean_Y"                                
[28] "time_domain_Body_Gyroscope_Jerk_mean_Z"                                
[29] "time_domain_Body_Gyroscope_Jerk_std_X"                                 
[30] "time_domain_Body_Gyroscope_Jerk_std_Y"                                 
[31] "time_domain_Body_Gyroscope_Jerk_std_Z"                                 
[32] "time_domain_Body_Accelerometer_Mag_mean"                               
[33] "time_domain_Body_Accelerometer_Mag_std"                                
[34] "time_domain_GravityAccelerometer_Mag_mean"                             
[35] "time_domain_GravityAccelerometer_Mag_std"                              
[36] "time_domain_Body_Accelerometer_Jerk_Mag_mean"                          
[37] "time_domain_Body_Accelerometer_Jerk_Mag_std"                           
[38] "time_domain_Body_Gyroscope_Mag_mean"                                   
[39] "time_domain_Body_Gyroscope_Mag_std"                                    
[40] "time_domain_Body_Gyroscope_Jerk_Mag_mean"                              
[41] "time_domain_Body_Gyroscope_Jerk_Mag_std"                               
[42] "fourier_transform_Body_Accelerometer_mean_X"                           
[43] "fourier_transform_Body_Accelerometer_mean_Y"                           
[44] "fourier_transform_Body_Accelerometer_mean_Z"                           
[45] "fourier_transform_Body_Accelerometer_std_X"                            
[46] "fourier_transform_Body_Accelerometer_std_Y"                            
[47] "fourier_transform_Body_Accelerometer_std_Z"                            
[48] "fourier_transform_Body_Accelerometer_meanFrequency_X"                  
[49] "fourier_transform_Body_Accelerometer_meanFrequency_Y"                  
[50] "fourier_transform_Body_Accelerometer_meanFrequency_Z"                  
[51] "fourier_transform_Body_Accelerometer_Jerk_mean_X"                      
[52] "fourier_transform_Body_Accelerometer_Jerk_mean_Y"                      
[53] "fourier_transform_Body_Accelerometer_Jerk_mean_Z"                      
[54] "fourier_transform_Body_Accelerometer_Jerk_std_X"                       
[55] "fourier_transform_Body_Accelerometer_Jerk_std_Y"                       
[56] "fourier_transform_Body_Accelerometer_Jerk_std_Z"                       
[57] "fourier_transform_Body_Accelerometer_Jerk_meanFrequency_X"             
[58] "fourier_transform_Body_Accelerometer_Jerk_meanFrequency_Y"             
[59] "fourier_transform_Body_Accelerometer_Jerk_meanFrequency_Z"             
[60] "fourier_transform_Body_Gyroscope_mean_X"                               
[61] "fourier_transform_Body_Gyroscope_mean_Y"                               
[62] "fourier_transform_Body_Gyroscope_mean_Z"                               
[63] "fourier_transform_Body_Gyroscope_std_X"                                
[64] "fourier_transform_Body_Gyroscope_std_Y"                                
[65] "fourier_transform_Body_Gyroscope_std_Z"                                
[66] "fourier_transform_Body_Gyroscope_meanFrequency_X"                      
[67] "fourier_transform_Body_Gyroscope_meanFrequency_Y"                      
[68] "fourier_transform_Body_Gyroscope_meanFrequency_Z"                      
[69] "fourier_transform_Body_Accelerometer_Mag_mean"                         
[70] "fourier_transform_Body_Accelerometer_Mag_std"                          
[71] "fourier_transform_Body_Accelerometer_Mag_meanFrequency"                
[72] "fourier_transform_Body_Accelerometer_Jerk_Mag_mean"                    
[73] "fourier_transform_Body_Accelerometer_Jerk_Mag_std"                     
[74] "fourier_transform_Body_Accelerometer_Jerk_Mag_meanFrequency"           
[75] "fourier_transform_Body_Gyroscope_Mag_mean"                             
[76] "fourier_transform_Body_Gyroscope_Mag_std"                              
[77] "fourier_transform_Body_Gyroscope_Mag_meanFrequency"                    
[78] "fourier_transform_Body_Gyroscope_Jerk_Mag_mean"                        
[79] "fourier_transform_Body_Gyroscope_Jerk_Mag_std"                         
[80] "fourier_transform_Body_Gyroscope_Jerk_Mag_meanFrequency"               
[81] "angle_between_time_domain_Body_Accelerometer_Mean_and_gravity"         
[82] "angle_between_time_domain_Body_Accelerometer_Jerk_Mean_and_gravityMean"  
[83] "angle_between_time_domain_Body_Gyroscope_Mean_and_gravityMean"         
[84] "angle_between_time_domain_Body_Gyroscope_Jerk_Mean_and_gravityMean"    
[85] "angle_between_X_and_gravityMean"                                       
[86] "angle_between_Y_and_gravityMean"                                       
[87] "angle_between_Z_and_gravityMean"


## Row Names

  [1] "Subject_1_LAYING"             
  [2] "Subject_1_SITTING"            
  [3] "Subject_1_STANDING"           
  [4] "Subject_1_WALKING"            
  [5] "Subject_1_WALKING_DOWNSTAIRS"   
  [6] "Subject_1_WALKING_UPSTAIRS"     
  [7] "Subject_10_LAYING"            
  [8] "Subject_10_SITTING"           
  [9] "Subject_10_STANDING"          
 [10] "Subject_10_WALKING"           
 [11] "Subject_10_WALKING_DOWNSTAIRS"  
 [12] "Subject_10_WALKING_UPSTAIRS"    
 [13] "Subject_11_LAYING"            
 [14] "Subject_11_SITTING"           
 [15] "Subject_11_STANDING"          
 [16] "Subject_11_WALKING"           
 [17] "Subject_11_WALKING_DOWNSTAIRS"  
 [18] "Subject_11_WALKING_UPSTAIRS"    
 [19] "Subject_12_LAYING"            
 [20] "Subject_12_SITTING"           
 [21] "Subject_12_STANDING"          
 [22] "Subject_12_WALKING"           
 [23] "Subject_12_WALKING_DOWNSTAIRS"  
 [24] "Subject_12_WALKING_UPSTAIRS"    
 [25] "Subject_13_LAYING"            
 [26] "Subject_13_SITTING"           
 [27] "Subject_13_STANDING"          
 [28] "Subject_13_WALKING"           
 [29] "Subject_13_WALKING_DOWNSTAIRS"  
 [30] "Subject_13_WALKING_UPSTAIRS"    
 [31] "Subject_14_LAYING"            
 [32] "Subject_14_SITTING"           
 [33] "Subject_14_STANDING"          
 [34] "Subject_14_WALKING"           
 [35] "Subject_14_WALKING_DOWNSTAIRS"  
 [36] "Subject_14_WALKING_UPSTAIRS"    
 [37] "Subject_15_LAYING"            
 [38] "Subject_15_SITTING"           
 [39] "Subject_15_STANDING"          
 [40] "Subject_15_WALKING"           
 [41] "Subject_15_WALKING_DOWNSTAIRS"  
 [42] "Subject_15_WALKING_UPSTAIRS"    
 [43] "Subject_16_LAYING"            
 [44] "Subject_16_SITTING"           
 [45] "Subject_16_STANDING"          
 [46] "Subject_16_WALKING"           
 [47] "Subject_16_WALKING_DOWNSTAIRS"  
 [48] "Subject_16_WALKING_UPSTAIRS"    
 [49] "Subject_17_LAYING"            
 [50] "Subject_17_SITTING"           
 [51] "Subject_17_STANDING"          
 [52] "Subject_17_WALKING"           
 [53] "Subject_17_WALKING_DOWNSTAIRS"  
 [54] "Subject_17_WALKING_UPSTAIRS"    
 [55] "Subject_18_LAYING"            
 [56] "Subject_18_SITTING"           
 [57] "Subject_18_STANDING"          
 [58] "Subject_18_WALKING"           
 [59] "Subject_18_WALKING_DOWNSTAIRS"  
 [60] "Subject_18_WALKING_UPSTAIRS"    
 [61] "Subject_19_LAYING"            
 [62] "Subject_19_SITTING"           
 [63] "Subject_19_STANDING"          
 [64] "Subject_19_WALKING"           
 [65] "Subject_19_WALKING_DOWNSTAIRS"  
 [66] "Subject_19_WALKING_UPSTAIRS"    
 [67] "Subject_2_LAYING"             
 [68] "Subject_2_SITTING"            
 [69] "Subject_2_STANDING"           
 [70] "Subject_2_WALKING"            
 [71] "Subject_2_WALKING_DOWNSTAIRS"   
 [72] "Subject_2_WALKING_UPSTAIRS"     
 [73] "Subject_20_LAYING"            
 [74] "Subject_20_SITTING"           
 [75] "Subject_20_STANDING"          
 [76] "Subject_20_WALKING"           
 [77] "Subject_20_WALKING_DOWNSTAIRS"  
 [78] "Subject_20_WALKING_UPSTAIRS"    
 [79] "Subject_21_LAYING"            
 [80] "Subject_21_SITTING"           
 [81] "Subject_21_STANDING"          
 [82] "Subject_21_WALKING"           
 [83] "Subject_21_WALKING_DOWNSTAIRS"  
 [84] "Subject_21_WALKING_UPSTAIRS"    
 [85] "Subject_22_LAYING"            
 [86] "Subject_22_SITTING"           
 [87] "Subject_22_STANDING"          
 [88] "Subject_22_WALKING"           
 [89] "Subject_22_WALKING_DOWNSTAIRS"  
 [90] "Subject_22_WALKING_UPSTAIRS"    
 [91] "Subject_23_LAYING"            
 [92] "Subject_23_SITTING"           
 [93] "Subject_23_STANDING"          
 [94] "Subject_23_WALKING"           
 [95] "Subject_23_WALKING_DOWNSTAIRS"  
 [96] "Subject_23_WALKING_UPSTAIRS"    
 [97] "Subject_24_LAYING"            
 [98] "Subject_24_SITTING"           
 [99] "Subject_24_STANDING"          
[100] "Subject_24_WALKING"           
[101] "Subject_24_WALKING_DOWNSTAIRS"  
[102] "Subject_24_WALKING_UPSTAIRS"    
[103] "Subject_25_LAYING"            
[104] "Subject_25_SITTING"           
[105] "Subject_25_STANDING"          
[106] "Subject_25_WALKING"           
[107] "Subject_25_WALKING_DOWNSTAIRS"  
[108] "Subject_25_WALKING_UPSTAIRS"    
[109] "Subject_26_LAYING"            
[110] "Subject_26_SITTING"           
[111] "Subject_26_STANDING"          
[112] "Subject_26_WALKING"           
[113] "Subject_26_WALKING_DOWNSTAIRS"  
[114] "Subject_26_WALKING_UPSTAIRS"    
[115] "Subject_27_LAYING"            
[116] "Subject_27_SITTING"           
[117] "Subject_27_STANDING"          
[118] "Subject_27_WALKING"           
[119] "Subject_27_WALKING_DOWNSTAIRS"  
[120] "Subject_27_WALKING_UPSTAIRS"    
[121] "Subject_28_LAYING"            
[122] "Subject_28_SITTING"           
[123] "Subject_28_STANDING"          
[124] "Subject_28_WALKING"           
[125] "Subject_28_WALKING_DOWNSTAIRS"  
[126] "Subject_28_WALKING_UPSTAIRS"    
[127] "Subject_29_LAYING"            
[128] "Subject_29_SITTING"           
[129] "Subject_29_STANDING"          
[130] "Subject_29_WALKING"           
[131] "Subject_29_WALKING_DOWNSTAIRS"  
[132] "Subject_29_WALKING_UPSTAIRS"    
[133] "Subject_3_LAYING"             
[134] "Subject_3_SITTING"            
[135] "Subject_3_STANDING"           
[136] "Subject_3_WALKING"            
[137] "Subject_3_WALKING_DOWNSTAIRS"   
[138] "Subject_3_WALKING_UPSTAIRS"     
[139] "Subject_30_LAYING"            
[140] "Subject_30_SITTING"           
[141] "Subject_30_STANDING"          
[142] "Subject_30_WALKING"           
[143] "Subject_30_WALKING_DOWNSTAIRS"  
[144] "Subject_30_WALKING_UPSTAIRS"    
[145] "Subject_4_LAYING"             
[146] "Subject_4_SITTING"            
[147] "Subject_4_STANDING"           
[148] "Subject_4_WALKING"            
[149] "Subject_4_WALKING_DOWNSTAIRS"   
[150] "Subject_4_WALKING_UPSTAIRS"     
[151] "Subject_5_LAYING"             
[152] "Subject_5_SITTING"            
[153] "Subject_5_STANDING"           
[154] "Subject_5_WALKING"            
[155] "Subject_5_WALKING_DOWNSTAIRS"   
[156] "Subject_5_WALKING_UPSTAIRS"     
[157] "Subject_6_LAYING"             
[158] "Subject_6_SITTING"            
[159] "Subject_6_STANDING"           
[160] "Subject_6_WALKING"            
[161] "Subject_6_WALKING_DOWNSTAIRS"   
[162] "Subject_6_WALKING_UPSTAIRS"     
[163] "Subject_7_LAYING"             
[164] "Subject_7_SITTING"            
[165] "Subject_7_STANDING"           
[166] "Subject_7_WALKING"            
[167] "Subject_7_WALKING_DOWNSTAIRS"   
[168] "Subject_7_WALKING_UPSTAIRS"     
[169] "Subject_8_LAYING"             
[170] "Subject_8_SITTING"            
[171] "Subject_8_STANDING"           
[172] "Subject_8_WALKING"            
[173] "Subject_8_WALKING_DOWNSTAIRS"   
[174] "Subject_8_WALKING_UPSTAIRS"     
[175] "Subject_9_LAYING"             
[176] "Subject_9_SITTING"            
[177] "Subject_9_STANDING"           
[178] "Subject_9_WALKING"            
[179] "Subject_9_WALKING_DOWNSTAIRS"   
[180] "Subject_9_WALKING_UPSTAIRS"  
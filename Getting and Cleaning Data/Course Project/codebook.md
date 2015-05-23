========================================================================

   1	Subject: Testing individual, named from 1 to 30

------------------------------------------------------------------------

   Storage mode: integer
   Measurement: interval

            Min:   1.000
            Max:  30.000
           
========================================================================

   2	Activity: Types of activity

------------------------------------------------------------------------

   Storage mode: integer
   Measurement: nominal

          Values and labels    N    Percent 
                                            
   1   'WALKING'              30   16.7 16.7
   2   'WALKING_UPSTAIRS'     30   16.7 16.7
   3   'WALKING_DOWNSTAIRS'   30   16.7 16.7
   4   'SITTING'              30   16.7 16.7
   5   'STANDING'             30   16.7 16.7
   6   'LAYING'               30   16.7 16.7

========================================================================

   3	Group: Types of group (Test or Train)

------------------------------------------------------------------------

   Storage mode: character
   Measurement: nominal

========================================================================
Feature Selection 
=================

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerator-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccelerator-XYZ and tGravityAccelerator-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroscopeJerk-XYZ). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerator-XYZ, frequencyBodyAcceleratorJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAcceleratorJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

========================================================================

   4	timeBodyAccelerator-mean()-X:  

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:   0.222
            Max:   0.301
           Mean:   0.274
       Std.Dev.:   0.012
       Skewness:  -1.055
       Kurtosis:   2.329

========================================================================

   5	timeBodyAccelerator-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.041
            Max:  -0.001
           Mean:  -0.018
       Std.Dev.:   0.006
       Skewness:  -0.537
       Kurtosis:   1.612

========================================================================

   6	timeBodyAccelerator-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.153
            Max:  -0.075
           Mean:  -0.109
       Std.Dev.:   0.010
       Skewness:  -1.115
       Kurtosis:   4.910

========================================================================

  7	timeBodyAccelerator-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.996
            Max:   0.627
           Mean:  -0.558
       Std.Dev.:   0.450
       Skewness:   0.438
       Kurtosis:  -1.216

========================================================================

   8	timeBodyAccelerator-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.617
           Mean:  -0.460
       Std.Dev.:   0.495
       Skewness:   0.235
       Kurtosis:  -1.586

========================================================================

   9	timeBodyAccelerator-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.609
           Mean:  -0.576
       Std.Dev.:   0.394
       Skewness:   0.451
       Kurtosis:  -1.026

========================================================================

   10	timeGravityAccelerator-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.680
            Max:   0.975
           Mean:   0.697
       Std.Dev.:   0.486
       Skewness:  -1.811
       Kurtosis:   1.452

========================================================================

   11	timeGravityAccelerator-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.480
            Max:   0.957
           Mean:  -0.016
       Std.Dev.:   0.344
       Skewness:   1.427
       Kurtosis:   1.051

========================================================================

   12	timeGravityAccelerator-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.495
            Max:   0.958
           Mean:   0.074
       Std.Dev.:   0.288
       Skewness:   1.145
       Kurtosis:   1.208

========================================================================

   13	timeGravityAccelerator-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:  -0.830
           Mean:  -0.964
       Std.Dev.:   0.025
       Skewness:   1.669
       Kurtosis:   5.051

========================================================================

   14	timeGravityAccelerator-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:  -0.644
           Mean:  -0.952
       Std.Dev.:   0.033
       Skewness:   4.817
       Kurtosis:  42.501

========================================================================

   15	timeGravityAccelerator-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:  -0.610
           Mean:  -0.936
       Std.Dev.:   0.040
       Skewness:   3.248
       Kurtosis:  22.288

========================================================================

   16	timeBodyAcceleratorJerk-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  0.043
            Max:  0.130
           Mean:  0.079
       Std.Dev.:  0.013
       Skewness:  0.821
       Kurtosis:  2.560

========================================================================

   17	timeBodyAcceleratorJerk-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.039
            Max:   0.057
           Mean:   0.008
       Std.Dev.:   0.014
       Skewness:  -0.192
       Kurtosis:   1.606

========================================================================

   18	timeBodyAcceleratorJerk-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.067
            Max:   0.038
           Mean:  -0.005
       Std.Dev.:   0.013
       Skewness:  -0.835
       Kurtosis:   3.525

========================================================================

   19	timeBodyAcceleratorJerk-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.544
           Mean:  -0.595
       Std.Dev.:   0.416
       Skewness:   0.424
       Kurtosis:  -1.273

========================================================================

   20	timeBodyAcceleratorJerk-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.355
           Mean:  -0.565
       Std.Dev.:   0.432
       Skewness:   0.362
       Kurtosis:  -1.450

========================================================================

   21	timeBodyAcceleratorJerk-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.031
           Mean:  -0.736
       Std.Dev.:   0.276
       Skewness:   0.679
       Kurtosis:  -0.681

========================================================================

   22	timeBodyGyroscope-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.206
            Max:   0.193
           Mean:  -0.032
       Std.Dev.:   0.054
       Skewness:   0.341
       Kurtosis:   2.391

========================================================================

   23	timeBodyGyroscope-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.204
            Max:   0.027
           Mean:  -0.074
       Std.Dev.:   0.035
       Skewness:  -0.286
       Kurtosis:   2.070

========================================================================

   24	timeBodyGyroscope-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.072
            Max:   0.179
           Mean:   0.087
       Std.Dev.:   0.036
       Skewness:  -0.781
       Kurtosis:   3.224

========================================================================

   25	timeBodyGyroscope-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.268
           Mean:  -0.692
       Std.Dev.:   0.290
       Skewness:   0.391
       Kurtosis:  -1.073

========================================================================

   26	timeBodyGyroscope-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.477
           Mean:  -0.653
       Std.Dev.:   0.351
       Skewness:   0.731
       Kurtosis:  -0.458

========================================================================

   27	timeBodyGyroscope-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.565
           Mean:  -0.616
       Std.Dev.:   0.372
       Skewness:   0.531
       Kurtosis:  -0.798

========================================================================

   28	timeBodyGyroscopeJerk-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.157
            Max:  -0.022
           Mean:  -0.096
       Std.Dev.:   0.023
       Skewness:   0.485
       Kurtosis:   1.825

========================================================================

   29	timeBodyGyroscopeJerk-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.077
            Max:  -0.013
           Mean:  -0.043
       Std.Dev.:   0.010
       Skewness:  -0.814
       Kurtosis:   2.785

========================================================================

   30	timeBodyGyroscopeJerk-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.092
            Max:  -0.007
           Mean:  -0.055
       Std.Dev.:   0.012
       Skewness:   0.258
       Kurtosis:   1.867

========================================================================

   31	timeBodyGyroscopeJerk-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.179
           Mean:  -0.704
       Std.Dev.:   0.300
       Skewness:   0.554
       Kurtosis:  -0.916

========================================================================

   32	timeBodyGyroscopeJerk-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.296
           Mean:  -0.764
       Std.Dev.:   0.267
       Skewness:   1.156
       Kurtosis:   1.064

========================================================================

   33	timeBodyGyroscopeJerk-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.193
           Mean:  -0.710
       Std.Dev.:   0.304
       Skewness:   0.649
       Kurtosis:  -0.652

========================================================================

   34	timeBodyAcceleratorMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645
           Mean:  -0.497
       Std.Dev.:   0.472
       Skewness:   0.231
       Kurtosis:  -1.587

========================================================================

   35	timeBodyAcceleratorMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428
           Mean:  -0.544
       Std.Dev.:   0.430
       Skewness:   0.464
       Kurtosis:  -1.194

========================================================================

   36	timeGravityAcceleratorMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645
           Mean:  -0.497
       Std.Dev.:   0.472
       Skewness:   0.231
       Kurtosis:  -1.587

========================================================================

   37	timeGravityAcceleratorMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428
           Mean:  -0.544
       Std.Dev.:   0.430
       Skewness:   0.464
       Kurtosis:  -1.194

========================================================================

   38	timeBodyAcceleratorJerkMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.434
           Mean:  -0.608
       Std.Dev.:   0.395
       Skewness:   0.360
       Kurtosis:  -1.388

========================================================================

   39	timeBodyAcceleratorJerkMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.451
           Mean:  -0.584
       Std.Dev.:   0.422
       Skewness:   0.425
       Kurtosis:  -1.319

========================================================================

   40	timeBodyGyroscopeMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.418
           Mean:  -0.565
       Std.Dev.:   0.397
       Skewness:   0.313
       Kurtosis:  -1.422

========================================================================

   41	timeBodyGyroscopeMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.300
           Mean:  -0.630
       Std.Dev.:   0.336
       Skewness:   0.482
       Kurtosis:  -1.027

========================================================================

   42	timeBodyGyroscopeJerkMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.088
           Mean:  -0.736
       Std.Dev.:   0.276
       Skewness:   0.660
       Kurtosis:  -0.646

========================================================================

   43	timeBodyGyroscopeJerkMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.250
           Mean:  -0.755
       Std.Dev.:   0.265
       Skewness:   1.016
       Kurtosis:   0.546

========================================================================

   44	frequencyBodyAccelerator-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.537
           Mean:  -0.576
       Std.Dev.:   0.429
       Skewness:   0.391
       Kurtosis:  -1.328

========================================================================

   45	frequencyBodyAccelerator-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.524
           Mean:  -0.489
       Std.Dev.:   0.479
       Skewness:   0.259
       Kurtosis:  -1.567

========================================================================

   46	frequencyBodyAccelerator-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.281
           Mean:  -0.630
       Std.Dev.:   0.355
       Skewness:   0.470
       Kurtosis:  -1.073

========================================================================

   47	frequencyBodyAccelerator-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.659
           Mean:  -0.552
       Std.Dev.:   0.459
       Skewness:   0.469
       Kurtosis:  -1.145

========================================================================

   48	frequencyBodyAccelerator-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:   0.560
           Mean:  -0.481
       Std.Dev.:   0.473
       Skewness:   0.244
       Kurtosis:  -1.566

========================================================================

   49	frequencyBodyAccelerator-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.687
           Mean:  -0.582
       Std.Dev.:   0.387
       Skewness:   0.518
       Kurtosis:  -0.808

========================================================================

   50	frequencyBodyAcceleratorJerk-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.474
           Mean:  -0.614
       Std.Dev.:   0.397
       Skewness:   0.444
       Kurtosis:  -1.222

========================================================================

   51	frequencyBodyAcceleratorJerk-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.277
           Mean:  -0.588
       Std.Dev.:   0.407
       Skewness:   0.347
       Kurtosis:  -1.478

========================================================================

   52	frequencyBodyAcceleratorJerk-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.992
            Max:   0.158
           Mean:  -0.714
       Std.Dev.:   0.296
       Skewness:   0.670
       Kurtosis:  -0.677

========================================================================

   53	frequencyBodyAcceleratorJerk-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.477
           Mean:  -0.612
       Std.Dev.:   0.399
       Skewness:   0.413
       Kurtosis:  -1.306

========================================================================

   54	frequencyBodyAcceleratorJerk-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.350
           Mean:  -0.571
       Std.Dev.:   0.431
       Skewness:   0.393
       Kurtosis:  -1.386

========================================================================

   55	frequencyBodyAcceleratorJerk-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:  -0.006
           Mean:  -0.756
       Std.Dev.:   0.256
       Skewness:   0.709
       Kurtosis:  -0.606

========================================================================

   56	frequencyBodyGyroscope-mean()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.475
           Mean:  -0.637
       Std.Dev.:   0.346
       Skewness:   0.417
       Kurtosis:  -1.040

========================================================================

   57	frequencyBodyGyroscope-mean()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.329
           Mean:  -0.677
       Std.Dev.:   0.331
       Skewness:   0.738
       Kurtosis:  -0.471

========================================================================

   58	frequencyBodyGyroscope-mean()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.492
           Mean:  -0.604
       Std.Dev.:   0.383
       Skewness:   0.445
       Kurtosis:  -1.128

========================================================================

   59	frequencyBodyGyroscope-std()-X

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.197
           Mean:  -0.711
       Std.Dev.:   0.272
       Skewness:   0.401
       Kurtosis:  -1.052

========================================================================

   60	frequencyBodyGyroscope-std()-Y

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.646
           Mean:  -0.645
       Std.Dev.:   0.362
       Skewness:   0.830
       Kurtosis:  -0.090

========================================================================

   61	frequencyBodyGyroscope-std()-Z

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.522
           Mean:  -0.658
       Std.Dev.:   0.335
       Skewness:   0.631
       Kurtosis:  -0.449

========================================================================

   62	frequencyBodyAcceleratorMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.587
           Mean:  -0.537
       Std.Dev.:   0.450
       Skewness:   0.464
       Kurtosis:  -1.197

========================================================================

   63	frequencyBodyAcceleratorMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.179
           Mean:  -0.621
       Std.Dev.:   0.352
       Skewness:   0.493
       Kurtosis:  -1.134

========================================================================

   64	frequencyBodyBodyAcceleratorJerkMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.538
           Mean:  -0.576
       Std.Dev.:   0.430
       Skewness:   0.424
       Kurtosis:  -1.293

========================================================================

   65	frequencyBodyBodyAcceleratorJerkMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.316
           Mean:  -0.599
       Std.Dev.:   0.408
       Skewness:   0.453
       Kurtosis:  -1.301

========================================================================

   66	frequencyBodyBodyGyroscopeMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.204
           Mean:  -0.667
       Std.Dev.:   0.317
       Skewness:   0.582
       Kurtosis:  -0.793

========================================================================

   67	frequencyBodyBodyGyroscopeMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.237
           Mean:  -0.672
       Std.Dev.:   0.292
       Skewness:   0.493
       Kurtosis:  -0.955

========================================================================

   68	frequencyBodyBodyGyroscopeJerkMagnitude-mean()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.147
           Mean:  -0.756
       Std.Dev.:   0.262
       Skewness:   0.957
       Kurtosis:   0.276

========================================================================

   69	frequencyBodyBodyGyroscopeJerkMagnitude-std()

------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.288
           Mean:  -0.772
       Std.Dev.:   0.250
       Skewness:   1.137
       Kurtosis:   1.122




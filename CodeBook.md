# Data Science Specialization

## Getting and Cleaning Data

### Code Book

#### Dataset description

The dataset can be obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It contains data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities:

  * WALKING, 
  * WALKING_UPSTAIRS, 
  * WALKING_DOWNSTAIRS, 
  * SITTING, 
  * STANDING, 
  * LAYING 

wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and 
gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a 
constant rate of __50Hz__. The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the 
volunteers was selected for generating the training data and __30%__ the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise
filters and then sampled in fixed-width sliding windows of __2.56 sec__ and __50%__ overlap 
__(128 readings/window)__. The sensor acceleration signal, which has gravitational and body 
motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with __0.3 Hz__ cutoff frequency was used. From each window, a 
vector of features was obtained by calculating variables from the time and frequency domain.

#### Dataset files

  * __README.txt__: Contains description of this data set.
  * __features_info.txt__: Shows information about the variables used on the feature vector.
  * __features.txt__: List of all features.
  * __activity_labels.txt__: Links the class labels with their activity name.
  * __train/X_train.txt__: Training set.
  * __train/y_train.txt__: Training labels.
  * __test/X_test.txt__: Test set.
  * __test/y_test.txt__: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

  * __train/subject_train.txt__: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
  * __train/Inertial Signals/total_acc_x_train.txt__: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the __total_acc_x_train.txt__ and __total_acc_z_train.txt__ files for the Y and Z axis. 
  * __train/Inertial Signals/body_acc_x_train.txt__: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
  * __train/Inertial Signals/body_gyro_x_train.txt__: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

 #### Dataset records

Each record contains: 
  * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  * Triaxial Angular velocity from the gyroscope. 
  * A 561-feature vector with time and frequency domain variables. 
  * Its activity label. 
  * An identifier of the subject who carried out the experiment.


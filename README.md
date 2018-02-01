# Codebook of Epileptic Seizure Recognition Data Set
This dataset is a pre-processed and re-structured/reshaped version of a very commonly used dataset featuring epileptic seizure detection. It has been published on [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Epileptic+Seizure+Recognition).

## Attribute Information:
The [original dataset](http://epileptologie-bonn.de/cms/front_content.php?idcat=193&lang=3&changelang=3) from the reference consists of 5 different folders (folder A, B, C, D, E), each with 100 files, with each file representing a single subject/person. Each file is a recording of brain activity for 23.6 seconds. The corresponding time-series is sampled into 4097 data points. Each data point is the value of the EEG recording at a different point in time. So we have total 500 individuals with each has 4097 data points for 23.5 seconds.

We divided and shuffled every 4097 data points into 23 chunks, each chunk contains 178 data points for 1 second, and each data point is the value of the EEG recording at a different point in time. So now we have 23 x 500 = 11500 pieces of information(row), each information contains 178 data points for 1 second(column), the last column represents the label y {1,2,3,4,5}. 

The response variable is y in column 179, the Explanatory variables X1, X2, ..., X178 
y contains the category of the 178-dimensional input vector. Specifically y in {1, 2, 3, 4, 5}: 
5 - eyes open, means when they were recording the EEG signal of the brain the patient had their eyes open 
4 - eyes closed, means when they were recording the EEG signal the patient had their eyes closed 
3 - Yes they identify where the region of the tumor was in the brain and recording the EEG activity from the healthy brain area 
2 - They recorder the EEG from the area where the tumor was located 
1 - Recording of seizure activity 

All subjects falling in classes 2, 3, 4, and 5 are subjects who did not have epileptic seizure. Only subjects in class 1 have epileptic seizure. Our motivation for creating this version of the data was to simplify access to the data via the creation of a .csv version of it. Although there are 5 classes most authors have done binary classification, namely class 1 (Epileptic seizure) against the rest.



## Initial Data Set Information:
Please find the original data at: [website](http://epileptologie-bonn.de/cms/front_content.php?idcat=193&lang=3&changelang=3)


## Citation Request:
Q. Wu, E. Fokoue, R. G. A. (2017). Epileptic seizure recognition data set. [Online; UCI Machine Learning Repository].

Andrzejak RG, Lehnertz K, Rieke C, Mormann F, David P, Elger CE (2001) Indications of nonlinear deterministic and finite dimensional structures in time series of brain electrical activity: Dependence on recording region and brain state, Phys. Rev. E, 64, 061907




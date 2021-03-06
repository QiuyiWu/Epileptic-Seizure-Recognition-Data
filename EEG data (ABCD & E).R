# Folder A,B,C,D-0 and E-1, Binary

filenames1 <- list.files("Desktop/Research/ESN/Data/A_Z", pattern="*.txt", full.names=TRUE)
eeg.a <-  lapply(filenames1, read.table)   #read all data in 100 files in folder A
eeg.a2 <- as.data.frame(eeg.a)   #4097 obs. of  100 variables
eeg.a3 <- split(eeg.a2[-c(4095,4096,4097),],rep(1:23,each=178)) #chunk the data 
eeg.a4 <- as.data.frame(eeg.a3)  #178 obs. of  2300 variables

filenames2 <- list.files("Desktop/Research/ESN/Data/B_O", pattern="*.txt", full.names=TRUE)
eeg.b <-  lapply(filenames2, read.table)   #read all data in 100 files in folder B
eeg.b2 <- as.data.frame(eeg.b)   #4097 obs. of  100 variables
eeg.b3 <- split(eeg.b2[-c(4095,4096,4097),],rep(1:23,each=178)) #chunk the data 
eeg.b4 <- as.data.frame(eeg.b3)  #178 obs. of  2300 variables

filenames3 <- list.files("Desktop/Research/ESN/Data/C_N", pattern="*.TXT", full.names=TRUE)
eeg.c <-  lapply(filenames3, read.table)   #read all data in 100 files in folder C
eeg.c2 <- as.data.frame(eeg.c)   #4097 obs. of  100 variables
eeg.c3 <- split(eeg.c2[-c(4095,4096,4097),],rep(1:23,each=178)) #chunk the data 
eeg.c4 <- as.data.frame(eeg.c3)  #178 obs. of  2300 variables

filenames4 <- list.files("Desktop/Research/ESN/Data/D_F", pattern="*.txt", full.names=TRUE)
eeg.d <-  lapply(filenames4, read.table)   #read all data in 100 files in folder D
eeg.d2 <- as.data.frame(eeg.d)   #4097 obs. of  100 variables
eeg.d3 <- split(eeg.d2[-c(4095,4096,4097),],rep(1:23,each=178)) #chunk the data 
eeg.d4 <- as.data.frame(eeg.d3)  #178 obs. of  2300 variables

filenames5 <- list.files("Desktop/Research/ESN/Data/E_S", pattern="*.txt", full.names=TRUE)
eeg.e <-  lapply(filenames5, read.table)   #read all data in 100 files in folder E
eeg.e2 <- as.data.frame(eeg.e)   #4097 obs. of  100 variables
eeg.e3 <- split(eeg.e2[-c(4095,4096,4097),],rep(1:23,each=178)) #chunk the data 
eeg.e4 <- as.data.frame(eeg.e3)  #178 obs. of  2300 variables

x <- data.frame(eeg.a4,eeg.b4,eeg.c4,eeg.d4)
y <- rep(0,9200)
xy.abcd <- data.frame(t(x),y)

xe <- t(eeg.e4)
y <- rep(1,2300)
xy.e <-data.frame(xe,y)


xy <- rbind( xy.abcd ,xy.e)  #combine ABCD and E
xy.abcde <- xy[sample(nrow(xy)),]  #randomize the chunks



write.csv(file = "Dropbox/Research with Qiuyi Wu/dataset/EEG_shuffled/ABCD&E.csv",x=xy.abcde)



### You need to change the file path when applying it.


































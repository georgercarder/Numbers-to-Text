#!/bin/Rscript

A<-sample(0:100000000,10,replace=FALSE,prob=NULL)
B<-sample(1:100000000,10,replace=FALSE,prob=NULL)
i=1
while(i<=10){

f<-stringi::stri_join(as.character(A[i]),"/",as.character(B[i]))

#given f="a/b"

# parse F to get a and b separately
#find out if we reduce fractions. assuming not we continue
a<-as.double(gsub("/.*","",f))
b<-as.double(gsub(".*/","",f))


n<-a
source("numberwords.R")


n<-b
source("thsnumberwords.R")

wordfrac<-stringi::stri_join(worda," ",wordb)
print(f)
print(wordfrac)

i=i+1
}

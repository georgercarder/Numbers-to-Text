#!/bin/Rscript

#given f="a/b"

# parse F to get a and b separately
#find out if we reduce fractions. assuming not we continue
a<-as.double(gsub("/.*","",f))
b<-as.double(gsub(".*/","",f))


n<-a
source("numberwords.R")
#print("worda is")
#print(worda)


n<-b
source("thsnumberwords.R")
#print("wordb is")
#print(wordb)

wordfrac<-stringi::stri_join(worda," ",wordb)
print(f)
#print("wordfrac is")
print(wordfrac)



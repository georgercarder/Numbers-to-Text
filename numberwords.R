#/bin/Rscript

l1=1
l2=10*l1
p=0
t=0
tag=1
while(tag>0){
    if(n>=l1&n<l2){
        tag=0
    }else{
        l1=10*l1
        l2=10*l2
    if(p%%3==2){
        t=t+1
        p=p+1
    }else{
        p=p+1
    }
    }
}

ones<-c("one","two","three","four","five","six","seven","eight","nine")
## exception for teens
tens<-c("twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety")
teens<-c("ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eightteen","nineteen")
hundreds<-c("one hundred","two hundred","three hundred","four hundred","five hundred","six hundred","seven hundred","eight hundred","nine hundred")
thousands<-c("thousand","million","billion","trillion","quadrillion","quintillion")
#pos is position
pos=p
tos=t
tt=0
m=n

word<-""

while(pos>0){ 
x=floor(m/(10^(pos)))
    if(pos%%3==0&tt!=1){
        if(x==0){
        word<-stringi::stri_join(word,"and")
        }else{
        word<-stringi::stri_join(word,ones[x]) 
        }  
    }else if(pos%%3==1){
        if(x==0){
            
        }else if(x==1){
            tt=1
            y=floor((m-10^pos)/(10^(pos-1)))
            word<-stringi::stri_join(word,teens[y+1])
            m=m-y*10^(pos-1)
            
        }else{
            
            word<-stringi::stri_join(word,tens[x-1])
            
        }   
    }else{
        if(x==0){
                        
            word<-stringi::stri_join(word,"and")
            
        }else{        
            
            
            word<-stringi::stri_join(word, hundreds[x]," ","and")
        }
    }
    if(pos%%3==0||(pos%%3==1&x==1)&pos!=1){
        word<-stringi::stri_join(word," ",thousands[tos])
        tos=tos-1 
        tt=0           
    }


word<-stringi::stri_join(word," ")


m=m-x*10^pos

if(pos%%3==1&(x==1)){
pos=pos-1
}


pos=pos-1
}

if(pos==0||-1){
     x=m
     if(x==0){
     
     }else{
     
     word<-stringi::stri_join(word,ones[x])
     }
}


print(word)

isinvector <- function(a, b){
  
  for( item in b){
    if(item == a){
      return (TRUE)
    }
  }
  
  
  return (FALSE)
}

a<-c(2, 3, 5) 

isinvector(2, a) #TRUE

isinvector(1, a) #FALSE

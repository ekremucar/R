printframe <- function(a){
  if(is.data.frame(a)){
    sapply(a, class)
  }
}
  
  
n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)       # df is a data frame

printframe(df)


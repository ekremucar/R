#section 8 Explicit Coercion

x <- 0:6

class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x <- c("a", "b", "c")
as.numeric(x) #NA

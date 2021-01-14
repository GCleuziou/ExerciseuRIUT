nom_solution <- "facto"

fonctionsAtt<-c("return")

facto<-function(n){return(prod(1:n))}

tests<-list(
    list("0",reponse=facto(0))
    ,list("1",reponse=facto(1))    
    ,list("2",reponse=facto(2))    
    )
)

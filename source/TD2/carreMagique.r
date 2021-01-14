nom_solution <- "carreMagique"

fonctionsAtt<-c("return")

carreMagique<-function(M){
    n<-ncol(M)
    if(nrow(M)!=n) return(FALSE)
    cstmagique<-sum(diag(M))
    if(!all(colSums(M)==cstmagique)) return(FALSE)
    if(!all(rowSums(M)==cstmagique)) return(FALSE)
    if(sum(diag(t(M)[, ncol(M):1]))!=cstmagique) return(FALSE)
    return(TRUE)
}

tests<-list(
    list("matrix(0,1,1)",reponse=carreMagique(matrix(0,1,1))),
    )
)


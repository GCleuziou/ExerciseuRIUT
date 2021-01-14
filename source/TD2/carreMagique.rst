Exercice 2 : carré magique
--------------------------

Ecrire une fonction *carreMagique(M)* qui renvoie *TRUE* si une matrice carrée *M* passée en paramètre est un carré magique et *FALSE* sinon :

.. code:: R

    carreMagique<-function(M){
        n<-ncol(M)
        if(nrow(M)!=n) return(FALSE)
        cstmagique<-sum(diag(M))
        if(!all(colSums(M)==cstmagique)) return(FALSE)
        if(!all(rowSums(M)==cstmagique)) return(FALSE)
        if(sum(diag(t(M)[, ncol(M):1]))!=cstmagique) return(FALSE)
        return(TRUE)
    }



.. easypython:: /TD2/facto.r
   :language: R
   :titre: Exercice R carré magique


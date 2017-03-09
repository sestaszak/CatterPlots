#make a test catterplot with poisson
#lambda is avg number of cats in interval
#k is number of cats that show up in interval
#prob of number of cats showing up given avg number of cats

ll=1
x=seq(1:10)

#c(r, g, b, black)
collist<-list(c(0,0,0,1), #black
              c(1,0,0,1), #red
              c(0,1,0,1), #green
              c(0,0,1,1), #blue
              c(0,1,1,1), #cyan?
              c(1,0,1,1), #magenta?
              c(1,1,0,1) #yellow
              )

catl1<-catplot(xs=x, ys=dpois(x,ll), size=.05, cat=ll, canvas = c(0,1.1,-.1,1.1), type="line", linecolor = ll, catcolor = collist[[ll]], 
               ylab="P(X=k) cats visit", xlab="k cats visit", 
               main=expression(paste("Prob. of k cats visit by ", lambda, ", average visits in interval")))
catLegend(catl1, xl=4, yl=.37, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl2<-cats(catl1, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl2, xl=4, yl=.34, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl3<-cats(catl2, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl3, xl=4, yl=.31, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl4<-cats(catl3, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl4, xl=4, yl=.28, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl5<-cats(catl4, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl5, xl=7, yl=.37, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl6<-cats(catl5, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl6, xl=7, yl=.34, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")

ll=ll+1
catl7<-cats(catl6, xs=x, ys=dpois(x,ll), size=.05, cat=ll, type="line", linecolor = ll, catcolor = collist[[ll]])
catLegend(catl7, xl=7, yl=.31, cat=ll, size=0.05, catcolor = collist[[ll]], legend = substitute(paste(lambda, "=", lam), list(lam=ll)), legloc = "right")
# Library
install.packages("fmsb")
library(fmsb)

# Create data: Carlsberg and CRE:
data=as.data.frame(matrix( c(18,5,10,12,11,15,12,6,6,6) , ncol=5))
colnames(data)=c("Competition" , "New Entrants" , "Supplier Power" , "Customer Power" , "Substitute Threat")
rownames(data)=c("Carlsberg", "CRE")


# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data=rbind(rep(20,10) , rep(0,10) , data)

# The default radar chart proposed by the library:
radarchart(data)

colors_border=c( rgb(0.4,0.8,0.5,0.9), rgb(0.2,0.2,0.8,0.9))
colors_in=c( rgb(0.4,0.8,0.5,0.6), rgb(0.2,0.2,0.8,0.3))
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)

# Create data: Beijing Yanjing and CRE:
data=as.data.frame(matrix( c(11,5,10,12,14,15,9,6,6,6) , ncol=5))
colnames(data)=c("Competition" , "New Entrants" , "Supplier Power" , "Customer Power" , "Substitute Threat")
rownames(data)=c("Beijing Yanjing", "CRE")


# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data=rbind(rep(20,10) , rep(0,10) , data)

# The default radar chart proposed by the library:
radarchart(data)

colors_border=c( rgb(0.8,0.8,0.2,0.9), rgb(0.2,0.2,0.8,0.9))
colors_in=c( rgb(0.8,0.8,0.2,0.6), rgb(0.2,0.2,0.8,0.3))
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)


####################

# Create data: Carlsberg w/ Yanjing partnership and CRE:
data=as.data.frame(matrix( c(9,7,10,12,11,15,12,6,5,6) , ncol=5))
colnames(data)=c("Competition" , "New Entrants" , "Supplier Power" , "Customer Power" , "Substitute Threat")
rownames(data)=c("Carlsberg w/ Partnership", "CRE")


# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data=rbind(rep(20,10) , rep(0,10) , data)

# The default radar chart proposed by the library:
radarchart(data)

colors_border=c( rgb(0.4,0.8,0.5,0.9), rgb(0.2,0.2,0.8,0.9))
colors_in=c( rgb(0.4,0.8,0.5,0.6), rgb(0.2,0.2,0.8,0.3))
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)

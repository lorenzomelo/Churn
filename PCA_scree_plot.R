
library(datasets) # for the data set 
library(corrplot) # correlation plot
library(factoextra) # visualizing PCA results

data <- read.csv(file = 'preprocessed_data.csv')
data <- subset(data, select = -c(Attrition_Flag, X))
data

#####################
#       PCA         #
#####################

pca1 <- princomp(data[,c(1:10)], 
                cor = TRUE,
                score = TRUE)
# COR = a logical value indicating whether the calculation 
# should use the correlation matrix or the covariance matrix.
png(file = "Scree_plot.png")
summary(pca1)
fviz_eig(pca1)
dev.off()
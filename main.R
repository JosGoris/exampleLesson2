#Jos Goris
#Januari 2016
#import packages
library(raster)

source('R/AgeCalculator.R')
source('R/HelloWorld.R')
source('R/MinusRaster.R')

HelloWorld('Jos')
AgeCalculator(1991)

r <- raster(system.file("external/rlogo.grd", package="raster")) 
r2 <- r 
# Filling the rasterLayer with new values.
r2[] <- (1:ncell(r2)) / 10
# Performs the calculation
r3 <- minusRaster(r, r2) 
r4 <- minusRaster(r,r2, plot = TRUE)
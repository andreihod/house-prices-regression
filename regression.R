data <- read.csv("./Documentos/r-lang/Trabalho/house-prices-regression/ames.csv")

# VARIAVEIS
# SalePrice
# LotArea: Lot size in square feet
# Street: Type of road access
# LandContour: Flatness of the property
# Condition1: Proximity to main road or railroad
# OverallQual: Rates the overall material and finish of the house
# OverallCond: Rates the overall condition of the house
# YearBuilt: Original construction date
# Heating: Type of heating
# GrLivArea: Above grade (ground) living area square feet
# FullBath: Full bathrooms above grade
# Bedroom: Number of bedrooms above basement level
# Kitchen: Number of kitchens
# TotRmsAbvGrd: Total rooms above grade (does not include bathrooms)
# GarageCars: Size of garage in car capacity
# PoolArea: Pool area in square feet
# MoSold: Month Sold
# YrSold: Year Sold
# SaleCondition

data$SalePrice = data$SalePrice / 1000
data$Gr.Liv.Area = data$Gr.Liv.Area * 0.3048

formula = data$SalePrice ~ data$Gr.Liv.Area #train$BedroomAbvGr + train$LotArea +  + train$Street

modelo = lm(formula=formula)
#modelo2 = lm(formula=formula, subset=data$Gr.Liv.Area<1250)

cor(data$SalePrice, data$Gr.Liv.Area)

summary(modelo)

plot(formula, xlab="Tamanho (metros)", ylab = "Preço (milhares)", subset=data$Gr.Liv.Area<1250)
abline(modelo, col="red")
#abline(modelo2, col="blue")

#summary(modelo2)

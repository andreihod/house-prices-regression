train <- read.csv("./Documentos/r-lang/Trabalho/house-prices-regression/train.csv")
# test  <- read.csv("./Documentos/r-lang/Trabalho/house-prices-regression/test.csv")

formula = train$SalePrice ~ train$LotArea + train$BedroomAbvGr

modelo = lm(formula=formula)

summary(modelo)

#plot(formula)


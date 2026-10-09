# ===== 1. Set working directory & load data =====
setwd("D:/MBA 2023/NMAT/NMIMS/Multivariate Data Analysis")
getwd()
rdata <- read.csv("Attrition.csv", header = TRUE)
rdata
attach(rdata)

# ===== 2. Check structure =====
str(rdata)
names(rdata) <- sub("^ï\\.\\.", "", names(rdata))

# ===== 3. Load required libraries =====
library(psych)      # for pairs.panels
library(MASS)       # for LDA
library(biotools)   # for Box's M test

# ===== 4. Convert target variable to factor =====
rdata$Attrition <- factor(rdata$Attrition)

# ===== 6. Split into train and test =====
set.seed(123)
split_data <- sample(2, nrow(rdata), replace = TRUE, prob = c(0.75, 0.25))
train_data <- rdata[split_data == 1, ]
test_data  <- rdata[split_data == 2, ]

# ===== 7. Run LDA =====
lda_model <- lda(Attrition ~ ., data = train_data)
lda_model

# ===== 8. Predict on training set =====
p_train <- predict(lda_model, train_data)
p_train

# Histograms of LDs
par(mar = c(1, 1, 1, 1))
ldahist(data = p_train$x[, 1], g = train_data$Attrition)  # LD1

# Confusion matrix - training
pred_train <- p_train$class
tab_train <- table(predicted = pred_train, actual = train_data$Attrition)
tab_train
sum(diag(tab_train)) / sum(tab_train)   # Training accuracy

# ===== 9. Predict on test set =====
p_test_post <- predict(lda_model, test_data)$posterior
cutoff <- 0.15   # lower cutoff to increase sensitivity
p_test <- ifelse(p_test_post[, "Yes"] >= cutoff, "Yes", "No")

tab_test <- table(predicted = p_test, actual = test_data$Attrition)
tab_test
sum(diag(tab_test)) / sum(tab_test)     # Test accuracy

# ===== 10. Assumption check - Box's M test =====
# (only on numeric variables)
num_cols <- sapply(rdata, is.numeric)
boxM(rdata[, num_cols], rdata$Attrition)

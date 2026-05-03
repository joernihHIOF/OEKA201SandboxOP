# Load dataset
df <- read.csv("data-raw/job_salary_prediction_dataset.csv")

# Convert categorical variables to factors
df$education_level <- as.factor(df$education_level)
df$industry <- as.factor(df$industry)
df$remote_work <- as.factor(df$remote_work)

# 1. Simple regression
model_simple <- lm(salary ~ education_level, data = df)

# 2. Multiple regression
model_multiple <- lm(salary ~ education_level + experience_years + industry, data = df)

# 3. Dummy variable model with remote work
model_dummy <- lm(salary ~ education_level + experience_years + remote_work, data = df)

# Show results
print(summary(model_simple))
print(summary(model_multiple))
print(summary(model_dummy))

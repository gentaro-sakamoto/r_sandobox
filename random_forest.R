library(randomForest)

# Load data
readingSkills = read.csv('data/reading_skills.csv', header=TRUE)

# Show all data
print(readingSkills)

# Show size of the table of the data
dim(readingSkills)

# Show summary of the data
summary(readingSkills)


model = randomForest(nativeSpeaker ~ age + shoeSize + score, data = readingSkills)
model

# Show importance of factor
importance(model)

pdf('random_forest.pdf')
varImpPlot(model)

# Load data not classfied
readkingSkillsNotClassified = read.csv('data/reading_skills_not_classfied.csv', header=TRUE)
predict(model, readkingSkillsNotClassified)

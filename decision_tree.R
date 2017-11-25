library(rpart)
library(rpart.plot)

# Load data
readingSkills = read.csv('data/reading_skills.csv', header=TRUE)

# Show all data
print(readingSkills)

# Show size of the table of the data
dim(readingSkills)

# Show summary of the data
summary(readingSkills)


model = rpart(nativeSpeaker ~ age + shoeSize + score, data = readingSkills)
model
pdf('decision.pdf')
rpart.plot(model, extra = 4)

# Load data not classfied
readkingSkillsNotClassified = read.csv('data/reading_skills_not_classfied.csv', header=TRUE)
predict(model, readkingSkillsNotClassified)
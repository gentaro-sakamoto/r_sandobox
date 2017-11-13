# You can run this with the blow command.
# Rscript sandbox.R

# Assignment
string <- 'hoge'
print(string)

# List of various data type
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"),
  height = c(152, 171.5, 165),
  weight = c(81,93, 78),
  Age = c(42,38,26)
)

list <- list(
  TRUE,
  1,
  2L,
  3+2i,
  'a',
  charToRaw('a'),
  c(
    'red',
    'green',
    'yellow'
  ),
  list(1, 2, 3),
  matrix(c('a', 'b', 'c', 'd', 'e', 'f'), nrow=2, ncol=3, byrow=TRUE),
  array(c('green','yellow'),dim = c(3,3,2)),
  factor(c('green','green','yellow','red','red','red','green', 'blue')),
  BMI
)

# Show class of those data
for (v in list) {
  print(paste(v,class(v), sep=':'))
}

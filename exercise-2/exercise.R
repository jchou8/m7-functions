# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec.one, vec.two) {
  difference <- abs(length(vec.one) - length(vec.two))
  
  return (paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
people <- c("Mark", "John", "Ricardo")
things <- c("Soup", "Bubbles", "Soap", "Water", "Lentils")

print(CompareLength(people, things))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec.one, vec.two) {
  difference <- abs(length(vec.one) - length(vec.two))
  
  if (length(vec.one) > length(vec.two)) {
    return (paste("Your first vector is longer by", difference, "elements"))
  } else {
    return (paste("Your second vector is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(people, things))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifferenceName <- function(vec.one, vec.two) {
  difference <- abs(length(vec.one) - length(vec.two))
  
  if (length(vec.one) > length(vec.two)) {
    return (paste("Vector", deparse(substitute(vec.one)), "is longer by", difference, "elements"))
  } else {
    return (paste("Vector", deparse(substitute(vec.two)), "is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifferenceName(people, things))
States <- rownames(USArrests)
StatesCharV <- paste(States,collapse= ",")
StatesCharV <- tolower(StatesCharV)
vowel<- c('a','e','i','o','u')
count <- function(x, pattern, split)
{
    unlist(lapply(strsplit(x, split),function(z) na.omit(length(grep(pattern, z)))))
}
count_vowel <- 0
for(i in 1:length(vowel))
{
  count_vowel[i] <- count(StatesCharV,vowel[i],",")
}
names(count_vowel) <- vowel
#count_vowel gives count of each vowels.
count_vowel
#barplot gives distribution of vowels.
barplot(count_vowel)

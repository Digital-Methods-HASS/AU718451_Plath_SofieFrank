# start with R
# For this assignment, you need to present the results, the code you used to answer a few questions, and then take a screenshot of your working environment.

# Submit a textfile with typed up solutions here OR upload the document with solutions and the screenshot to your repository on Github and provide here only your Github URL. Make sure your homework files are clearly marked and readily findable there.


library(tidyverse)

# 1) Use R to figure out how many elements in the vector below are greater than 2.

# assigning the data to the vector, making it a value num[1:27]
rooms <- c(1, 5, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA)

# logical showing of which rooms are greater than 2
rooms>2

# showing of which elements in the vector there are greater than 2
rooms[rooms>2]

# making a clean value without he NA
rooms[!is.na(rooms)]
clean_rooms <- rooms[!is.na(rooms)]
clean_rooms[clean_rooms>2]

# showing of how many elements there are greater in the vector than 2
clean_rooms[clean_rooms>2]

# the count of rooms without unknown data which are greater than 2
length(clean_rooms[clean_rooms>2])

# 1) 9 rooms are greater than 2

#2) Which function tells you the type of data the 'rooms' vector above contains?

# it is the class function which will tell us the type of data we are using in the vector

class(rooms)

# it is showed here, that class(room) = "nummeric"

# 3) What is the result of running the median() function on the above 'rooms' vector?

median(rooms)

# running the rooms vector in the median function gives you the answer: NA, probably bc there are NA data in the vector, making it impossible to solve. 

# 4) Submit the following image to Github: Inside your R Project (.Rproj), install the 'tidyverse' package and use the download.file() and read_csv() function to read the SAFI_clean.csv dataset into your R project as 'interviews' digital object (see instructions in https://datacarpentry.org/r-socialsci/setup.html and 'Starting with Data' section). Take a screenshot of your RStudio interface showing

# a) the line of code you used to create the object,
# b) the 'interviews' object in the Environment, and
# c) the file structure of your R project in the bottom right "Files" pane.


# downloading the interviews
download.file("https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
               "data/SAFI_clean.csv")


# reading the interviews
read_csv("https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
         "data/SAFI_clean.csv")

# a) creating an object

interviews <- read_csv("data/SAFI_clean.csv")

# b) and c) is showed in the screenshot easily identified by the red lines

library(tidyverse)

#5 inserting the dataset we made the previous week with our danish regents throughout time
read_csv("data/Tidy_Data_W37_Danish_Regents.csv")

# creating the regents as an object
regents <- read_csv("data/Tidy_Data_W37_Danish_Regents.csv")

regents <- read_csv("data/Tidy_Data_W37_Danish_Regents.csv", na=c("N/A"))

# giving up since it will not do as i wish



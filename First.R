#DATA MANIPULATION#####DATA CLEANING##########
#
#loading the most required library for data manipulation
library(tidyverse)
#viewing the variables with each observation of the data set
View(starwars)
#observing the structure ofthe data set
str(starwars)
#having a glimpse of your data set
glimpse(starwars)
#to see the possible observations in a given variable 
unique(starwars$gender)
unique(starwars$eye_color)
#to change the class of the variables to factor
starwars$eye_color=as.factor(starwars$eye_color)
class(starwars$eye_color)
levels(starwars$eye_color)
#MISSING DATA
mean(starwars$height,na.rm=TRUE)
oURS= starwars %>% 
  select(name,gender,hair_color,height) %>% 
  filter(complete.cases(.))
View(oURS)
 
#using select, filter, mutate and rename function to manipulate your data
#using select to specifically select the variables name, height,mass,specie and
#gender for specifically humans and the mass value in cm and then renaming the
#variable height to heights
LOICE = starwars %>% 
select (1, 2, 3, 9, 11) %>% 
  filter(species=="Human") %>% 
  na.omit() %>% 
mutate(mass = mass*100) %>% 
  rename(heights= height)
View(LOICE)
 #Selecting the names of the characters year of birth above 40 or skin color is light
NJORO= starwars %>% 
   select(name,birth_year,skin_color) %>% 
   filter(birth_year>40|skin_color=="light") %>%
   na.omit()
 View(NJORO)
 #age, birth year, height, mass of luke skywalker
 EUPHY=starwars %>% 
   select(name,height,mass,birth_year) %>% 
   filter(name=="Luke Skywalker") %>% 
   na.omit()
 View(EUPHY)

 GEOFF= starwars %>% 
   select(mass,height,species) %>% 
   na.omit() %>% 
   filter(species %in% c("Human","Droid")) %>% 
   group_by(species) %>%   
   summarize(mean_height=mean(height),mean_mass=mean(mass))
 View(GEOFF)
 #using the filter function
 #to select those name whose mass is close to 70 with almost + or -10
 My_data= starwars %>% 
   select(mass,name) %>% 
   filter(near(mass,70,tol=10))
View(My_data) 
#to select those names whose mass is between 40 and 50
Our_data= starwars %>% 
  select(name,mass) %>% 
  filter(between(mass,40,50))
View(Our_data)
#to select the names of those whose hair_color is not missing(NA)
Me_data= starwars %>% 
  select(name,hair_color) %>% 
  filter(!is.na(hair_color))
View(Me_data)




##scraping salaries with rvest seasons 2016-2020
library("rvest")
library("dplyr")

##scraping 2016-2017 season

salaries_2017 <-read_html("https://hoopshype.com/salaries/players/2016-2017/") 
Player_2017<-salaries_2017 %>%html_nodes("tbody .name")%>%html_text()
##removing/t to have a clean dataframe
Player_2017<-gsub('\t|\n', '',Player_2017)
Salary_2017<-salaries_2017 %>%html_nodes(".name+ td")%>%html_text()
##removing /t and /n need to write the dataframe correctly 
Salary_2017<-gsub('\t|\n', '',Salary_2017)
##saving it as a dataframe to prep to remove the first row (which is a repeat of coulmn name)
Salary_2017=as.data.frame(Salary_2017)
Salary_2017=Salary_2017[-1,]
##joining the player and their salary together 
Player_Salary_2017<-data.frame(Player_2017,Salary_2017)


##scraping 2017-2018 season, repeating the same data cleaning from the previous season
salaries_2018 <-read_html("https://hoopshype.com/salaries/players/2017-2018/") 
Player_2018<-salaries_2018 %>%html_nodes("tbody .name")%>%html_text()

Player_2018<-gsub('\t|\n', '',Player_2018)
Salary_2018<-salaries_2018 %>%html_nodes(".name+ td")%>%html_text()
Salary_2018<-gsub('\t|\n', '',Salary_2018)
Salary_2018=as.data.frame(Salary_2018)
Salary_2018=Salary_2018[-1,]

##joining the player and their salary together 
Player_Salary_2018<-data.frame(Player_2018,Salary_2018)



###scraping 2018-2019 season
salaries_2019 <-read_html("https://hoopshype.com/salaries/players/2018-2019/") 
Player_2019<-salaries_2019 %>%html_nodes("tbody .name")%>%html_text()
Player_2019<-gsub('\t|\n', '',Player_2019)
Salary_2019<-salaries_2019 %>%html_nodes(".name+ td")%>%html_text()
Salary_2019<-gsub('\t|\n', '',Salary_2019)
Salary_2019=as.data.frame(Salary_2019)
Salary_2019=Salary_2019[-1,]
##joining the player and their salary together 

Player_Salary_2019<-data.frame(Player_2019,Salary_2019)


##scraping 2019-2020 season
salaries_2020 <-read_html("https://hoopshype.com/salaries/players/2019-2020/") 
Player_2020<-salaries_2020 %>%html_nodes("tbody .name")%>%html_text()
Player_2020<-gsub('\t|\n', '',Player_2020)
Salary_2020<-salaries_2020 %>%html_nodes(".name+ td")%>%html_text()
Salary_2020<-gsub('\t|\n', '',Salary_2020)
Salary_2020=as.data.frame(Salary_2020)
Salary_2020=Salary_2020[-1,]
##joining the player and their salary together 
Player_Salary_2020<-data.frame(Player_2020,Salary_2020)













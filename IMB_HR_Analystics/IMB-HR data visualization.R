library(tidyverse)
install.packages("reshape2")
library(reshape2)


#READ IN THE CVS FILE INTO A DATFRAME
imb <- data.frame(read.csv("D:\\HR-Employee-Attrition.csv"))
View(imb)

#CHECK ID THER ARE ANY NULL VALUES IN THE DATASET
any(is.na(imb))

#GET THE NUMBER OF EMPLOYEES IN THE DATASET
imb %>%
  summarise(num_employees = n())


#DATA VISUALIZATION
#GRAPH THE NUMBER OF EMPLOYEES BY BUSINESS TRAVEL, DEPARTMENT, EDUCATION FIELD, GENDER, JOB LEVEL
#, AND JOB ROLE 
{ggplot(imb %>%
         group_by(BusinessTravel) %>%
         summarise(num_employees = n()), 
        aes(x = BusinessTravel, y = num_employees, fill = BusinessTravel)) +
  geom_col() + labs(title = "Number of Employees for Each Business Travel", 
                    x="Business Travel",y="Number of Employees", fill="Business Travel") +
    theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(Department) %>%
          summarise(num_employees = n()), 
        aes(x=Department, y=num_employees, fill= Department)) +
          geom_col(position = "dodge") + labs(title = "Number of Employees in Each department", 
                            y="Number of Employees")+ theme(axis.text.x = element_text(angle = 90),legend.position = "none")}
{ggplot(imb %>% 
          group_by(EducationField) %>%
          summarise(num_employees = n()), 
        aes(x=EducationField, y=num_employees, fill= EducationField)) +
    geom_col() + labs(title = "Number of Employees in Each Education Field", 
                      x = "Education Field", y="Number of Employees", fill ="Education Field") +
    theme(axis.text.x = element_text(angle = 90),legend.position = "none")}
{ggplot(imb %>% 
          group_by(Gender) %>%
          summarise(num_employees = n()), 
        aes(x=Gender, y=num_employees, fill= Gender)) +
    geom_col() + labs(title = "Number of Employees for Each Gender", 
                      y="Number of Employees") + theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobLevel) %>%
          summarise(num_employees = n()), 
        aes(x=JobLevel, y=num_employees, color = "red")) + geom_line(size=1.5) +
    labs(title = "Number of Employees in Each Job Level", 
                      x = "Job Level", y="Number of Employees") + theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobRole) %>%
          summarise(num_employees = n()), 
        aes(x=JobRole, y=num_employees, fill = JobRole)) + geom_col() +
    labs(title = "Number of Employees in Each Job Role", 
         x = "Job Role", y="Number of Employees", fill="Job Role") + 
    theme(axis.text.x = element_text(angle = 90), legend.position = "none")}


#GRAPH THE AVERAGE AGE FOR EACH BUSINESS TRAVEL, DEPARTMENT, GENDER, JOB LEVEL, AND JOB ROLE 
{ggplot(imb %>%
          group_by(BusinessTravel) %>%
          summarise(avg_age = mean(Age)), 
        aes(x = BusinessTravel, y = avg_age, fill = BusinessTravel)) +
    geom_col() + labs(title = "Average Age for Each Business Travel", 
                      x="Business Travel",y="Average Age", fill="Business Travel") +
    coord_cartesian(ylim = c(35, 39))+
    scale_y_continuous(breaks = seq(0, 40, by = 2)) +
    theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(Department) %>%
          summarise(avg_age = mean(Age)), 
        aes(x=Department, y=avg_age, fill= Department)) +
    geom_col(position = "dodge") + labs(title = "Average Age in Each Department", 
                                        y="Average Age") + theme(axis.text.x = element_text(angle = 90),
                                                                 legend.position = "none") +
    coord_cartesian(ylim = c(35, 39))+
    scale_y_continuous(breaks = seq(0, 40, by = 2))}
{ggplot(imb %>% 
          group_by(EducationField) %>%
          summarise(avg_age = mean(Age)), 
        aes(x=EducationField, y=avg_age, fill= EducationField)) +
    geom_col() + labs(title = "Average Age in Each Education Field", 
                      x = "Education Field", y="Average Age", fill ="Education Field") +
    theme(axis.text.x = element_text(angle = 90),legend.position = "none") +
    coord_cartesian(ylim = c(35, 39))+
    scale_y_continuous(breaks = seq(0, 40, by = 2))}
{ggplot(imb %>% 
          group_by(Gender) %>%
          summarise(avg_age = mean(Age)), 
        aes(x=Gender, y=avg_age, fill= Gender)) +
    geom_col() + labs(title = "Average Age for Each Gender", 
                      y="Average Age") + theme(legend.position = "none") +
    coord_cartesian(ylim = c(35, 39))+
    scale_y_continuous(breaks = seq(0, 40, by = 2))}
{ggplot(imb %>% 
          group_by(JobLevel) %>%
          summarise(avg_age = mean(Age)), 
        aes(x=JobLevel, y=avg_age, color = "red")) + geom_line(size=1.5) +
    labs(title = "Average Age in Each Job Level", 
         x = "Job Level", y="Average Age") + theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobRole) %>%
          summarise(avg_age = mean(Age)), 
        aes(x=JobRole, y=avg_age, fill = JobRole)) + geom_col() +
    labs(title = "Average Age in Each Job Role", 
         x = "Job Role", y="Average Age", fill="Job Role") + 
    theme(axis.text.x = element_text(angle = 90),legend.position = "none") +
    coord_cartesian(ylim = c(28, 48))+
    scale_y_continuous(breaks = seq(0, 50, by = 2))}


#GRAPH THE AVERAGE MONTHLY INCOME FOR EACH BUSINESS TRAVEL, DEPARTMENT, GENDER, JOB LEVEL, AND JOB ROLE 
{ggplot(imb %>%
          group_by(BusinessTravel) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x = BusinessTravel, y = avg_monthlyincome, fill = BusinessTravel)) +
    geom_col() + labs(title = "Average Monthly Income for Each Business Travel", 
                      x="Business Travel",y="Average Monthly Income", fill="Business Travel")  +
    theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(Department) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x=Department, y=avg_monthlyincome, fill= Department)) +
    geom_col(position = "dodge") + labs(title = "Average Monthly Income in Each department", 
                                        y="Average Monthly Income")  +
    theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(EducationField) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x=EducationField, y=avg_monthlyincome, fill= EducationField)) +
    geom_col() + labs(title = "Average Monthly Income in Each Education Field", 
                      x = "Education Field", y="Average Monthly Income", fill ="Education Field") +
    theme(axis.text.x = element_text(angle = 90), legend.position = "none")}
{ggplot(imb %>% 
          group_by(Gender) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x=Gender, y=avg_monthlyincome, fill= Gender)) +
    geom_col() + labs(title = "Average Monthly Income for Each Gender", 
                      y="Average Monthly Income") +theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobLevel) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x=JobLevel, y=avg_monthlyincome, color = "Blue")) + geom_line(size=1.5) +
    labs(title = "Average Monthly Income in Each Job Level", 
         x = "Job Level", y="Average Monthly Income") + theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobRole) %>%
          summarise(avg_monthlyincome = mean(MonthlyIncome)), 
        aes(x=JobRole, y=avg_monthlyincome, fill = JobRole)) + geom_col() +
    labs(title = "Average Monthly Income in Each Job Role", 
         x = "Job Level", y="Average Monthly Income", fill="Job Role") + 
    theme(axis.text.x = element_text(angle = 90), legend.position = "none")}


#GRAPH THE AVERAGE PERCENTAGE IN SALARY HIKE FOR EACH BUSINESS TRAVEL, DEPARTMENT, GENDER, JOB LEVEL
#, AND JOB ROLE 
{ggplot(imb %>%
          group_by(BusinessTravel) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x = BusinessTravel, y = avg_percentsalaryhike, fill = BusinessTravel)) +
    geom_col() + labs(title = "Average Percent Salary Hike for Each Business Travel", 
                      x="Business Travel",y="Average Percent Salary Hike", fill="Business Travel") +
    theme(legend.position = "none") + coord_cartesian(ylim = c(10, 16))+
    scale_y_continuous(breaks = seq(0, 18, by = 2))}
{ggplot(imb %>% 
          group_by(Department) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x=Department, y=avg_percentsalaryhike, fill= Department)) +
    geom_col(position = "dodge") + labs(title = "Average Percent Salary Hike in Each Department", 
                                        y="Average Percent Salary Hike") + theme(legend.position = "none") +
    coord_cartesian(ylim = c(10, 16))+
    scale_y_continuous(breaks = seq(0, 18, by = 2))}
{ggplot(imb %>% 
          group_by(EducationField) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x=EducationField, y=avg_percentsalaryhike, fill= EducationField)) +
    geom_col() + labs(title = "Average Percent Salary Hike in Each Education Field", 
                      x = "Education Field", y="Average Percent Salary Hike", fill ="Education Field") +
    theme(axis.text.x = element_text(angle = 90),legend.position = "none") + coord_cartesian(ylim = c(10, 16))+
    scale_y_continuous(breaks = seq(0, 18, by = 2))}
{ggplot(imb %>% 
          group_by(Gender) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x=Gender, y=avg_percentsalaryhike, fill= Gender)) +
    geom_col() + labs(title = "Average Percent Salary Hike for Each Gender", 
                      y="Average Percent Salary Hike") + theme(legend.position = "none") +
    coord_cartesian(ylim = c(10, 16))+  scale_y_continuous(breaks = seq(0, 18, by = 2))}
{ggplot(imb %>% 
          group_by(JobLevel) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x=JobLevel, y=avg_percentsalaryhike, color = "Blue")) + geom_line(size=1.5) +
    labs(title = "Average Percent Salary Hike in Each Job Level", 
         x = "Job Level", y="Average Percent Salary Hike") + theme(legend.position = "none")}
{ggplot(imb %>% 
          group_by(JobRole) %>%
          summarise(avg_percentsalaryhike = mean(PercentSalaryHike)), 
        aes(x=JobRole, y=avg_percentsalaryhike, fill = JobRole)) + geom_col() +
    labs(title = "Average Percent Salary Hike in Each Job Role", 
         x = "Job Role", y="Average Percent Salary Hike", fill="Job Role") + 
    theme(axis.text.x = element_text(angle = 90), legend.position = "none") +
    coord_cartesian(ylim = c(10, 16))+
    scale_y_continuous(breaks = seq(0, 18, by = 2))}


#GRAPH THE AVERAGE YEARS AT THE COPANY, YEARS SINCE LAST PROMOTION, AND YEARS IN CURRENT ROLE
#FOR EACH BUSINESS TRAVEL, DEPARTMENT, GENDER, JOB LEVEL, AND JOB ROLE 
Years_BT <- imb %>%
  group_by(BusinessTravel) %>%
  summarise(avg_YearsAtCompany = mean(YearsAtCompany),
            avg_YearsSinceLastPromotion = mean(YearsSinceLastPromotion), 
            avg_YearsInCurrentRole = mean(YearsInCurrentRole))

{Years_BT.long <- melt(Years_BT, id = "BusinessTravel", 
                        measure = c("avg_YearsAtCompany", 
                                    "avg_YearsSinceLastPromotion", "avg_YearsInCurrentRole"))}

{ggplot(Years_BT.long, aes(BusinessTravel, value, fill = variable)) +
    geom_col(position = "dodge") +
    labs(title = "Comparison of the Years at Company, Years Since Last Promotion, \nand Years In Current Role",
         subtitle = "Between Business Travel", x="Business Travel",  y="Average Years", fill="Years")}

Years_Dep <- imb %>%
  group_by(Department) %>%
  summarise(avg_YearsAtCompany = mean(YearsAtCompany),
            avg_YearsSinceLastPromotion = mean(YearsSinceLastPromotion), 
            avg_YearsInCurrentRole = mean(YearsInCurrentRole))

{Years_Dep.long <- melt(Years_Dep, id = "Department", 
                       measure = c("avg_YearsAtCompany", 
                                   "avg_YearsSinceLastPromotion", "avg_YearsInCurrentRole"))}

{ggplot(Years_Dep.long, aes(Department, value, fill = variable)) + geom_col(position = "dodge") + 
    theme(axis.text.x = element_text(angle = 90)) + 
    labs(title = "Comparison of the Years at Company, Years Since Last Promotion, \nand Years In Current Role" ,
         subtitle = "Between Departments", x="Department",  y="Average Years", fill="Years")}

Years_Gender <- imb %>%
  group_by(Gender) %>%
  summarise(avg_YearsAtCompany = mean(YearsAtCompany),
            avg_YearsSinceLastPromotion = mean(YearsSinceLastPromotion), 
            avg_YearsInCurrentRole = mean(YearsInCurrentRole))

{Years_Gender.long <- melt(Years_Gender, id = "Gender", 
                        measure = c("avg_YearsAtCompany", 
                                    "avg_YearsSinceLastPromotion", "avg_YearsInCurrentRole"))}

{ggplot(Years_Gender.long, aes(Gender, value, fill = variable)) + geom_col(position = "dodge") + 
    labs(title = "Comparison of the Years at Company, Years Since Last Promotion, \nand Years In Current Role" ,
         subtitle = "Between Genders", x="Gender",  y="Average Years", fill="Years")}

Years_JL <- imb %>%
  group_by(JobLevel) %>%
  summarise(avg_YearsAtCompany = mean(YearsAtCompany),
            avg_YearsSinceLastPromotion = mean(YearsSinceLastPromotion), 
            avg_YearsInCurrentRole = mean(YearsInCurrentRole))

{Years_JL.long <- melt(Years_JL, id = "JobLevel", 
                           measure = c("avg_YearsAtCompany", 
                                       "avg_YearsSinceLastPromotion", "avg_YearsInCurrentRole"))}

{ggplot(Years_JL.long, aes(JobLevel, value, fill = variable)) + geom_col(position = "dodge") + 
    labs(title = "Comparison of the Years at Company, Years Since Last Promotion, \nand Years In Current Role" ,
         subtitle = "Between Job Levels", x="Job Level",  y="Average Years", fill="Years")}

Years_JR <- imb %>%
  group_by(JobRole) %>%
  summarise(avg_YearsAtCompany = mean(YearsAtCompany),
            avg_YearsSinceLastPromotion = mean(YearsSinceLastPromotion), 
            avg_YearsInCurrentRole = mean(YearsInCurrentRole))

{Years_JR.long <- melt(Years_JR, id = "JobRole", 
                       measure = c("avg_YearsAtCompany", 
                                   "avg_YearsSinceLastPromotion", "avg_YearsInCurrentRole"))}

{ggplot(Years_JR.long, aes(JobRole, value, fill = variable)) + geom_col(position = "dodge") +
    theme(axis.text.x = element_text(angle = 90)) +
    labs(title = "Comparison of the Years at Company, Years Since Last Promotion, \nand Years In Current Role" ,
         subtitle = "Between Job Roles", x="Job Role",  y="Average Years", fill="Years")}


#GRAPH THE NUMBER OF EMPLOYEES FOR EACH JOB AND ENVIRONMENT SATISFATCTION BY JOB ROLES IN EACH DEPARTMENT  
JobSat <- imb %>%
  group_by(Department,JobRole,JobSatisfaction) %>%
  summarise(num_employees = n())
{ggplot(JobSat,aes(x=Department,y=num_employees, fill = JobSatisfaction,)) +
    geom_col(position = "stack") +  scale_fill_gradient(low="yellow", high="red") +
    facet_wrap(vars(JobRole)) + theme(axis.text.x = element_text(angle =90))+
    labs(title = "Comparison of Job Satisfaction Between Departments and \nthere Job Roles"
         , x="Departments",  y="NUmber of Employees", fill="Job \nSatisfaction")}

EnvironmentSat <- imb %>%
  group_by(Department,JobRole,EnvironmentSatisfaction) %>%
  summarise(num_employees = n())
{ggplot(EnvironmentSat,aes(x=Department,y=num_employees, fill = EnvironmentSatisfaction,)) +
    geom_col(position = "stack") +  scale_fill_gradient(low="yellow", high="red") +
    facet_wrap(vars(JobRole)) + theme(axis.text.x = element_text(angle =90)) +
    labs(title = "Comparison of Environment Satisfaction Between Departments and \nthere Job Roles"
         , x="Departments",  y="NUmber of Employees", fill="Environment \nSatisfaction")}

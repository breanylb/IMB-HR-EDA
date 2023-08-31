-- VIEWING THE FIRST 20 ROWS IN THE DATASET
SELECT
  *  
FROM 
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics` 
LIMIT 
  20;

--CHECK IF ANY COLUMN IS NULL
SELECT
  * 
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics` AS IMB
WHERE
  IMB IS NULL;

--BASIC STATISTICS
--WITH THE CATEGORICAL VARIABLES
--FINDING THE NUMBER OF EMPLOYEE GROUPED BY BUSINESS TRAVEL, DEPARTMENT, EDUCATION FIELD, GENDER, JOB LEVEL, JOB ROLE
SELECT
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`;

SELECT
  BusinessTravel,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  BusinessTravel;

SELECT
  Department,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department;

SELECT
  EducationField,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  EducationField;

SELECT
  Gender,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Gender;

SELECT
  JobLevel,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobLevel;

SELECT
  JobRole,
  COUNT(DISTINCT EmployeeNumber) AS num_of_employees
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobRole;


--FINDING AVERAGE, MAXIMUM, AND MINIMUM AGE
SELECT
  COUNT(Age)
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
WHERE
  Age >= 18;

SELECT
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`;

SELECT
  BusinessTravel,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  BusinessTravel;

SELECT
  Department,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department;

SELECT
  EducationField,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  EducationField;

SELECT
  Gender,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Gender;

SELECT
  JobLevel,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobLevel;

SELECT
  JobRole,
  CAST(AVG(Age) AS INT) AS avg_age,
  MAX(Age) AS max_age,
  MIN(Age) AS min_age
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobRole;


-- AVERAGE MONTHLY INCOME BETWEEN BUSINESS TRAVEL, DEPARTMENTS, GENDER, JOB ROLES, JOB LEVELS,
SELECT
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`;

SELECT
  BusinessTravel,
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  BusinessTravel;

SELECT
  Department,
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department;

SELECT
  Gender,
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Gender;

SELECT
  JobLevel,
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobLevel;

SELECT
  JobRole,
  ROUND(AVG(MonthlyIncome),2) AS avg_monthlyincome,
  MAX(MonthlyIncome) AS max_monthlyincome,
  MIN(MonthlyIncome) As min_monthlyincome
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobRole;

-- AVERAGE PERCENTAGE HIKE TO SALARY BETWEEN BUSINESS TRAVEL, DEPARTMENTS, GENDER, JOB ROLES, JOB LEVELS,
SELECT
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`;

SELECT
  BusinessTravel,
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  BusinessTravel;

SELECT
  Department,
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department;

SELECT
  Gender,
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Gender;

SELECT
  JobLevel,
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobLevel;

SELECT
  JobRole,
  ROUND(AVG(PercentSalaryHike),2) AS avg_PercentSalaryHike,
  MAX(PercentSalaryHike) AS max_PercentSalaryHike,
  MIN(PercentSalaryHike) As min_PercentSalaryHike
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobRole;

-- ENVIRONMENT SATISFACTION
SELECT
  Department,
  JobRole,
  EnvironmentSatisfaction,
  COUNT(CASE
    WHEN EnvironmentSatisfaction = 1 THEN EmployeeNumber
    WHEN EnvironmentSatisfaction = 2 THEN EmployeeNumber
    WHEN EnvironmentSatisfaction = 3 THEN EmployeeNumber
    WHEN EnvironmentSatisfaction = 4 THEN EmployeeNumber
    END) AS count
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department,
  JobRole,
  EnvironmentSatisfaction
ORDER BY 
  Department,
  JobRole,
  EnvironmentSatisfaction;

-- JOB SATISFACTION
SELECT
  Department,
  JobRole,
  JobSatisfaction,
  COUNT(CASE
    WHEN JobSatisfaction = 1 THEN EmployeeNumber
    WHEN JobSatisfaction = 2 THEN EmployeeNumber
    WHEN JobSatisfaction = 3 THEN EmployeeNumber
    WHEN JobSatisfaction = 4 THEN EmployeeNumber
    END) AS count
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department,
  JobRole,
  JobSatisfaction
ORDER BY 
  Department,
  JobRole,
  JobSatisfaction;

--LOOKING AT YEARS AT THE COMPANY, YEARS SINCE LAST PROMOTION, YEARS IN CURRENT ROLE
SELECT
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`;

SELECT
  BusinessTravel,
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  BusinessTravel;

SELECT
  Department,
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Department;

SELECT
  Gender,
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  Gender;

SELECT
  JobLevel,
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobLevel;

SELECT
  JobRole,
  CAST(AVG(YearsAtCompany) AS INT) AS avg_yearsatcompany,
  CAST(AVG(YearsSinceLastPromotion) AS INT) AS avg_yearssincelastpromotion,
  CAST(AVG(YearsInCurrentRole) AS INT) AS avg_yearsincurrentrole
FROM
  `blissful-trail-392617.IBM_analytics.ibm_hr_analytics`
GROUP BY
  JobRole;
 

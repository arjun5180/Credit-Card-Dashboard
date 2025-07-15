create database credit_card;
create table cc_details(
Client_Num int,	
Card_Category varchar(20),
Annual_Fees int,
Activation_30_Days int,
Customer_Acq_Cost int,
 Week_Start_Date date,
Week_Num varchar(20),
Qtr varchar(16),
current_year int,
Credit_Limit decimal(10,2),
Total_Revolving_Bal int,
Total_Trans_Amt int,
Total_Trans_Vol int,	
Avg_Utilization_Ratio decimal (10,3),
Use_Chip varchar(10),
Exp_Type varchar(50),
Interest_Earned decimal(10,3),
Delinquent_Acc varchar(5)
);







create table cust_details(
Client_Num int,
Customer_Age int,
Gender varchar(5),
Dependent_Count int,
Education_Level varchar(50),
Marital_Status varchar(20),
state_cd varchar(50),
Zipcode varchar(20),
Car_Owner varchar(5),
House_Owner varchar(5),
Personal_loan varchar(5),
contact varchar(50),
Customer_Job varchar(50),
Income int,
Cust_Satisfaction_Score int
);	


create table cc_details_temp(
Client_Num int,	
Card_Category varchar(20),
Annual_Fees int,
Activation_30_Days int,
Customer_Acq_Cost int,
 Week_Start_Date varchar(20),
Week_Num varchar(20),
Qtr varchar(16),
current_year int,
Credit_Limit decimal(10,2),
Total_Revolving_Bal int,
Total_Trans_Amt int,
Total_Trans_Vol int,	
Avg_Utilization_Ratio decimal (10,3),
Use_Chip varchar(10),
Exp_Type varchar(50),
Interest_Earned decimal(10,3),
Delinquent_Acc varchar(5)
);








INSERT INTO cc_details (
  Client_Num,	
  Card_Category,
  Annual_Fees,
  Activation_30_Days,
  Customer_Acq_Cost,
  Week_Start_Date,
  Week_Num,
  Qtr,
  current_year,
  Credit_Limit,
  Total_Revolving_Bal,
  Total_Trans_Amt,
  Total_Trans_Vol,	
  Avg_Utilization_Ratio,
  Use_Chip,
  Exp_Type,
  Interest_Earned,
  Delinquent_Acc
)
SELECT
  Client_Num,	
  Card_Category,
  Annual_Fees,
  Activation_30_Days,
  Customer_Acq_Cost,
  STR_TO_DATE(Week_Start_Date, '%d-%m-%Y'), -- ✅ Only this one is converted
  Week_Num,
  Qtr,
  current_year,
  Credit_Limit,
  Total_Revolving_Bal,
  Total_Trans_Amt,
  Total_Trans_Vol,	
  Avg_Utilization_Ratio,
  Use_Chip,
  Exp_Type,
  Interest_Earned,
  Delinquent_Acc
FROM cc_details_temp;

-- Then drop the cc_details_temp table.

--Getting the no of patients of different age group
select age,count(*) as "No of Patients" from dbo.Heart group by Age;

--Getting the total no of male and female heart patients
select Sex,count(*) as "No of Patients" from dbo.Heart group by Sex;

--Getting count of patients with different cholestrol level
select Cholesterol,count(*) as "No of patients" from dbo.Heart group by Cholesterol;

--Getting count of male having highest cholesterol level
select max(cholesterol),count(*) from dbo.Heart where Sex= 'M' and Cholesterol in (select max(cholesterol) from dbo.Heart where sex='M');

--Getting count of female having highest cholesterol level
select max(cholesterol),count(*) from dbo.Heart where Sex= 'F' and Cholesterol in (select max(cholesterol) from dbo.Heart where sex='F');

--Getting count of patients having normal blood pressure level
select count(*) as "Normal Blood pressure" from dbo.Heart where RestingBP>90 and RestingBP<120;

--Getting count of patients having Resting ECG as normal
select count(*) as "Normal ECG Reading" from dbo.Heart where RestingECG='Normal';

--Getting count of patients having Normal ECG reading but having heart disease
select count(*) as "Patients with Heart Disease" from dbo.Heart where RestingECG='Normal' and HeartDisease=1;

--Getting a report of aged persons(above 60) and having no heart disease
select * from dbo.Heart where HeartDisease=0 and RestingECG='Normal';

-- Getting a report of maximum desired heart rate of patients at their age
select Age,MaxHR,MaxHR - Age as "Desired MAXHR" from dbo.Heart;

--Getting a report of patients who have pain in the chest but no heart disease
select * from dbo.Heart where ExerciseAngina='Y' and HeartDisease=0;


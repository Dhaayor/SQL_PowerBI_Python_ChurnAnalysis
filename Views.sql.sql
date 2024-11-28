USE db_churn;

CREATE VIEW Vw_ChurnData AS
	SELECT * FROM prod_Churn WHERE Customer_Status IN ('Churned', 'Stayed')

CREATE VIEW Vw_JoinData AS
	SELECT * FROM prod_Churn WHERE Customer_Status = 'Joined'

SELECT * FROM Vw_JoinData
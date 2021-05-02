SELECT companyName,paidAmount FROM companies JOIN accounts USING (accountNumber) WHERE paidAmount>0;
SELECT SUM(paidAmount) FROM accounts JOIN customers USING(accountNumber);
CREATE VIEW Total_Income AS
SELECT (SELECT SUM(paidAmount) FROM accounts JOIN customers USING(accountNumber))-SUM(paidAmount) AS totalIncome FROM companies JOIN accounts USING (accountNumber) WHERE ;
SELECT * FROM total_income;
SELECT 'November' AS MONTH,SUM(totalAmount) FROM bms.`transections` t JOIN bms.`transectiondetail` d USING(transectionNumber) WHERE d.`transectionDate` LIKE '%-11-%' GROUP BY(transectionNumber);
SELECT c.`customerName`,t.*  FROM bms.`customers` c JOIN bms.`transections` t  USING(accountNumber) WHERE t.`transectionDate` LIKE '%-12-%' ;

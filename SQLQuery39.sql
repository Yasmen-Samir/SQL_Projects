/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [category_no]
      ,[member_no]
      ,[region_no]
      ,[charge_dt]
      ,[payment_amt]
      ,[charge_amt]
      ,[CategoryPrice]
  FROM [StarSchema].[dbo].[CategoryPrice]
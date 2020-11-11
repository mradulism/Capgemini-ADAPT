--Show transaction date, first 20 characters of transaction description (change the column heading to "trans_desc") and amounts of all 'Credit' transactions done during June, 2010.

alter session set current_schema=bank;
SET heading OFF;
SELECT trans_dt,substr(trans_desc,0,20) AS Trans_desc ,trans_amt 
FROM bank_transaction 
WHERE trans_dt>=TO_DATE( '01-Jun-2010 00:00:00 ',  'DD-Mon-YYYY HH24:MI:SS' )
AND trans_dt<=TO_DATE( '30-Jun-2010 00:00:00 ',  'DD-Mon-YYYY HH24:MI:SS' );

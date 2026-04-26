✅ STEP 1: CREATE FINAL TABLE (paste in SQL file)
CREATE TABLE transaction_summary (
    customer_name VARCHAR2(100),
    total_amount NUMBER,
    transaction_count NUMBER,
    avg_amount NUMBER
);

✅ STEP 2: INSERT AGGREGATION LOGIC (paste below it)
INSERT INTO transaction_summary
SELECT 
    customer_name,
    SUM(amount) AS total_amount,
    COUNT(*) AS transaction_count,
    AVG(amount) AS avg_amount
FROM clean_transactions
GROUP BY customer_name;

✅ STEP 3: FINAL CHECK QUERY (paste at end)
SELECT * FROM transaction_summary;

✅ STEP 4 (ANALYTICS / GOLD LAYER TABLE)
CREATE TABLE transaction_summary (
    customer_name VARCHAR2(100),
    total_amount NUMBER,
    transaction_count NUMBER,
    avg_amount NUMBER
);

✅ STEP 5 (BUSINESS AGGREGATION LOGIC)
INSERT INTO transaction_summary
SELECT 
    customer_name,
    SUM(amount) AS total_amount,
    COUNT(*) AS transaction_count,
    AVG(amount) AS avg_amount
FROM clean_transactions
GROUP BY customer_name;

🔍 STEP 6 (FINAL OUTPUT CHECK)
SELECT * FROM transaction_summary;

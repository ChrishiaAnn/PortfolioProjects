 -- 1 COMBINE ALL TABLES
 
SELECT  
[REGISTRATION] AS CombinedREGISTRATION, 
[DATE] AS CombinedDATE, 
[TYPE] AS CombinedTYPE, 
[ACCOUNT_NO] AS CombinedACCOUNT_NO, 
[BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
[TYPE2] AS CombinedBUSINESS_TYPE2,
[OWNER_S_NAME] AS CombinedOWNER_S_NAME,
[BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
[CONTACT_NO_S] AS CombinedCONTACT_NO_S,
[BARANGAY] AS CombinedBARANGAY,
[BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
[LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
[PERSONNEL] AS CombinedPERSONNEL,
[BUSINESS] AS CombinedBUSINESS,
[COMMON] AS CombinedCOMMON
FROM MICRO
UNION ALL
SELECT 
[REGISTRATION] AS CombinedREGISTRATION, 
[DATE] AS CombinedDATE, 
[TYPE] AS CombinedTYPE, 
[ACCOUNT_NO] AS CombinedACCOUNT_NO, 
[BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
[TYPE2] AS CombinedBUSINESS_TYPE2,
[OWNER_S_NAME] AS CombinedOWNER_S_NAME,
[BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
[CONTACT_NO_S] AS CombinedCONTACT_NO_S,
[BARANGAY] AS CombinedBARANGAY,
[BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
[LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
[PERSONNEL] AS CombinedPERSONNEL,
[BUSINESS] AS CombinedBUSINESS,
[COMMON] AS CombinedCOMMON
FROM SMALL
UNION ALL
SELECT 
[REGISTRATION] AS CombinedREGISTRATION, 
[DATE] AS CombinedDATE, 
[TYPE] AS CombinedTYPE, 
[ACCOUNT_NO] AS CombinedACCOUNT_NO, 
[BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
[TYPE2] AS CombinedBUSINESS_TYPE2,
[OWNER_S_NAME] AS CombinedOWNER_S_NAME,
[BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
[CONTACT_NO_S] AS CombinedCONTACT_NO_S,
[BARANGAY] AS CombinedBARANGAY,
[BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
[LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
[PERSONNEL] AS CombinedPERSONNEL,
[BUSINESS] AS CombinedBUSINESS,
[COMMON] AS CombinedCOMMON
FROM MEDIUM
UNION ALL
SELECT 
[REGISTRATION] AS CombinedREGISTRATION, 
[DATE] AS CombinedDATE, 
[TYPE] AS CombinedTYPE, 
[ACCOUNT_NO] AS CombinedACCOUNT_NO, 
[BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
[TYPE2] AS CombinedBUSINESS_TYPE2,
[OWNER_S_NAME] AS CombinedOWNER_S_NAME,
[BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
[CONTACT_NO_S] AS CombinedCONTACT_NO_S,
[BARANGAY] AS CombinedBARANGAY,
[BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
[LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
[PERSONNEL] AS CombinedPERSONNEL,
[BUSINESS] AS CombinedBUSINESS,
[COMMON] AS CombinedCOMMON
FROM LARGE

--- 2 COUNT ROWS OF COMBINED TABLES

SELECT COUNT(*) AS TableRow
FROM (
    SELECT  
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS, 
        [COMMON] AS CombinedCOMMON
    FROM MICRO
    UNION ALL
    SELECT 
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM SMALL
    UNION ALL
    SELECT 
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM MEDIUM
    UNION ALL
    SELECT 
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM LARGE
) AS CombinedTables;

----- 3 COUNT ROWS OF EACH TABLE

SELECT 'MICRO' AS TableName, COUNT(*) AS TotalRows
FROM MICRO
UNION ALL
SELECT 'SMALL' AS TableName, COUNT(*) AS TotalRows
FROM SMALL
UNION ALL
SELECT 'MEDIUM' AS TableName, COUNT(*) AS TotalRows
FROM MEDIUM
UNION ALL
SELECT 'LARGE' AS TableName, COUNT(*) AS TotalRows
FROM LARGE;

---- 4 REMOVE ALL EMPTY ROWS

SELECT  
    [REGISTRATION] AS CombinedREGISTRATION, 
    [DATE] AS CombinedDATE, 
    [TYPE] AS CombinedTYPE, 
    [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
    [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
    [TYPE2] AS CombinedBUSINESS_TYPE2,
    [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
    [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
    [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
    [BARANGAY] AS CombinedBARANGAY,
    [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
    [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
    [PERSONNEL] AS CombinedPERSONNEL,
    [BUSINESS] AS CombinedBUSINESS,
    [COMMON] AS CombinedCOMMON
FROM (
    SELECT  
        [REGISTRATION], 
        [DATE], 
        [TYPE], 
        [ACCOUNT_NO], 
        [BUSINESS_TRADE_NAME],
        [TYPE2],
        [OWNER_S_NAME],
        [BUSINESS_ADDRESS],
        [CONTACT_NO_S],
        [BARANGAY],
        [BUSINESS_CLASS],
        [LINE_OF_BUSINESS],
        [PERSONNEL],
        [BUSINESS],
        [COMMON]
    FROM MICRO
    UNION ALL
    SELECT 
        [REGISTRATION], 
        [DATE], 
        [TYPE], 
        [ACCOUNT_NO], 
        [BUSINESS_TRADE_NAME],
        [TYPE2],
        [OWNER_S_NAME],
        [BUSINESS_ADDRESS],
        [CONTACT_NO_S],
        [BARANGAY],
        [BUSINESS_CLASS],
        [LINE_OF_BUSINESS],
        [PERSONNEL],
        [BUSINESS],
        [COMMON]
    FROM SMALL
    UNION ALL
    SELECT 
        [REGISTRATION], 
        [DATE], 
        [TYPE], 
        [ACCOUNT_NO], 
        [BUSINESS_TRADE_NAME],
        [TYPE2],
        [OWNER_S_NAME],
        [BUSINESS_ADDRESS],
        [CONTACT_NO_S],
        [BARANGAY],
        [BUSINESS_CLASS],
        [LINE_OF_BUSINESS],
        [PERSONNEL],
        [BUSINESS],
        [COMMON]
    FROM MEDIUM
    UNION ALL
    SELECT 
        [REGISTRATION], 
        [DATE], 
        [TYPE], 
        [ACCOUNT_NO], 
        [BUSINESS_TRADE_NAME],
        [TYPE2],
        [OWNER_S_NAME],
        [BUSINESS_ADDRESS],
        [CONTACT_NO_S],
        [BARANGAY],
        [BUSINESS_CLASS],
        [LINE_OF_BUSINESS],
        [PERSONNEL],
        [BUSINESS],
        [COMMON]
    FROM LARGE
) AS CombinedTables
WHERE 
    [REGISTRATION] IS NOT NULL OR
    [DATE] IS NOT NULL OR
    [TYPE] IS NOT NULL OR
    [ACCOUNT_NO] IS NOT NULL OR
    [BUSINESS_TRADE_NAME] IS NOT NULL OR
    [TYPE2] IS NOT NULL OR
    [OWNER_S_NAME] IS NOT NULL OR
    [BUSINESS_ADDRESS] IS NOT NULL OR
    [CONTACT_NO_S] IS NOT NULL OR
    [BARANGAY] IS NOT NULL OR
    [BUSINESS_CLASS] IS NOT NULL OR
    [LINE_OF_BUSINESS] IS NOT NULL OR
    [PERSONNEL] IS NOT NULL OR
    [BUSINESS] IS NOT NULL OR
    [COMMON]IS NOT NULL;

-- 5 COUNT ROWS OF TABLE WITH NO MORE EMPTY ROWS

SELECT COUNT(*) AS TableRow
FROM (
    SELECT  
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM (
        SELECT  
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MICRO
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM SMALL
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MEDIUM
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM LARGE
    ) AS CombinedTables
    WHERE 
        [REGISTRATION] IS NOT NULL OR
        [DATE] IS NOT NULL OR
        [TYPE] IS NOT NULL OR
        [ACCOUNT_NO] IS NOT NULL OR
        [BUSINESS_TRADE_NAME] IS NOT NULL OR
        [TYPE2] IS NOT NULL OR
        [OWNER_S_NAME] IS NOT NULL OR
        [BUSINESS_ADDRESS] IS NOT NULL OR
        [CONTACT_NO_S] IS NOT NULL OR
        [BARANGAY] IS NOT NULL OR
        [BUSINESS_CLASS] IS NOT NULL OR
        [LINE_OF_BUSINESS] IS NOT NULL OR
        [PERSONNEL] IS NOT NULL OR
        [BUSINESS] IS NOT NULL OR
        [COMMON] IS NOT NULL 
) AS CombinedTables;

-- 6 REMOVE DUPLICATE ROWS OF TABLE WITH NO MORE EMPTY ROWS

SELECT DISTINCT 
    CAST(CombinedDATE AS varchar(255)) AS CombinedDATE, 
    CAST(CombinedTYPE AS varchar(255)) AS CombinedTYPE, 
    CAST(CombinedACCOUNT_NO AS varchar(255)) AS CombinedACCOUNT_NO, 
    CAST(CombinedBUSINESS_TRADE_NAME AS varchar(255)) AS CombinedBUSINESS_TRADE_NAME,
    CAST(CombinedBUSINESS_TYPE2 AS varchar(255)) AS CombinedBUSINESS_TYPE2,
    CAST(CombinedOWNER_S_NAME AS varchar(255)) AS CombinedOWNER_S_NAME,
    CAST(CombinedBUSINESS_ADDRESS AS varchar(255)) AS CombinedBUSINESS_ADDRESS,
    CAST(CombinedCONTACT_NO_S AS varchar(255)) AS CombinedCONTACT_NO_S,
    CAST(CombinedBARANGAY AS varchar(255)) AS CombinedBARANGAY,
    CAST(CombinedBUSINESS_CLASS AS varchar(255)) AS CombinedBUSINESS_CLASS,
    CAST(CombinedLINE_OF_BUSINESS AS varchar(255)) AS CombinedLINE_OF_BUSINESS,
    CAST(CombinedPERSONNEL AS varchar(255)) AS CombinedPERSONNEL,
    CAST(CombinedBUSINESS AS varchar(255)) AS CombinedBUSINESS,
    CAST(CombinedCOMMON AS varchar(255)) AS CombinedCOMMON
FROM (
    SELECT  
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM (
        SELECT  
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MICRO
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM SMALL
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MEDIUM
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM LARGE
    ) AS CombinedTables
    WHERE 
        [REGISTRATION] IS NOT NULL OR
        [DATE] IS NOT NULL OR
        [TYPE] IS NOT NULL OR
        [ACCOUNT_NO] IS NOT NULL OR
        [BUSINESS_TRADE_NAME] IS NOT NULL OR
        [TYPE2] IS NOT NULL OR
        [OWNER_S_NAME] IS NOT NULL OR
        [BUSINESS_ADDRESS] IS NOT NULL OR
        [CONTACT_NO_S] IS NOT NULL OR
        [BARANGAY] IS NOT NULL OR
        [BUSINESS_CLASS] IS NOT NULL OR
        [LINE_OF_BUSINESS] IS NOT NULL OR
        [PERSONNEL] IS NOT NULL OR
        [BUSINESS] IS NOT NULL OR
        [COMMON] IS NOT NULL
) AS CombinedTables;

-- 7 INCLUDE ONLY THOSE WITH ORTIGAS CENTER

SELECT DISTINCT 
    CAST(CombinedREGISTRATION AS varchar(255)) AS CombinedREGISTRATION,
    CAST(CombinedDATE AS varchar(255)) AS CombinedDATE, 
    CAST(CombinedTYPE AS varchar(255)) AS CombinedTYPE, 
    CAST(CombinedACCOUNT_NO AS varchar(255)) AS CombinedACCOUNT_NO, 
    CAST(CombinedBUSINESS_TRADE_NAME AS varchar(255)) AS CombinedBUSINESS_TRADE_NAME,
    CAST(CombinedBUSINESS_TYPE2 AS varchar(255)) AS CombinedBUSINESS_TYPE2,
    CAST(CombinedOWNER_S_NAME AS varchar(255)) AS CombinedOWNER_S_NAME,
    CAST(CombinedBUSINESS_ADDRESS AS varchar(255)) AS CombinedBUSINESS_ADDRESS,
    CAST(CombinedCONTACT_NO_S AS varchar(255)) AS CombinedCONTACT_NO_S,
    CAST(CombinedBARANGAY AS varchar(255)) AS CombinedBARANGAY,
    CAST(CombinedBUSINESS_CLASS AS varchar(255)) AS CombinedBUSINESS_CLASS,
    CAST(CombinedLINE_OF_BUSINESS AS varchar(255)) AS CombinedLINE_OF_BUSINESS,
    CAST(CombinedPERSONNEL AS varchar(255)) AS CombinedPERSONNEL,
    CAST(CombinedBUSINESS AS varchar(255)) AS CombinedBUSINESS,
    CAST(CombinedCOMMON AS varchar(255)) AS CombinedCOMMON
    
FROM (
    SELECT  
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM (
        SELECT  
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON] 
        FROM MICRO
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON] 
        FROM SMALL
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON] 
        FROM MEDIUM
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM LARGE
    ) AS CombinedTables
    WHERE 
        ([REGISTRATION] IS NOT NULL OR
        [DATE] IS NOT NULL OR
        [TYPE] IS NOT NULL OR
        [ACCOUNT_NO] IS NOT NULL OR
        [BUSINESS_TRADE_NAME] IS NOT NULL OR
        [TYPE2] IS NOT NULL OR
        [OWNER_S_NAME] IS NOT NULL OR
        [BUSINESS_ADDRESS] IS NOT NULL OR
        [CONTACT_NO_S] IS NOT NULL OR
        [BARANGAY] IS NOT NULL OR
        [BUSINESS_CLASS] IS NOT NULL OR
        [LINE_OF_BUSINESS] IS NOT NULL OR
        [PERSONNEL] IS NOT NULL OR
        [BUSINESS] IS NOT NULL OR
        [COMMON] IS NOT NULL)
        AND CAST([BUSINESS_ADDRESS] AS varchar(max)) LIKE '%ORTIGAS%'
) AS CombinedTables;

--- 8 Naming the Table

SELECT DISTINCT 
    CAST(CombinedREGISTRATION AS varchar(255)) AS CombinedREGISTRATION,
    CAST(CombinedDATE AS varchar(255)) AS CombinedDATE, 
    CAST(CombinedTYPE AS varchar(255)) AS CombinedTYPE, 
    CAST(CombinedACCOUNT_NO AS varchar(255)) AS CombinedACCOUNT_NO, 
    CAST(CombinedBUSINESS_TRADE_NAME AS varchar(255)) AS CombinedBUSINESS_TRADE_NAME,
    CAST(CombinedBUSINESS_TYPE2 AS varchar(255)) AS CombinedBUSINESS_TYPE2,
    CAST(CombinedOWNER_S_NAME AS varchar(255)) AS CombinedOWNER_S_NAME,
    CAST(CombinedBUSINESS_ADDRESS AS varchar(255)) AS CombinedBUSINESS_ADDRESS,
    CAST(CombinedCONTACT_NO_S AS varchar(255)) AS CombinedCONTACT_NO_S,
    CAST(CombinedBARANGAY AS varchar(255)) AS CombinedBARANGAY,
    CAST(CombinedBUSINESS_CLASS AS varchar(255)) AS CombinedBUSINESS_CLASS,
    CAST(CombinedLINE_OF_BUSINESS AS varchar(255)) AS CombinedLINE_OF_BUSINESS,
    CAST(CombinedPERSONNEL AS varchar(255)) AS CombinedPERSONNEL,
    CAST(CombinedBUSINESS AS varchar(255)) AS CombinedBUSINESS,
    CAST(CombinedCOMMON AS varchar(255)) AS CombinedCOMMON
INTO ORTIGASTHESISDATABASE
FROM (
    SELECT  
        [REGISTRATION] AS CombinedREGISTRATION, 
        [DATE] AS CombinedDATE, 
        [TYPE] AS CombinedTYPE, 
        [ACCOUNT_NO] AS CombinedACCOUNT_NO, 
        [BUSINESS_TRADE_NAME] AS CombinedBUSINESS_TRADE_NAME,
        [TYPE2] AS CombinedBUSINESS_TYPE2,
        [OWNER_S_NAME] AS CombinedOWNER_S_NAME,
        [BUSINESS_ADDRESS] AS CombinedBUSINESS_ADDRESS,
        [CONTACT_NO_S] AS CombinedCONTACT_NO_S,
        [BARANGAY] AS CombinedBARANGAY,
        [BUSINESS_CLASS] AS CombinedBUSINESS_CLASS,
        [LINE_OF_BUSINESS] AS CombinedLINE_OF_BUSINESS,
        [PERSONNEL] AS CombinedPERSONNEL,
        [BUSINESS] AS CombinedBUSINESS,
        [COMMON] AS CombinedCOMMON
    FROM (
        SELECT  
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MICRO
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM SMALL
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM MEDIUM
        UNION ALL
        SELECT 
            [REGISTRATION], 
            [DATE], 
            [TYPE], 
            [ACCOUNT_NO], 
            [BUSINESS_TRADE_NAME],
            [TYPE2],
            [OWNER_S_NAME],
            [BUSINESS_ADDRESS],
            [CONTACT_NO_S],
            [BARANGAY],
            [BUSINESS_CLASS],
            [LINE_OF_BUSINESS],
            [PERSONNEL],
            [BUSINESS],
            [COMMON]
        FROM LARGE
    ) AS CombinedTables
    WHERE 
        ([REGISTRATION] IS NOT NULL OR
        [DATE] IS NOT NULL OR
        [TYPE] IS NOT NULL OR
        [ACCOUNT_NO] IS NOT NULL OR
        [BUSINESS_TRADE_NAME] IS NOT NULL OR
        [TYPE2] IS NOT NULL OR
        [OWNER_S_NAME] IS NOT NULL OR
        [BUSINESS_ADDRESS] IS NOT NULL OR
        [CONTACT_NO_S] IS NOT NULL OR
        [BARANGAY] IS NOT NULL OR
        [BUSINESS_CLASS] IS NOT NULL OR
        [LINE_OF_BUSINESS] IS NOT NULL OR
        [PERSONNEL] IS NOT NULL OR
        [BUSINESS] IS NOT NULL OR
        [COMMON] IS NOT NULL)
        AND CAST([BUSINESS_ADDRESS] AS varchar(max)) LIKE '%ORTIGAS%'
) AS CombinedTables

--- 9 LINE OF BUSINESS

SELECT LineContent
FROM (
    SELECT CAST(A AS varchar(max)) AS LineContent FROM [LINE ] WHERE A IS NOT NULL
    UNION
    SELECT CAST(B AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE B IS NOT NULL
    UNION
    SELECT CAST(C AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE C IS NOT NULL
    UNION
    SELECT CAST(D AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE D IS NOT NULL
    UNION
    SELECT CAST(E AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE E IS NOT NULL
    UNION
    SELECT CAST(F AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE F IS NOT NULL
    UNION
    SELECT CAST(G AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE G IS NOT NULL
    UNION
    SELECT CAST(H AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE H IS NOT NULL
    UNION
    SELECT CAST(I AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE I IS NOT NULL
    UNION
    SELECT CAST(J AS varchar(max)) AS LineContent FROM [LINE OF BUSINESS] WHERE J IS NOT NULL
) AS DistinctLines;

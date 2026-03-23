## ETL Decisions

### Decision 1 – Date Format Standardization
Problem: Raw data had inconsistent date formats.
Resolution: Converted all dates into standard YYYY-MM-DD format before loading into dim_date table.

### Decision 2 – Handling NULL Values
Problem: Some rows had missing values.
Resolution: Replaced NULL values with default values or removed incomplete rows before loading.

### Decision 3 – Category Name Standardization
Problem: Category names had inconsistent casing (electronics, Electronics).
Resolution: Standardized all category names to proper case before loading into dim_product table.

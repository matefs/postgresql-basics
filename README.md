## postgresql-basics

![image](https://github.com/matefs/postgresql-basics/assets/30128774/4c943064-efe2-4624-b56e-d9d5564f6e8d)

### Performance: 
- To acess execution plan, use the command `EXPLAIN ANALYZE` before the query.
- Example: `EXPLAIN ANALYZE SELECT * FROM exemplo;`
- ![image psd(1)](https://github.com/matefs/postgresql-basics/assets/30128774/4ac4c779-2558-4e2b-9b56-435d653d0cfa)


### Transactions  
- All-or-nothing: Like taking ALL groceries out before paying, ensuring data consistency.
- Valid state: Like putting wine back or spilling it, making sure the database always makes sense.
- Rules
    - **Must have semicolons ";" at every line**

#### Cursors: 
In PostgreSQL, a cursor is a mechanism that allows you to iterate and process the results of a SQL query in a step-by-step manner. In simpler terms, it acts like a "pointer" pointing to the results of a query and lets you traverse through them one by one, rather than fetching all the results at once.

#### Working with strings: 
```yaml
lpad = rjust do python 
coalesce =  accepts an unlimited number of arguments. It returns the first argument that is not null.
replace = replaceAll do javascript - REPLACE ('AAAA AA', 'A', 'Z');

```


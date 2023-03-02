# README

1. Added devise, bundle install

2. Created models
```bash
rails g devise user
rails g scaffold post title body:text user:references
```

3. Created `dev:prime` task for sample data

4. Create ERD
![Domain Model](erd.png?raw=true "Domain Model")

5. Add `rack-cors` to allow requests from other sites

6. Skip forgery protection with JSON endpoings

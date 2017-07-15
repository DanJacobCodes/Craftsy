# Epicodus Ruby on Rails Independent Project Week 2 || Rails Authentication

### Specs
* Users will be able to sign up with an email and password
* Users who are admins will be able to edit, delete and create products
* Basic users will be able to add reviews to products and view products
* All users can view products

## Prerequisites
* PostgreSQL
* Ruby/Rails
* Knowledge of Devise gem

## Description
This project serves as practice with the Ruby on Rails framework. In this project, an example online store is created to test basic authentication. Users who are administrators have special privileges which allow them to either create, destroy, or edit product details. Otherwise, users who are basic members will be unable to do anything other than browse products and add reviews. All users meaning users who are not signed up will be able to view products and their comments. This project relies on the Devise gem to authenticate and authorize users.

## Admin/Basic User

### Admin
```
Email: admin@admin.com
Password: admin24
```
### Basic

```
Email: basic@basic.com
Password: basic123
```

## Setup and Installation
1. Clone this project into your Desktop directory
  ```
  git clone https://github.com/DanJacobCodes/Craftsy
  ```
2. In a separate terminal window launch postgres
```
postgres
```

3. Bundle all gems to ensure that application dependencies are running. You may want to update the gems for good measure
  ```
  bundle update
  bundle install
  ```
4. Change into this directory and create and initialize the database
  ```
  cd Craftsy
  rake db:create
  rake db:migrate
  ```

  5. To run the server and view the application run:
  ```
  rails s
  ```

  6. Navigate to localhost:3000 in the browser of your choice


## Technologies Used
* HTML
* CSS
* Ruby
* Ruby on Rails
* PostgreSQL

### Version
* Ruby version
  2.3.1

* Rails version
  5.1.2

## Support and Contact Details
Should any issues occur, contact me @dansamueljacob@gmail.com

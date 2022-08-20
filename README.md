# README

Tool Version:

nodejs 18.7.0
postgres 14.4
ruby 2.7.3        
yarn 1.22.19
Rails 7.0.3.1

08/19/2022 - Bryan

- generated controllers and views for static_pages
- configured routes, setting root page to ```"static_pages#index```
- generated a migration file for time_records table using this command: ```rails g migration CreateTimeRecord time_in:datetime time_out:datetime
- generated a migration file for users table using this command: ```rails g migration CreateUser first_name:string last_name:string

08/20/2022 - Bryan

- setup devise, used this link as reference: https://github.com/heartcombo/devise
- generated a migration file for dropping existing users table (forgot that users table and model should be along with devise setup)

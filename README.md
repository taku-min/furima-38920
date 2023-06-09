# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Association
・has_many:items
・has_many:orders


* Configuration

* Database creation

* Database initialization

* How to run the test suite

Association
・belongs_to:user
・has_one:order


* Deployment instructions

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| user               | references          | null: false, foreign_key:true |
| item               | references          | null: false, foreign_key:true |

Association
・belongs_to:user
・belongs_to:item





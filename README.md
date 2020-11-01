# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
   2.5.1
* System dependencies

* Configuration

* Database creation
   Pogresql
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
1] Clone code from repo using command
  - git clone https://github.com/nantestdeveloper/contact_rest_api_demo.git

2] Go to code directory

  cd contact_rest_api_demo

3] Set username and password of posgresql in database.yml file
4] Run below command to setup project
  - bundle install
  - rails db:create
  - rails db:migrate
  - yarn add jquery
  - rails webpacker:install
5] Start server
  - rails s

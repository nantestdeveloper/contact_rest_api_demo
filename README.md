# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
   2.5.1
* System dependencies

* Configuration

* Database creation
   Postgresql
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

Access rails APP url:

  http://localhost:3000/


API ENDPOINT AND RESPONSE

CREATE CONTACT API: 
curl -X POST \
  http://localhost:3000/api/v1/contacts \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 0f99b4a9-b1ca-ca73-b05b-b9da5e02d71b' \
  -d '{
  "contact": {
    "first_name": "Roney",
    "last_name": "Smith",
    "phone": "+12025550191",
    "email": "roney@gmail.com",
    "message": "Test dummy  message."
   }
}'

RESPONSE:
{
    "contact": {
        "id": 17,
        "first_name": "Roney",
        "last_name": "Smith",
        "email": "roney@gmail.com",
        "phone": "+12025550191",
        "message": "Test dummy  message.",
        "created_at": "2020-11-01T08:03:01.420Z",
        "updated_at": "2020-11-01T08:03:01.420Z"
    },
    "message": "Contact saved.",
    "status": 200
}

ERROR SCENARIO:
  
  curl -X POST \
  http://localhost:3000/api/v1/contacts \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 646e7319-727a-6034-77d0-f164013237e5' \
  -d '{
  "contact": {
    "first_name": "Roney",
    "last_name": "Smith",
    "phone": "+12025550191",
    "email": "roney@gmail.com",
    "message": ""
   }
}'

RESPONSE:
  {
    "errors": {
        "message": [
            "can't be blank"
        ]
    },
    "status": 400
}

FrontPage UI image attached in code path:

/contact_rest_api_demo/Contact_page.png
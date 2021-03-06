# README

* Author: Danny Le

* Date: March 2nd, 2021

## Table of contents
* [General info](#general-info)
* [System Dependencies](#technologies)
* [Installation](#Installation)
* [Approach](#approach)
* [Deployment Instruction](#execution)
* [Testing](#Testing)

## General Info
Chat application challenge for Welcome Tech's trial.

Full-featured chat application using Ruby on Rails back-end and ReactJS front-end. Integrated with PostGreSQL and Redis for asynchronous features and users management.

The live demo can be found here: [https://serene-fortress-97910.herokuapp.com ]

## System Dependencies

* Ruby version: 2.5.0

* React version: 16.12.0

* PostGreSQL

* Redis 3.2

## Installation
To install project's dependencies, install it locally using Rails:

```
bundle install
rake db:create
rake db:migrate

start rails server: rails server or rails s
```

## Approach
* Full-featured chat application using Ruby on Rails back-end and ReactJS front-end. Integrated with PostGreSQL and Redis for asynchronous features and users management.

* User management features: sign-up, JWT authentication, forgot password.

* Front-end and back-end integration with Redis, ActionCable for async chat. (Can be integrated w/ RestAPI as well.)

## Deployment Instruction

```
git push heroku <main-branch>
```

* ...

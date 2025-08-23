# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


0. _23/08/25_ rails new repo_plaza --database=postgresql --css=tailwind
0. mi serve il db e preferisco usare docker per il locale
quindi creo il docker compose (localhost)
docker-compose up -d db TUTTO OK
0. rails server - , rails uso la versione installata e non docker-compose
0. rails db:create (questo passa attraverso il porting 5432 di docker compose al container del database)
0. creiamo tabella user e la tabella repo (per "seguirle")
quindi 

rails g scaffold User provider:string uid:string nickname:string name:string email:string token:string token_expires_at:datetime

rails g scaffold Repository user:references name:string full_name:string url:string last_commit_at:datetime archived:boolean

- FATTO TUTTO OK
0. ora vanno create le relazioni tra tabelle (nel models di users in questo caso) - FATTO
0. e facendo rails s tutto funzionerà

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

0. _23 agosto 25_ rails new repo_plaza --database=postgresql --css=tailwind
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



_25 agosto 25_
*landing* con rails generate controller Home index

*Devise*

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:
       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
     In production, :host should be set to the actual host of your application.
     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:
       root to: "home#index"
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:
       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>
     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:
       rails g devise:views
     * Not required *

ho già un modello user quindi devo integrare con i campi che servono a devise
rails generate migration AddDeviseToUsers encrypted_password:string reset_password_token:string reset_password_sent_at:datetime remember_created_at:datetime

*tailwind* rails tailwindcss:install - OK



_26 agosto 25_
db-waiting - OK
policy login - TO DO
icons - OK 
async job - TO DO

_27 agosto 25_
SSO github

_28 agosto 25_
Email 

_29 agosto 25_
personalizzare le pagine di login
rails generate devise:views




TO DO 

Modifica il Gemfile aggiungendo:
ruby# Authentication
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-rails_csrf_protection'

# GitHub API
gem 'octokit'

# Background jobs
gem 'sidekiq'

# UI helpers
gem 'image_processing' # per avatar GitHub

group :development, :test do
  gem 'dotenv-rails' # per le variabili d'ambiente
end
Poi installa:
bashbundle install


https://v0.app/chat/github-hub-KNzSyRHoB0o


GIRO UTENTE NORMALE:
Login - unica pagina con le repo che segue 

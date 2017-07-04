# Taco Shop. A Taco Ordering API and Angular2 view, Yum!

  * Validations to the Taco model.
  * Has RSpec tests for the controller and model.
  * Fav gems included: 
    * `capybara`, `factory_girl` for tests
    * `jbuilder` for straight up JSON views implementations
    * `pg` as it uses PostgreSQL as database
 
 ## Deployment
 
 ### TL;DR
 ```
 ~$ rails db:create
 ~$ rails db:migrate
 ~$ rails db:migrate RAILS_ENV=test
 ~$ rails db:seed
 ~$ rails s
 ```
 
 ## Run tests
 
 ```
 ~$ rails test
 ~$ bundle exec rspec
 ```
 
 ### Deploying to Heroku
 
 from the project root run:
 
 ```
 ~$ heroku login #Enter your credentials and...
 ~$ heroku create
 ~$ git push heroku master
 ~$ heroku run rake db:migrate
 ~$ heroku run rake db:seed
 ~$ heroku open
 ```
 
 And open [https://<your-taco-app>.herokuapp.com](https://<your-taco-app>.herokuapp.com)
 
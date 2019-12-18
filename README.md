# hw-week05day04-devise
Devise : https://github.com/plataformatec/devise#getting-started
#### 1 create new app ~> rails new carDevise -d=postgresql
#### 2 Then cd carDevise , create db inside rails 
```rails db:create```
#### 3 Add the following line to your Gemfile  file
```gem 'devise' ```
#### 4 In the terminal 
```bundle install```
#### 5 Next, you need to run the generator: 
```rails generate devise:install ```
#### 6 Inside file of config/environments/development.rb: insert this line
```config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }```
#### 7 Ensure you have defined root_url to *something* in your config/routes.rb
```root to: "home#index"```
#### 8 Make new Controller called Home home_controller.rb  with method called index
#### 9 make new folder called Home ~> inside the folder create file called index.html.erb
#### 10 Inside view put these lines in file layout application.html.erb
     ```  <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p> ```
#### 11 Then run rails g devise:views in the terminal to make view pages for all devise ex: sign-up , sign-in ..etc
#### 12 rails generate devise <Name of Model> to create model called User 
``` rails generate devise User ```
#### 13 Then
``` rails db:migrate```
#### 14 Restart the server
         
         
-----------
One-To-Many
## User ---< Cars

#### Cars
- Name
- Model
- Year


# HoMe Real-estate

This is my first project using Ruby on Rails and PostgreSQl.

## Setup 

1. Install PostgreSQL
2. Install Ruby
3. Install Rails
4. Clone this repository 
5. Run these commands
5.1. Create database
```
rails db:create
```
5.2 Run database migrations for this project
```
rails db:migrate
```
5.3 Populate database 
```
rails db:seed
```
5.4 Run local server
```
rails server
```

6. Open the browser in http://localhost:3000

## Deployment

This project is using Heroku as deployment environment, which requires [a Heroku account](https://signup.heroku.com/www-header) and [heroku toolbelt installed](https://toolbelt.heroku.com/).

After install Heroku toolbelt locally, check if it's working properly running these commands in your terminal

```
heroku --version
which heroku
heroku login
```

Also, make sure the Github branch is up-to-date with your code changes. After that run these commands: 

```
git push origin master
git push heroku master
```

If you need to clean the database, please access https://data.heroku.com/datastores, to find the project database and click in `Reset database` button

<img width="1436" alt="Screen Shot 2019-08-02 at 12 57 42 am" src="https://user-images.githubusercontent.com/39023533/62304026-8cc5bb00-b4c0-11e9-9a5b-df7fcee077c7.png">

After reset the database, run these commands in your command line:

```
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

## Demo 

The demo page is hosted on Heroku you can access on this link https://home-realestate.herokuapp.com.

## Screenshots

### Homepage
<img src="https://user-images.githubusercontent.com/39023533/62294646-c42b6c00-b4ae-11e9-8128-7e1090bd0cbf.png" alt="" Width="100%" height=""/>
 
### Property list  
<img src="https://user-images.githubusercontent.com/39023533/62269841-a7c00d00-b477-11e9-9ab2-b62702324801.png" alt="" Width="100%" height=""/>
<img src="https://user-images.githubusercontent.com/39023533/62270155-a6431480-b478-11e9-8e9f-3e58aa62c515.png" alt="" Width="100%" height=""/>

### Agent list  

<img src="https://user-images.githubusercontent.com/39023533/62270471-6d576f80-b479-11e9-830f-46eb573536dd.png" alt="" Width="100%" height=""/>

### Admin  

<img src="https://user-images.githubusercontent.com/39023533/62299934-415bde80-b4b9-11e9-86e4-84997a86426a.png" alt="" Width="100%" height=""/>

## Author

*Nilana Rocha (nilanarocha)*
+ <http://github.com/nilanarocha>



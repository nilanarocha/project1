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

## Author

*Nilana Rocha (nilanarocha)*
+ <http://github.com/nilanarocha>











Description:
Hobert is an experienced and tenacious sales agent who prides himself on leaving no stone unturned in the pursuit of achieving a premium result. A proud Sydney resident, Hobert possesses a wealth of local knowledge combined with over eighteen years of practice within the Real Estate industry.

- Licensed Real Estate Agent

- Involved in over 500 sales transactions

- Direct and friendly approach with both buyers and sellers

- Local resident in the Sydney CBD. 

- Extensive knowledge of rent in all price ranges

- Mentored from a young age by the top performing agents in the country


description Meagan: 
With over 30 years experience in Real Estate and Finance Liz has an extensive accounting background gained from working with local companies and companies in both the UK and the United States.

Meagan's background in commercial real estate, trust account and general business practice give her a sound background and a broad range of understanding across all aspects of the Real estate business resulting in the best possible service to all clients.

- over 20 years of industry experience

- Real Estate License

- Can do attitude with an ability to understand all aspects of the Real Estate business.



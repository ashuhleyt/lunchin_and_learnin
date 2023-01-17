

<h1 align="center"> :fish_cake: :book: Lunchin & Learnin! :book: :fish_cake: </h1>
<br>
<div align="center">
  <img src="https://media1.giphy.com/media/2sYDUClnmEajIPSIwi/giphy.gif?cid=790b76116b30e61f86490dde7d386ceaaebb99c3012182bc&rid=giphy.gif&ct=g" width="300" height="300"/>
</div>
<center>
<br>
This app was designed as a way for a user to get new recipes, and acquire information about the country where the recipe came from. 
<br>

:fish_cake: [Learning Goals](#learning-goals)
<br>
:fish_cake: [Tech Stack](#tech-stack)
<br>
:fish_cake: [Configuration](#configuration)
<br>
:fish_cake: [API Keys](#api-keys)
  
 ### Learning Goals 
-> Expose an API that aggregates data from multiple external APIs
  <br>
-> Expose an API that requires an authentication token
  <br>
-> Expose an API for CRUD functionality
  <br>
-> Determine completion criteria based on the needs of other developers
  <br>
-> Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).
 
  
  ### Tech Stack
![rubyonrails](https://img.shields.io/badge/rubyonrails-5.2.8.1-000000?style=for-the-badge&logo=rubyonrails&logoColor=red)
<br>
![ruby](https://img.shields.io/badge/ruby-2.7.4-000000?style=for-the-badge&logo=ruby&logoColor=red)
<br>
![json](https://img.shields.io/badge/json-000000?style=for-the-badge&logo=json&logoColor=white)
<br>
![postgresql](https://img.shields.io/badge/postgresql-000000?style=for-the-badge&logo=postgresql&logoColor=light-blue)


### Configuration
`bundle install`<br>
`bundle exec figaro install` <br>
Running the above command will generate an application.yml folder in config. This is where you will store your [API Keys](#api-keys). <br>
`rails db:create` <br>
`rails db:migrate` <br>

### API Keys
Obtain your own API keys from: <br>
    - <a href="https://developer.edamam.com/edamam-recipe-api">Edamam Recipe Search API</a><br> 
    - <a href="https://developers.google.com/youtube/v3/getting-started">YouTube API</a><br>
    - <a href="https://unsplash.com/documentation">Unsplash API</a><br>
    - <a href="https://unsplash.com/documentation">Unsplash API</a><br>
    
And store them respective in your application.yml file: <br>

```
     app_id: <Edamam Application ID> 
     app_key: <Edamam Application Key>
     youtube_key: <YouTube API key> 
     unsplash_key: <Unsplash API key> 
```


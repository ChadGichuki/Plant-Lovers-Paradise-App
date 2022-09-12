# PLANT LOVERS PARADISE
This is a web application for use by a gardening store to keep track of plants already on sale and those maturing from the nursery. The app can also be used to keep track of their client list. 

The project consists of 2 parts:
- The Back end (current repository) implemented in Ruby (Sinatra).
- [The Front end](https://github.com/ChadGichuki/plant-lovers-paradise.git) implemented in ReactJS.

The rest of this README handles the backend installation and usage. To view details of the frontend, please follow [this link](https://github.com/ChadGichuki/plant-lovers-paradise.git). 

## Getting Started
### Pre-requisites
The following should already be be installed: Ruby, Bundle

### Setting up 
- Fork and Clone this repository to have a local copy.
- Run `bundle install` to install all the gems required as listed in the Gemfile.
- Run `bundle exec rake db:seed` to populate your database with sample data. Feel free to edit/create new values of your own.   
- To start the server, use the command `bundle exec rake server`
- Code Away!
  
 ## The API Reference
 ### Getting started
 The server runs on port 9292, hence the base URL for the api is:
 
 `http://127.0.0.1:5000/`
 No Authorization or API Key required.
 
 ### Data Format
 All the data is returned as JSON objects.
 
 ### Endpoints
 
 *Note:* All endpoints return a status_code and an accompanying success message.
 
 
 1) GET /plants
 Example: `curl http://127.0.0.1:9292/plants`
 
 Required arguements: None
 
 Returns: An array of plants objects
 
 Expected response:
 ```
[
    {
        "id": 49,
        "name": "Monstera",
        "species": "Monstera adansonii",
        "best_climate": "Cool and wet climate",
        "water_frequency": "Once a week",
        "no_in_stock": 89,
        "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
        "created_at": "2022-09-12T07:13:13.564Z",
        "updated_at": "2022-09-12T08:01:57.629Z",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "buyer": {
                    "id": 62,
                    "name": "Augustine Aufderhar",
                    "contact": 2808038018,
                    "feedback": "Ad culpa quas nisi."
                }
            }
        ]
    },
    {
        "id": 54,
        "name": "Palm",
        "species": "Palma calala",
        "best_climate": "Hot and dry",
        "water_frequency": "twice a month",
        "no_in_stock": 18,
        "image": "https://www.thespruce.com/thmb/CF-LPlVyC6XNfyN-uOzvE63nu8k=/4220x3058/filters:no_upscale():max_bytes(150000):strip_icc()/grow-indoor-palm-trees-1902902-TIGHTER-3ef3b622f85e42c5b9916132bb9ce607.jpg",
        "created_at": "2022-09-12T08:04:31.322Z",
        "updated_at": "2022-09-12T08:04:43.765Z",
        "purchases": []
    }
]
 ```
 2) GET /plants/:id
 Example: `curl http://127.0.0.1:9292/plants/49`
 
 Required arguements: None
 
 Returns: An single plant object
 
 Expected response:
 ```
{
        "id": 49,
        "name": "Monstera",
        "species": "Monstera adansonii",
        "best_climate": "Cool and wet climate",
        "water_frequency": "Once a week",
        "no_in_stock": 89,
        "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
        "created_at": "2022-09-12T07:13:13.564Z",
        "updated_at": "2022-09-12T08:01:57.629Z",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "buyer": {
                    "id": 62,
                    "name": "Augustine Aufderhar",
                    "contact": 2808038018,
                    "feedback": "Ad culpa quas nisi."
                }
            }
        ]
    }
 ```
 3) POST /plants
 Example: `curl -X POST -d '{"name":"Monstera","species": "Monstera adansonii","best_climate": "Cool and wet climate","water_frequency": "Once a week", "no_in_stock": 89, "image" :"https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg"}' http://127.0.0.1:9292/plants`
 
 Required arguements: None
 
 Returns: The newly created plant object as shown in point No.2 above.
 
 4) PATCH /plants/:id
  Example: `curl -X PATCH -d '{"no_in_stock": 77}' http://127.0.0.1:9292/plants/49`

  Required arguements: None
 
  Returns: The updated plant object as shown in point No.2 above.

  Expected response:
 ```
 {
        "id": 49,
        "name": "Monstera",
        "species": "Monstera adansonii",
        "best_climate": "Cool and wet climate",
        "water_frequency": "Once a week",
        "no_in_stock": 77,
        "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
        "created_at": "2022-09-12T07:13:13.564Z",
        "updated_at": "2022-09-12T08:01:57.629Z",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "buyer": {
                    "id": 62,
                    "name": "Augustine Aufderhar",
                    "contact": 2808038018,
                    "feedback": "Ad culpa quas nisi."
                }
            }
        ]
    }
 ```
 5) DELETE /plants/:id
 Example: `curl -X DELETE http://127.0.0.1:9292/plants/49`
 
 Required arguements: None
 
 Returns: The deleted plant.
 
 Expected response:
 ```
{
        "id": 49,
        "name": "Monstera",
        "species": "Monstera adansonii",
        "best_climate": "Cool and wet climate",
        "water_frequency": "Once a week",
        "no_in_stock": 77,
        "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
        "created_at": "2022-09-12T07:13:13.564Z",
        "updated_at": "2022-09-12T08:01:57.629Z",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "buyer": {
                    "id": 62,
                    "name": "Augustine Aufderhar",
                    "contact": 2808038018,
                    "feedback": "Ad culpa quas nisi."
                }
            }
        ]
    }
 ```
 
 6) GET /buyers
 Example: `curl http://127.0.0.1:9292/buyers`
 
 Required arguements: None
 
 Returns: An array of all the buyer objects.
 
 Expected response:
 ```
[
    {
        "id": 62,
        "name": "Augustine Aufderhar",
        "contact": 2808038018,
        "feedback": "Ad culpa quas nisi.",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "plant": {
                    "id": 49,
                    "name": "Monstera",
                    "species": "Monstera adansonii",
                    "best_climate": "Cool and wet climate",
                    "water_frequency": "Once a week",
                    "no_in_stock": 89,
                    "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
                    "created_at": "2022-09-12T07:13:13.564Z",
                    "updated_at": "2022-09-12T08:01:57.629Z"
                }
            }
        ]
    },
    {
        "id": 63,
        "name": "Tomi Bogisich",
        "contact": 9369666814,
        "feedback": "Quia quia rerum qui.",
        "purchases": []
    }
]
 ```
 7) GET /buyers/:id
 Example: `curl http://127.0.0.1:9292/buyers/62`
 
 Required arguements: None
 
 Returns: An single buyer object
 
 Expected response:
 ```
    {
        "id": 62,
        "name": "Augustine Aufderhar",
        "contact": 2808038018,
        "feedback": "Ad culpa quas nisi.",
        "purchases": [
            {
                "id": 87,
                "plant_id": 49,
                "buyer_id": 62,
                "cost": 2359,
                "plant": {
                    "id": 49,
                    "name": "Monstera",
                    "species": "Monstera adansonii",
                    "best_climate": "Cool and wet climate",
                    "water_frequency": "Once a week",
                    "no_in_stock": 89,
                    "image": "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg",
                    "created_at": "2022-09-12T07:13:13.564Z",
                    "updated_at": "2022-09-12T08:01:57.629Z"
                }
            }
        ]
    }
 ```
 
 ## Deployment
 The app is deployed on heroku.
 Follow the steps on [this blog](https://medium.com/@isphinxs/deploying-a-sinatra-app-to-heroku-7944b024f77c) to deploy the app to heroku.
 
 ## Authors
  Richard Gichuki. [Find me here](https://github.com/ChadGichuki)
  
  Flatiron Curriculum team (starter code)
  
 ## Acknowledgements
  My Moringa School TMs: Grace Umutesi, Anita Kahenya & Silas Silikhe.

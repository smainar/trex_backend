# README

## Setup

In your terminal run:
1. `$ git clone git@github.com:smainar/trex_backend.git`
1. `bundle`
1. `$ rails db:create,migrate,seed`


## GraphQL 

### User 

#### Request
```json
{
  user(id: 1) {
    name
    email
    trips {
      name
      startDate
      endDate
    }
  }
}

```
#### Response

```json 
{
  "data": {
    "user": {
      "name": "Penelope Conn",
      "email": "cordelia_mraz@smithambeier.net",
      "trips": [
        {
          "name": "Honduras",
          "startDate": "2018-10-23",
          "endDate": "2020-04-21"
        },
        {
          "name": "Indonesia",
          "startDate": "2019-03-24",
          "endDate": "2020-01-20"
        },
        {
          "name": "Mayotte",
          "startDate": "2019-01-01",
          "endDate": "2019-10-24"
        },
        {
          "name": "Sierra Leone",
          "startDate": "2019-08-10",
          "endDate": "2020-05-15"
        },
        {
          "name": "Colombia",
          "startDate": "2019-07-04",
          "endDate": "2020-07-11"
        },
        {
          "name": "Malaysia",
          "startDate": "2019-03-22",
          "endDate": "2019-12-24"
        }
      ]
    }
  }
}
```

### Trip

### Legs/Locations/Itinerary


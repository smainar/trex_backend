# README

## Setup 

### Install Rails

https://gorails.com/setup/osx/10.14-mojave

### Clone Project and Bundle Gems

In your terminal run:
1. `$ git clone git@github.com:smainar/trex_backend.git`
1. CD into the project directory
1. `bundle`

### Create the Database

1. `$ rails db:create`
1. `$ rails db:migrate`
1. `$ rails db:seed`

## GraphQL Queries

### Users

#### Request

```
{
  users {
    name
    email
  }
}
```

#### Response

```
{
  "data": {
    "users": [
      {
        "name": "Willene Von",
        "email": "willian.gottlieb@wisozk.name"
      },
      {
        "name": "Ms. Cathleen Schulist",
        "email": "travis.jones@schroeder.org"
      },
      {
        "name": "Teresita Beier I",
        "email": "shamika.champlin@collins.org"
      },
      {
    ]
  }
}
```


### User & User's Trips

#### Request

```
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

```
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

### Trip & Trip's Legs
#### Request

```
{
  trip(id: 1) {
    name
    startDate
    endDate
  }
  legs {
    name
    startDate
    endDate
  }
}
```
#### Response
```
{
  "data": {
    "trip": {
      "name": "Lesotho",
      "startDate": "2019-05-29",
      "endDate": "2019-12-11"
    },
    "legs": [
      {
        "name": "Malta",
        "startDate": "2019-06-27",
        "endDate": "2020-09-09"
      },
      {
        "name": "Guyana",
        "startDate": "2019-10-19",
        "endDate": "2020-08-11"
      },
      {
        "name": "Grenada",
        "startDate": "2019-01-12",
        "endDate": "2020-04-23"
      },
      {
        "name": "French Guiana",
        "startDate": "2019-09-28",
        "endDate": "2019-12-10"
      },
      {
        "name": "Burundi",
        "startDate": "2019-04-13",
        "endDate": "2019-12-31"
      },
      {
        "name": "Czech Republic",
        "startDate": "2019-01-01",
        "endDate": "2020-03-10"
      },
      {
        "name": "Comoros",
        "startDate": "2018-12-16",
        "endDate": "2020-02-27"
      },
      {
        "name": "Nigeria",
        "startDate": "2019-07-15",
        "endDate": "2020-06-29"
      },
      {
        "name": "Saint Kitts and Nevis",
        "startDate": "2019-07-16",
        "endDate": "2020-02-22"
      }
    ]
  }
}
```
### Leg & Leg Destinations

#### Request

```
{
  leg(id: 1) {
    destinations {
      name

    }
  }
}
```
#### Response
```
{
  "data": {
    "leg": {
      "destinations": [
        {
          "name": "North Sharieton"
        },
        {
          "name": "Hannahmouth"
        },
        {
          "name": "West Carlo"
        }
      ]
    }
  }
}
```

## GraphQL Mutations

### Create Trip

#### Request
```
mutation {
  createTrip(input: {name: "Austraila", userId: 1, startDate: "Nov 11th", endDate: "Dec 1st"}) {
    trip {
      name
      startDate
      endDate
    }
  }
}
```

#### Response
```
{
  "data": {
    "createTrip": {
      "trip": {
        "name": "Austraila",
        "startDate": "Nov 11th",
        "endDate": "Dec 1st"
      }
    }
  }
}
```

### Update Trip

#### Request

```
mutation {
  updateTrip(input: {id: 1, name: "Mexico City" startDate: "Nov 11th", endDate: "Dec 1st"}) {
    trip {
      name
    }
  }
}

```

#### Response
```
{
  "data": {
    "updateTrip": {
      "trip": {
        "name": "Mexico City"
      }
    }
  }
}
```

### Remove Trip
#### Request

```
mutation {
  removeTrip(input: {id: 3}) {
    trip {
      name
    }
  }
}
```
#### Response
```
{
  "data": {
    "removeTrip": {
      "trip": {
        "name": "Bosnia and Herzegovina"
      }
    }
  }
}
```


### Create Leg
#### Request
```
mutation {
  createLeg(input: {name: "Spain", startDate: "10/30/19", endDate: "11/12/19", startLocation: "New York", endLocation:"Oslo", tripId: 1}) {
    leg {
      name
      startDate
      endDate
    }
  }
}
```

#### Response

```
{
  "data": {
    "createLeg": {
      "leg": {
        "name": "Spain",
        "startDate": "10/30/19",
        "endDate": "11/12/19"
      }
    }
  }
}
```

### Update Leg

#### Request
```
mutation {
  updateLeg(input: {id: 1, name: "Mexico City", startDate: "Nov 11th", endDate: "Dec 1st", tripId:2}) {
    leg {
      name
      startDate
      endDate
      tripId
    }
  }
}
```

### Response

```
{
  "data": {
    "updateLeg": {
      "leg": {
        "name": "Mexico City",
        "startDate": "Nov 11th",
        "endDate": "Dec 1st",
        "tripId": 2
      }
    }
  }
}
```

### Remove Leg
#### Request
```
mutation {
  removeLeg(input: {id: 1}) {
    leg {
      name
    }
  }
}
```

#### Response

```
{
  "data": {
    "removeLeg": {
      "leg": {
        "name": "Rwanda"
      }
    }
  }
}
```

### Create Destination

#### Request

```
mutation {
  createDestination(input: {name: "Oslo", legId: 1}) {
    destination {
      name
    }
  }
}
```

#### Response

```
{
  "data": {
    "createDestination": {
      "destination": {
        "name": "Oslo"
      }
    }
  }
}
```


###  Update Destination
#### Request
```
mutation {
  updateDestination(input: {id:1, name: "Oslo", legId: 1}) {
    destination {
      name
    }
  }
}
```
#### Response

```
{
  "data": {
    "updateDestination": {
      "destination": {
        "name": "Oslo"
      }
    }
  }
}
```

### Remove Destination

#### Request
```
mutation {
  removeDestination(input: {id: 6}) {
    destination {
      name
    }
  }
}
```
#### Response
```
{
  "data": {
    "destination": {
      "name": "Colliermouth"
    }
  }
}
```

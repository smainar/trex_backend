a# Trex Back-End

## Setup

### Install Rails

If you do not have rails installed follow the installations instructions in the link below

- https://gorails.com/setup/osx/10.14-mojave

### Clone Project and Bundle Gems
Navigate to the directory that you would like to store the project in and clone the repo down.

In your terminal run:
1. `$ git clone git@github.com:smainar/trex_backend.git`
1. CD into the project directory
1. `bundle`

### Create the Database
To setup the database on your local machine run the following commands in order:

1. `$ rails db:create`
1. `$ rails db:migrate`
1. `$ rails db:seed`

## GraphQL Queries

Query the database for resources and data that <i> belongs_to </i>  a resource.  Below are example queries, the request can be edited to return all attributes or only the attributes that you need from a given resource .  

### Users
Returns all users in the database

#### Request:

```graphql
{
  users {
    name
    email
  }
}
```

#### Response:

```json
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
      }
    ]
  }
}
```


### User & User's Trips
Returns a single User(determined by id) and the user's associated trips

#### Request:

```graphql
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

#### Response:

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

### Trip & Trip's Legs
Returns a single trip(by id passed in), and the associated legs

#### Request

```graphql
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

```json
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
Returns single leg based on the ID passed in, and the associated destinations

#### Request

```graphql
{
  leg(id: 1) {
    destinations {
      name

    }
  }
}
```

#### Response

```json
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

### User & User's Notifications
Returns all the notifications for a single user by passing in the user's ID

#### Request

```graphql
{
  user(id: 1) {
    id
    name
    email
  }
  notifications {
    id
    active
    userId
  }
}
```

#### Response

```json
{
  "data": {
    "user": {
      "id": "1",
      "name": "Michal Bauch",
      "email": "lecia@schamberger.biz"
    },
    "notifications": [
      {
        "id": "1",
        "active": true,
        "userId": 1
      },
      {
        "id": "2",
        "active": true,
        "userId": 1
      },
      {
        "id": "3",
        "active": true,
        "userId": 1
      }
    ]
  }
}
```

### Legs & Leg Transportations
Returns single leg based on the ID passed in, and associated transportations

#### Request

```graphql
{
  leg(id: 1) {
    id
    name
    startDate
    endDate
    tripId
  }
  transportations {
    id
    mode
    departureTime
    departureCity
    arrivalTime
    arrivalCity
  }
}
```

#### Response

```json
{
  "data": {
    "leg": {
      "id": "1",
      "name": "Tuvalu",
      "startDate": "2019-07-15",
      "endDate": "2019-11-18",
      "tripId": 1
    },
    "transportations": [
      {
        "id": "1",
        "mode": "flight",
        "departureTime": "2020-09-19 03:56:51 -0600",
        "departureCity": "Sonfurt",
        "arrivalTime": "2019-07-20 06:53:13 -0600",
        "arrivalCity": "South Yvone"
      },
      {
        "id": "2",
        "mode": "flight",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "departureCity": "Conradville",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
        "arrivalCity": "Lake Felix"
      },
      {
        "id": "3",
        "mode": "flight",
        "departureTime": "2019-12-14 23:59:54 -0700",
        "departureCity": "New Buster",
        "arrivalTime": "2019-01-17 04:08:12 -0700",
        "arrivalCity": "Port Billfurt"
      }
    ]
  }
}
```

### Destination & Destination Lodgings
Returns single destination based on the ID passed in, and the associated lodgings

#### Request

```graphql
{
  leg(id: 1) {
    destinations {
      name
    }
  }
}
```

#### Response

```json
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

Mutations include any action that makes a change to the database, a mutation could be creating, deleting or updating a record.

### Create Trip
Creates a new trip, you must pass in the user_id that is associated with the trip

Required Fields
- name
- startDate
- endDate
- userId

#### Request
```graphql
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
```json
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

Changes the attributes of a trip. You can change one or all of the attributes.

Required Fields
- id

#### Request

```graphql
mutation {
  updateTrip(input: {id: 1, name: "Mexico City" startDate: "Nov 11th", endDate: "Dec 1st"}) {
    trip {
      name
    }
  }
}

```

#### Response
```json
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
Deletes a trip from the DB. A delete action will delete all legs associated with the trip and all destinations associated with those legs

Required Fields

- id

#### Request

```graphql
mutation {
  removeTrip(input: {id: 3}) {
    trip {
      name
    }
  }
}
```
#### Response
```json
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

Required Fields
- name
- startDate
- endDate
- startLocation
- endLocation
- tripId

#### Request
```graphql
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

```json
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

Required Fields
- id

#### Request
```graphql
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

```json
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

Deletes a leg from the DB. A delete action will delete all destinations associated with the leg.

Required Fields
- id

#### Request
```graphql
mutation {
  removeLeg(input: {id: 1}) {
    leg {
      name
    }
  }
}
```

#### Response

```json
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

```graphql
mutation {
  createDestination(input: {name: "Oslo", legId: 1}) {
    destination {
      name
    }
  }
}
```

#### Response

```json
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
```graphql
mutation {
  updateDestination(input: {id:1, name: "Oslo", legId: 1}) {
    destination {
      name
    }
  }
}
```
#### Response

```json
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
```graphql
mutation {
  removeDestination(input: {id: 6}) {
    destination {
      name
    }
  }
}
```
#### Response
```json
{
  "data": {
    "destination": {
      "name": "Colliermouth"
    }
  }
}
```


### Create Lodging

Required Fields
- name
- arrivalDate
- departureDate
- city
- destinationId

#### Request
```graphql
mutation {
  createLodging(
    input: {
      name: "Queen Anne Hotel",
      arrivalDate: "2019-10-20",
      departureDate: "2019-10-11",
      city: "San Francisco",
      destinationId: 2
    })
  {
    lodging {
    	name
      arrivalDate
      departureDate
      city
      destinationId
     }
   }
}
```

#### Response

```json
{
  "data": {
    "createLodging": {
      "lodging": {
        "name": "Queen Anne Hotel",
        "arrivalDate": "2019-10-20",
        "departureDate": "2019-10-11",
        "city": "San Francisco",
        "destinationId": 2
      }
    }
  }
}
```

### Update Lodging

Required Fields
- id
- name
- arrivalDate
- departureDate
- city
- destinationId

#### Request
```graphql
mutation {
  updateLodging(
    input: {
      id: 3,
    	name: "Marriott",
      arrivalDate: "2018-11-17",
      departureDate: "2020-08-15",
      city: "Alfredmouth",
      destinationId: 1
    })
  {
    lodging {
      name
    	arrivalDate
    	departureDate
    	city
      destinationId
    }
  }
}
```

### Response

```json
{
  "data": {
    "updateLodging": {
      "lodging": {
        "name": "Marriott",
        "arrivalDate": "2018-11-17",
        "departureDate": "2020-08-15",
        "city": "Alfredmouth",
        "destinationId": 1
      }
    }
  }
}
```

### Remove Lodging

Deletes a lodging from the DB.

Required Fields
- id

#### Request
```graphql
mutation {
  removeLodging(input: {id: 8}) {
    lodging {
      name
      arrivalDate
      departureDate
      city
      destinationId
    }
  }
}
```

#### Response

```json
{
  "data": {
    "removeLodging": {
      "lodging": {
        "name": "Bruen, Purdy and Witting",
        "arrivalDate": "2019-01-23",
        "departureDate": "2020-02-06",
        "city": "Chancemouth",
        "destinationId": 1
      }
    }
  }
}
```


### Create Transportation

Required Fields
- mode
- arrivalTime
- departureTime
- arrivalCity
- departureCity
- legId

#### Request
```graphql
mutation {
  createTransportation(
    input: {
      mode: "bus",
      arrivalTime: "2019-04-02 04:08:33 -0600",
      departureTime: "2020-01-13 16:01:26 -0700",
      arrivalCity: "San Juan",
      departureCity: "Hollywood",
      legId: 1
    })
  {
    transportation {
    	mode
    	departureTime
    	departureCity
    	arrivalTime
    	arrivalCity
    	legId
     }
   }
}
```

#### Response

```json
{
  "data": {
    "createTransportation": {
      "transportation": {
        "mode": "bus",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "departureCity": "Hollywood",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
        "arrivalCity": "San Juan",
        "legId": 1
      }
    }
  }
}
```

### Update Transportation

Required Fields
- id
- mode
- arrivalTime
- departureTime
- arrivalCity
- departureCity
- legId

#### Request
```graphql
mutation {
  updateTransportation(
    input: {
      id: 3,
      mode: "bus",
      arrivalTime: "2019-04-02 04:08:33 -0600",
      departureTime: "2020-01-13 16:01:26 -0700",
      arrivalCity: "Mars",
      departureCity: "Earth",
      legId: 1
    })
  {
    transportation {
      id
    	mode
    	departureTime
    	departureCity
    	arrivalTime
    	arrivalCity
    	legId
     }
   }
}
```

### Response

```json
{
  "data": {
    "updateTransportation": {
      "transportation": {
        "id": "3",
        "mode": "bus",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "departureCity": "Earth",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
        "arrivalCity": "Mars",
        "legId": 1
      }
    }
  }
}
```

### Remove Transportation

Deletes a transportation from the DB.

Required Fields
- id

#### Request
```graphql
mutation {
  removeTransportation(
    input: {
      id: 3,
    })
  {
    transportation {
      id
    	mode
    	departureTime
    	departureCity
    	arrivalTime
    	arrivalCity
    	legId
     }
   }
}
```

#### Response

```json
{
  "data": {
    "removeTransportation": {
      "transportation": {
        "id": "3",
        "mode": "bus",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "departureCity": "Earth",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
        "arrivalCity": "Mars",
        "legId": 1
      }
    }
  }
}
```

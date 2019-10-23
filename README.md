
### Create Leg

Required Fields
- name
- startDate
- endDate
- startLocation
- endLocation
- tripId

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

Required Fields
- id

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

Deletes a leg from the DB. A delete action will delete all destinations associated with the deleted leg.

Required Fields
- id

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

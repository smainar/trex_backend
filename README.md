# Trex Back-End

## Table of Contents
- [Setup](#setup)
- [GraphQL Queries](#graphql-queries)
  - [All Travel Advisories](#all-travel-advisories)
  - [Users](#users) 
  - [User and User's Followers](#user-and-users-followers)
  - [User and User's Notifications](#user-and-users-notifications)
  - [User and User's Trips](#user-and-users-trips)
  - [Trip and Trip's Legs](#trip-and-trips-legs)
  - [Leg and Leg Destinations](#leg-and-leg-destinations)
  - [User and User's Notificatons](#user-and-users-notifications)
  - [Leg and Leg Transportations](#leg-and-leg-transportations)
  - [Leg and Leg Lodgings](#leg-and-leg-lodgings)
- [GraphQL Mutations](#graphql-mutations)
  - Trip:
    - [Create Trip](#create-trip)
    - [Update Trip](#update-trip)
    - [Remove Trip](#remove-trip)
  - Leg:
    - [Create Leg](#create-leg)
    - [Update Leg](#update-leg)
    - [Remove Leg](#remove-leg)
  - Destination:
    - [Create Destination](#create-destination)
    - [Update Destination](#update-destination)
    - [Remove Destination](#remove-destination)
  - Lodging:
    - [Create Lodging](#create-lodging)
    - [Update Lodging](#update-lodging)
    - [Remove Lodging](#remove-lodging)
  - Transportation:
    - [Create Transporation](#create-transporation)
    - [Update Transportation](#update-transporation)
    - [Remove Transportation](#remove-transporation)
  - Notification:
    - [Create Notification](#create-notification)
    - [Update Notification](#update-notification)
    - [Remove Notification](#remove-notification)
  - Follower:
    - [Create Follower](#create-follower)
    - [Remove Follower](#remove-follower)

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

Query the database for resources and data that <i> belongs_to </i> a resource. Below are example queries, the request can be edited to return all attributes or only the attributes that you need from a given resource.  

### Country Information

```graphql
{
  countriesInfo {
    id
    hasAdvisoryWarning
    passportInfo
    visaInfo
    vaccineInfo
    transitInfo
    healthInfo
  }
}
```

```json
{
  "data": {
    "countriesInfo": [
      {
        "id": "1",
        "hasAdvisoryWarning": false,
        "passportInfo": "Entry requirements vary depending on the type of passport you use for travel.Before you travel, check with your transportation company about passport requirements. Its rules on passport validity may be more stringent than the country’s entry rules.Your passport must be valid for at least 3 months beyond the date you expect to leave the Schengen area.Different entry rules may apply.Official travelDifferent entry rules may apply when travelling with a temporary passport or an emergency travel document. Before you leave, check with the closest diplomatic mission for your destination.",
        "visaInfo": "The French government has reintroduced domestic border controls at certain border crossings. Canadians may be required to pass through controls when entering France, even if arriving from another Schengen area country.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Good medical care is widely available in France. You may be required to pay in advance, especially if you do not have travel insurance.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "2",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not requiredBusiness visa: RequiredStudent visa: RequiredIf you’re entering the UAE as a tourist, you must obtain an entry stamp at the port of entry. This entry stamp is free and valid for 30 days. It’s renewable for a further 30 days.",
        "visaInfo": "If you’re planning to work or reside in the UAE, you must undergo medical tests, including a test for human immunodeficiency virus (HIV) infection. If you’re found to be HIV-positive, you may subject to deportation. Emirati authorities don’t recognize foreign-issued HIV certificates. Positive tests for other communicable diseases may result in quarantine, treatment or deportation.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlines\"}",
        "healthInfo": "Adequate health care is available in large cities, including private clinics. Immediate payment is usually necessary at the time of treatment. Certain prescriptions are available from local doctors.Medical evacuation can be very expensive. You may need it in case of serious illness or injury. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "3",
        "hasAdvisoryWarning": true,
        "passportInfo": "You must obtain a visa to visit Afghanistan.Tourist visa: RequiredBusiness visa: RequiredStudent visa: RequiredIf your emergency contingency plan involves a possible evacuation to a third country by air or road, be sure to maintain a valid visa for that country.",
        "visaInfo": "Afghan authorities fingerprint all foreigners upon arrival in Afghanistan. You must also register with a representative of the Ministry of Interior’s Foreigners’ Registration Office. This can be done at Hamid Karzai International Airport in Kabul or the Ministry of Interior’s Kabul Statistics Office, located at Kart-e-Parwan Square.You must surrender your registration card when departing Afghanistan.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlinesConfirm your flight with your airline before flying to Afghanistan, as Afghan airports can close on short notice. For this same reason, if you’re departing from Afghanistan, contact your airline to confirm your flight.\"}",
        "healthInfo": "Health care is inadequate. It may be completely unavailable in rural areas. Where available, health-care facilities are not appropriately sanitized. Patients requiring medical treatment for incisions or wounds run a significant risk of infection. Private clinics are available in Kabul. These clinics offer a higher standard of service. Immediate cash payment is required for any medical service.Medical evacuation can be very expensive and you may need it in case of serious illness or injury. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays. However, medical evacuation is rarely possible due to a lack of companies willing to service Afghanistan. Evacuation on military flights is impossible.Prescription medications are not available. Bring a sufficient supply of medications for the duration of your stay.Travel health and safety "
      },
      {
        "id": "4",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not requiredBusiness visa: RequiredStudent visa: RequiredIf you’re entering the UAE as a tourist, you must obtain an entry stamp at the port of entry. This entry stamp is free and valid for 30 days. It’s renewable for a further 30 days.",
        "visaInfo": "If you’re planning to work or reside in the UAE, you must undergo medical tests, including a test for human immunodeficiency virus (HIV) infection. If you’re found to be HIV-positive, you may subject to deportation. Emirati authorities don’t recognize foreign-issued HIV certificates. Positive tests for other communicable diseases may result in quarantine, treatment or deportation.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlines\"}",
        "healthInfo": "Adequate health care is available in large cities, including private clinics. Immediate payment is usually necessary at the time of treatment. Certain prescriptions are available from local doctors.Medical evacuation can be very expensive. You may need it in case of serious illness or injury. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "5",
        "hasAdvisoryWarning": true,
        "passportInfo": "You must obtain a visa to visit Afghanistan.Tourist visa: RequiredBusiness visa: RequiredStudent visa: RequiredIf your emergency contingency plan involves a possible evacuation to a third country by air or road, be sure to maintain a valid visa for that country.",
        "visaInfo": "Afghan authorities fingerprint all foreigners upon arrival in Afghanistan. You must also register with a representative of the Ministry of Interior’s Foreigners’ Registration Office. This can be done at Hamid Karzai International Airport in Kabul or the Ministry of Interior’s Kabul Statistics Office, located at Kart-e-Parwan Square.You must surrender your registration card when departing Afghanistan.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlinesConfirm your flight with your airline before flying to Afghanistan, as Afghan airports can close on short notice. For this same reason, if you’re departing from Afghanistan, contact your airline to confirm your flight.\"}",
        "healthInfo": "Health care is inadequate. It may be completely unavailable in rural areas. Where available, health-care facilities are not appropriately sanitized. Patients requiring medical treatment for incisions or wounds run a significant risk of infection. Private clinics are available in Kabul. These clinics offer a higher standard of service. Immediate cash payment is required for any medical service.Medical evacuation can be very expensive and you may need it in case of serious illness or injury. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays. However, medical evacuation is rarely possible due to a lack of companies willing to service Afghanistan. Evacuation on military flights is impossible.Prescription medications are not available. Bring a sufficient supply of medications for the duration of your stay.Travel health and safety "
      },
      {
        "id": "6",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not requiredBusiness visa: not requiredStudent permit: required",
        "visaInfo": "Customs officials may ask you to show them a return or onward ticket and proof of sufficient funds to cover your stay. ",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Heath care services are adequate in Antigua but extremely limited in Barbuda.There is no decompression chamber available on the islands to treat diving-related injuries. Cases are referred to Guadeloupe or Saba.Clinics and hospitals may expect immediate cash payment for medical services.You will likely need medical evacuation in case of serious illness or injury.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "7",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not requiredBusiness visa: not requiredStudent visa: not required",
        "visaInfo": "Customs officials may ask you to show them a return or onward ticket.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Health care is adequate but may be limited.You will likely need medical evacuation in case of serious illness or injury.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "8",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not required for stays up to 90 days per six-month periodBusiness visa: not required for stays up to 90 days per six-month periodStudent visa: not required for stays up to 90 days per six-month periodIf you wish to stay or work in Albania for more than 90 days, you must apply for a resident permit (leje qëndrimi) or a work permit (leje pune).",
        "visaInfo": "The Albanian government may consider children born to an Albanian parent to be Albanian citizens even if they were born in Canada and have a Canadian passport. Children under the age of 18 are only allowed to leave Albania with both parents, or with the consent of both parents. The absent parent(s) must provide a statement of parental consent to travel, notarized by Albanian authorities, to be presented upon exiting Albania.Parents of children travelling alone or with one parent are strongly encouraged toContact the Embassy of the Republic of Albania in Canada before departure to ensure that the entry and exit requirements are met if your child plan travelling alone or with one parent only.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Demonstrations\", :description=>\"Demonstrations take place from time to time.Even peaceful demonstrations can turn violent at any time. They can also lead to disruptions to traffic and public transportation.More about mass gatherings (large-scale events)\"}",
        "healthInfo": "Good health care is limited in availability. Quality of care varies greatly throughout the country.Access to medical equipment, pharmaceuticals, and specialists is limited.  It is best to avoid government hospitals, which often lack basic drugs and equipment and have poor hygiene standards.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "9",
        "hasAdvisoryWarning": false,
        "passportInfo": "Canadians must have a visa to visit Armenia.Transit visa: Required for stays up to three daysVisitor visa (tourism and business travel): Required for stays up to 120 daysThere are 3 ways of obtaining a visa:Apply for an e-visa - Armenia’s Ministry of Foreign Affairs",
        "visaInfo": "Learn about potential entry requirements related to yellow fever (vaccines section).",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Modern medical services and facilities are available in Yerevan. Outside Yerevan, facilities are limited and may not offer the level of care you may be used to in Canada.Serious medical cases may require evacuation to a country equipped with adequate facilities.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "10",
        "hasAdvisoryWarning": false,
        "passportInfo": "You must be in possession of a visa and an onward or return ticket to enter Angola.To obtain a visa, you must first get a Canadian criminal clearance certificate, which can only be obtained while in Canada from your local police or the RCMP, before travelling. The police clearance must be submitted, along with your visa application, in both English and a Portuguese translation, which must be notarized.The length of stay on your tourist visa may not exceed 30 days, but the visa can be renewed once, for a maximum of 30 days.Angolan visas take an entire page in your passport and are preferably followed by one blank page. Ensure you have enough pages remaining in your passport, as additional pages cannot be added to a passport and issuing a new passport may take several weeks. While in Angola with family members, including children, ensure that their documentation is up-to-date at all times.Airport and road check procedures have been reinforced. Any issue relating to documentation or identification, including visas and vaccination cards, can lead to delays or denial of entry. Ensure that you have obtained the appropriate visa before arriving in Angola. You cannot obtain a visa at the airport.If you arrive in Angola without the required visa, you could face arrest and/or deportation. Travellers who overstay their visa are subject to heavy fines and possible arrest.Tourist visa: RequiredBusiness visa: RequiredStudent visa: RequiredEmployment visa: RequiredTransit visa: Required",
        "visaInfo": "Learn about potential entry requirements related to yellow fever (vaccines section).",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Road safety\", :description=>\"Roads, particularly secondary and tertiary roads, and bridges are generally in poor condition.Incidents of drivers under the influence of alcohol are common, especially on weekends. The return trip to Luanda from beach outings can be particularly hazardous due to reckless driving habits. Be extremely careful of unexpected hazards on the road, such as pedestrians and animals.Always drive with the doors locked and the windows rolled up. Keep your valuables out of sight.Only undertake overland travel outside of urban centres in convoys of at least two vehicles, ideally four-wheel drive vehicles.\"}",
        "healthInfo": "Medical treatment is very expensive, and payment in advance is required. Medical facilities are very poor throughout the country, including in Luanda.Many doctors and medical staff do not speak English or French, including in Luanda; they speak Portuguese.Serious medical emergencies should be treated outside the country.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "11",
        "hasAdvisoryWarning": false,
        "passportInfo": "Travellers on Canadian expeditions, Canadian vessels and those operating Canadian aircraft need a permit to be in the Antarctic, except when granted permission from another party to the Madrid Protocol (which protects the Antarctic’s environment) or in the case of an emergency. There is no fee associated with processing a permit to travel to the Antarctic.Antarctic Environmental Protection Act: permits – Government of Canada",
        "visaInfo": "Learn about travel with children.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "There are no organized nor stand-by search and rescue or emergency evacuation facilities in Antarctica. In case of emergency, you will be responsible for the costs of your search, rescue and evacuation.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "12",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not requiredBusiness visa: Not required Student visa: Required",
        "visaInfo": "Upon entry into and exit from Argentina, all passengers, regardless of their citizenship, are submitted to biometrics checks, such as digital fingerprints and a digital photograph, at the immigration counter.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Demonstrations\", :description=>\"Demonstrations, roadblocks and strikes may occur throughout the country at any time.Even peaceful demonstrations can turn violent at any time. They can also lead to disruptions to traffic and public transportation.More about mass gatherings (large-scale events)\"}",
        "healthInfo": "Medical facilities are good in Buenos Aires but limited elsewhere. Certain medications may not be available.Hospital physicians often expect immediate cash payment for medical care, so ensure you have access to sufficient funds. Contact your insurance company promptly if you are referred to a medical facility for treatment.See Travel Insurance for more information."
      },
      {
        "id": "13",
        "hasAdvisoryWarning": false,
        "passportInfo": "Learn about potential entry requirements related to yellow fever (vaccines section).",
        "visaInfo": "Learn about travel with children. ",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Medical facilities are limited. Health-care facilities are adequate for routine treatments, but limited in range and availability. Immediate cash payment for health services is expected. Pack a travel health kit, especially if you’ll be travelling away from major city centres.There is a hyperbaric (decompression) chamber available at the LBJ Tropical Medical Center (Tel.: +1 684 633 1222) in Fagaalu on the island of Tutuila.Medical evacuation can be very expensive and you may need it in case of serious illness or injury.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "14",
        "hasAdvisoryWarning": false,
        "passportInfo": "Entry requirements vary depending on the type of passport you use for travel.Before you travel, check with your transportation company about passport requirements. Its rules on passport validity may be more stringent than the country’s entry rules.Your passport must be valid for at least 3 months beyond the date you expect to leave from the Schengen area.Different entry rules may apply.Official travelDifferent entry rules may apply when travelling with a temporary passport or an emergency travel document. Before you leave, check with the closest diplomatic mission for your destination.",
        "visaInfo": "Tourist visa: Not required for stays up to 90 daysBusiness visa: Not required for stays up 90 daysWork visa: RequiredStudent visa: Required",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Mountain activities\", :description=>\"If you intend to do mountaineering or skiing:\"}",
        "healthInfo": "Healthcare is excellent. Service is available throughout the country.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "15",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: required Business visa: required Student visa: requiredCanadians must also be in possession of an electronic travel authority (ETA) to visit Australia. Ensure that you travel with the same passport used to apply for your ETA.A health examination might be necessary to obtain certain visas.",
        "visaInfo": "Learn about travel with children.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Spiked food and drinks\", :description=>\"Never leave food or drinks unattended or in the care of strangers. Be wary of accepting snacks, beverages, gum or cigarettes from new acquaintances, as they may contain drugs that could put you at risk of sexual assault and robbery.\"}",
        "healthInfo": "Health care is excellent. Service is available throughout the country.Payment is expected at time of service.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "16",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not required (for stays of up to 30 days)Business visa: not requiredWork permit: requiredStudent visa: required",
        "visaInfo": "Customs officials will ask you to show them a return or onward ticket, a proof of sufficient funds to cover your stay and a proof of health insurance to enter Aruba.You must have a completely filled-in and signed Embarkation and Disembarkation card (ED-card). It can be completed online, upon booking your travel.ED-card Aruba",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Health care is very good. Service is available throughout the country. Medical facilities are well-equipped. Hospitals offer several classes of service. Patients are accommodated according to the level of their insurance coverage and ability to pay.There is no decompression chamber on the island.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "17",
        "hasAdvisoryWarning": false,
        "passportInfo": "Canadians must be in possession of a visa to visit Azerbaijan.Tourist visa: RequiredBusiness visa: RequiredStudent visa: RequiredTransit visa: RequiredIf you plan to visit Azerbaijan, you must have a visa before arriving in the country. As a tourist, you can apply for an e-visa through Azerbaijan’s online visa portal. You should do so at least 3 days before your planned arrival date.If you require any other type of visa, you must apply for it from the Embassy of the Republic of Azerbaijan prior to departure.To obtain any type of visa, you must present a letter of invitation from a contact in Azerbaijan, such as an employer or educational institution. If you do not have a contact in Azerbaijan, the invitation letter should be submitted by the travel agency in Azerbaijan.If you plan to stay for more than 10 days, you must register with police upon arrival and ensure that your passport is stamped with a residency stamp. You may also register your stay online through the State Migration Service. Failure to register could result in a fine. You may be stopped from leaving Azerbaijan until the fine is paid.",
        "visaInfo": "You may encounter long delays or be denied entry at the Azerbaijani border if your passport contains a stamp from the disputed Nagorno–Karabakh region.It is illegal to enter Nagorno–Karabakh from Azerbaijan without permission from Azerbaijani authorities. Violations of entry and exit regulations to and from this area can result in serious penalties.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Road safety\", :description=>\"Highways and major city roads are well-maintained, but driving can still be dangerous due to poor driving standards and poorly maintained cars. Insufficient street lighting and signage make travel dangerous outside of Baku. The risk increases on certain roads that are shared with pedestrians and livestock.Authorities do not enforce traffic rules consistently.Pedestrians should exercise caution.\"}",
        "healthInfo": "Service standards are different than those in Canada. Avoid older medical clinics as they often lack basic drugs and equipment and have poor hygiene standards. Medical facilities outside Baku are very limited. Some medical clinics require upfront payment for treatment. Medical evacuation, which can be very expensive, may be necessary in the event of serious illness or injury. Make sure you have travel insurance that covers all medical expenses, including hospitalization abroad and medical evacuation, in case of illness or injury."
      },
      {
        "id": "18",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not required for stays up to 90 daysBusiness visa: Not required for stays up to 90 daysStudent visa: Not required for stays up to 90 days",
        "visaInfo": "If you plan to visit for 3 or more days, you must register with local police within 48 hours of your arrival in the country.If you’re staying in a hotel, the staff will register you. If not, you can find the registration form on the Ministry of Security’s Service for Foreigners’ Affairs website.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlines\"}",
        "healthInfo": "Good medical services and facilities are available, but service could be limited outside of major cities. Private clinics are available. Immediate payment is required. Make sure you have travel insurance that covers all medical expenses, including hospitalization abroad and medical evacuation, in case of illness or injury."
      },
      {
        "id": "19",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not required Business visa: not requiredWork visa: requiredStudent visa: required",
        "visaInfo": "The length of stay for tourists—up to a maximum of 6 months—is determined by immigration officers.They also determine if a work permit is required of business travellers.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Air travel\", :description=>\"We do not make assessments on the compliance of foreign domestic airlines with international safety standards.General information about foreign domestic airlines\"}",
        "healthInfo": "Medical facilities in Barbados are adequate. There is one public hospital, the Queen Elizabeth Hospital, one private hospital, the Bayview Hospital, and several private clinics across the island.A hyperbaric chamber is located at the Barbados Defence Force base on Needham’s Point.Some clinics and hospitals may expect immediate cash payment for medical services.Police and ambulance response can be slow.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "20",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: required (for stays up to 30 days)Business visa: required (for stays up to 30 days)Student visa: RequiredYou should obtain a visa before travelling to Bangladesh. While you can apply for single-entry tourist and business visas upon arrival at the airport in Bangladesh, there is a risk of being denied entry into the country.",
        "visaInfo": "You must carry all documents pertaining to the purpose of your visit and declare funds in excess of US$5000. Be prepared to show proof of both onward travel and sufficient funds for your stay.If you are travelling for business, you must also produce:",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Attacks on minorities\", :description=>\"Extremists have targeted religious minorities including Hindus, Buddhist and Christians, as well as secular writers, including some foreigners.\"}",
        "healthInfo": "Health care is inadequate. Patients with serious conditions often require medical evacuations to Singapore or Thailand. Doctors and hospitals may expect immediate cash payment for health services.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "21",
        "hasAdvisoryWarning": false,
        "passportInfo": "Entry requirements vary depending on the type of passport you use for travel.Before you travel, check with your transportation company about passport requirements. Its rules on passport validity may be more stringent than the country’s entry rules.Your passport must be valid for at least 3 months beyond the date you expect to leave the Schengen area.Different entry rules may apply.Official travelDifferent entry rules may apply when travelling with a temporary passport or an emergency travel document. Before you leave, check with the closest diplomatic mission for your destination.",
        "visaInfo": "The Belgian government may reintroduce internal border controls at short notice and Canadians may be required to pass through immigration controls when entering Belgium, even if arriving from another Schengen area country.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Health care is excellent in Belgium. The responsiveness of emergency services is generally very good. If you are referred to a medical facility for treatment you should inform your insurance/medical assistance company immediately.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "22",
        "hasAdvisoryWarning": true,
        "passportInfo": "You must have a visa.Tourist visa: RequiredBusiness visa: RequiredStudent visa: Required",
        "visaInfo": "Learn about travel with children.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Crime \", :description=>\"Petty crime, such as pickpocketing and purse snatching, occurs in major cities. In Ouagadougou, the areas around the United Nations roundabout and Central Market are often targeted by thieves. Petty crime occurs to a lesser degree elsewhere in the country.\"}",
        "healthInfo": "Medical facilities and supplies are very limited outside the capital. Clinics and doctors often request cash payment.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "29",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: required for stays of more than 14 daysBusiness visa: required for stays of more than 14 daysStudent visa: requiredIf you need a visa, you must have at least 6 blank pages in your passport.",
        "visaInfo": "You will not be allowed entry into Brunei if you have HIV/AIDS or any other communicable disease. You will be asked to complete a health declaration form upon entry.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Medical services and facilitiesMedical facilities are good, but medical evacuation to Singapore may be necessary for serious medical problems.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "23",
        "hasAdvisoryWarning": false,
        "passportInfo": "You must present proof of medical insurance (minimum €30,000 coverage) that’s valid in the European Union (EU) and covers the costs of emergency medical care and evacuation.",
        "visaInfo": "Tourist visa: Not required for stays of fewer than 90 days in any 180-day periodBusiness visa: Not required for stays of fewer than 90 days in any 180-day periodStudent visa: Not required for stays of fewer than 90 days in any 180-day periodYou must obtain a visa before travelling if you plan to stay in Bulgaria for more than 90 days. Bulgaria doesn’t grant extensions once you’re in the country, except in cases of emergency or marriage to a Bulgarian citizen.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Stray dogs\", :description=>\"Beware of stray dogs, especially those travelling in packs. They can be dangerous and could expose you to disease if they bite you.\"}",
        "healthInfo": "Health care is inadequate. Private hospitals and clinics located in cities are often better staffed and equipped than public or rural facilities. Cash payment is required at time of service.Medical evacuation can be very expensive and you may need it in case of serious illness or injury. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "24",
        "hasAdvisoryWarning": false,
        "passportInfo": "Canadians must have a visa to visit Bahrain.Tourist visa: Required Business visa: RequiredStudent visa: RequiredYou should obtain a visa from the nearest Bahraini government office prior to arrival. Tourists can also obtain their visa online from Bahrain eVisas.",
        "visaInfo": "The Government of Bahrain has implemented measures restricting the entry of Qatari citizens and foreign residents of Qatar into Bahrain. These measures should not affect Canadians travelling to or transiting through Qatar. If you are a resident of Qatar, contact diplomatic representatives of Bahrain to confirm current entry requirements.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Sea travel\", :description=>\"There is a curfew in effect on the waterways around Bahrain from 6 p.m. to 4 a.m. Vessels operating in these waters may be detained and inspected, even outside curfew hours.Exercise increased caution when travelling by dhow (small sailboat), as they may not be up to Canadian safety standards.\"}",
        "healthInfo": "Adequate medical services are available in Bahrain. Immediate payment is required."
      },
      {
        "id": "25",
        "hasAdvisoryWarning": true,
        "passportInfo": "Tourist: requiredBusiness: required",
        "visaInfo": "Due to the volatile security situation in the area, authorities could close the Burundi–Rwanda border at any time.Periodic closure of the Burundi–Democratic Republic of Congo border can occur without notice.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Crime\", :description=>\"Incidents of muggings, purse snatching and pickpocketing occur. Crime is often committed by children. Criminal activity increases at night.There is a risk of assault if you’re walking or jogging alone, particularly on roads around Lake Tanganyika. Avoid walking, driving or taking public transportation after dark anywhere in the country.Keep valuables, travel documents, and cash in safe locations, such as in hotel safes. Keep separate and digital copies of important documents, including your passport.\"}",
        "healthInfo": "Health care is inadequate. You will likely need medical evacuation in case of serious illness or injury. For medical evacuations, planes need to fly in from other countries.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "26",
        "hasAdvisoryWarning": false,
        "passportInfo": "Canadians must be in possession of a visa prior to arriving in Benin.Tourist visa: RequiredBusiness visa: RequiredStudent visa: Required",
        "visaInfo": "Learn about travel with children.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Road safety\", :description=>\"Road conditions range from fair to poor.Watch for vehicles changing lanes without warning because of broken-down vehicles and potholes in their path.There are paved roads in Cotonou and along the coast, and one leading north to Niger. Other roads are made of hard-packed sand and may become impassable during the rainy seasons.Poor driving habits, inadequate street lighting, motorcycle traffic and overloaded trucks pose additional hazards.Avoid overland travel after dark, particularly on the coastal highway, in the border regions with Nigeria and Nigeria, and on the road linking Cotonou and Parakou.In case of an accident resulting in injury, take the individual directly to the hospital. If witnesses are hostile, go immediately to the nearest police station.Fuel shortages are frequent in the rural areas of northern Benin.\"}",
        "healthInfo": "Medical facilities are adequate in Cotonou but supplies of medicine are limited throughout the country.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "27",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not required for stays up to 90 days within a six-month periodProfessional visa: RequiredStudent visa: Required",
        "visaInfo": "Customs officials may ask you to show them a return ticket.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Good quality medical services are available.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "28",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not required Business visa: Not required Student visa: Required",
        "visaInfo": "Learn about travel with children.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Medical facilities and services are good, but are expensive and limited. Medical evacuation to the United States, likely to Baltimore or Boston, may be required in the event of serious illness or injury. Make sure you have travel insurance that covers all medical expenses, including hospitalization abroad and medical evacuation.Learn more about travel health and safety."
      },
      {
        "id": "30",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not required for stays up to 30 daysBusiness visa: required Student visa: requiredIf you’re a Canadian citizen travelling to Bolivia for volunteer work, you should obtain the Visa of Determined Purpose from the Bolivian embassy or consulate in Canada prior to your trip.Foreign diplomatic missions and consulates in Canada",
        "visaInfo": "If you’re a Canadian tourist wishing to stay for more than 30 days, you must apply at the General Directorate of Migration to obtain a tourist visa for another 30 days before the end of the first 30-day period. This extension can be obtained twice, at no extra cost and to a maximum of 90 days during one calendar year.If you have overstayed the 90-day period without proper authorization, you may be fined upon departure.General Directorate of Migration - Government of Bolivia",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Women's safety\", :description=>\"Women travelling alone may be subject to some forms of harassment and verbal abuse. Sexual assaults occur periodically, including at clubs and hostels. Female travellers should be cautious when dealing with strangers and new acquaintances. Lock your room when you return to your hotel/hostel.Safe-travel guide for women\"}",
        "healthInfo": "Quality of care varies greatly throughout the country. Good health care is limited to private hospitals in larger cities. Public medical services and facilities don’t meet Canadian standards. There’s limited access to health facilities in rural areas. There’s very limited ambulance service in Bolivia.Most clinics and hospitals in Bolivia accept payment in cash only. Clinics and hospitals may refuse to allow you to leave their premises before paying for services.Medical evacuation can be very expensive. You may need it in case of serious illness or injury.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "31",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: Not required (for stays of up to 90 days in a 180-day period)Business visa: Not requiredStudent visa: Required",
        "visaInfo": "Customs officials will ask you to show them a return ticket and proof of sufficient funds for your stay. They may also ask you to show proof of a valid reservation for accommodations.More about entry requirements - Embassy of the Netherlands to Canada",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Medical care is generally good but may be limited in availability. San Francisco Hospital in Kralendijk, the capital city, is equipped to handle general surgery and emergency operations. There are a few medical clinics and one hyperbaric recompression chamber on the island. An air ambulance service is available.Medical facilities may require immediate cash payment for medical treatment.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "32",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: requiredBusiness visa: required Student visa: requiredTourist visas issued to Canadian passport holders are valid for multiple entries and usually for a 5-year period.When applying for a Brazilian entry visa, ensure the names on the Canadian passport and visa application are identical. Federal police will not accept applications with missing names or initials. This rule also applies to the names of the parents.You can obtain your visa online from Brazil eVisas.Stays are for a maximum of 90 days per visit.If you intent to stay more than 30 days, you must validate your visa at a local police station.If you intent to stay more than 90 days, you must obtain an extension from the Federal Police for a maximum stay of 180 days per year.To request a visa extension, you will have to :In order for your Canadian long form birth certificate to be accepted in Brazil, it must be presented to the Brazilian Embassy or one of its consulates prior to departure from Canada.  Neither the Embassy of Canada nor its consulates in Brazil can authenticate a Canadian birth certificate outside of Canada.",
        "visaInfo": "All Brazilian citizens must enter and leave Brazil with their Brazilian passport.Airlines may also require a valid Canadian passport for check-in and boarding procedures. You may face delays or be denied boarding by your airline if you attempt to return to Canada without a Canadian passport.",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": null,
        "healthInfo": "Good health care is only available in major cities. Quality of care varies greatly throughout the country.Private hospitals and clinics located in cities are often better staffed and equipped than public or rural facilities.Some medical facilities in the state of Rio de Janeiro have closed or are providing limited services, due to lack of funding for their operations. Private hospitals remain operational.Certain medications may not be available.Physicians and hospitals often expect immediate cash payment.Medical evacuation can be very expensive and you may need it in case of serious illness or injury.Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      },
      {
        "id": "33",
        "hasAdvisoryWarning": false,
        "passportInfo": "Tourist visa: not required for stays up to 8 monthsBusiness visa: not requiredStudent permit: required",
        "visaInfo": "Customs officials may ask you to show them a return or onward ticket.You must complete and sign an immigration card upon entry to The Bahamas. This card will be stamped by officials at the point of entry and you are required to keep the card until your departure.If travelling by private vessel, certain documentation is required for entry to The Bahamas.Department of Immigration - Government of The Bahamas",
        "vaccineInfo": "Be sure that your routine vaccines, as per your province or territory, are up-to-date regardless of your travel destination.Some of these vaccines include: measles-mumps-rubella (MMR), diphtheria, tetanus, pertussis, polio, varicella (chickenpox), influenza and others.",
        "transitInfo": "{:category=>\"Cruises\", :description=>\"Several ports in The Bahamas are cruise-ship stops.Advice for Cruise Travellers\"}",
        "healthInfo": "Medical care is good in Freeport and Nassau, but limited elsewhere.Medical expenses can be very high. It is normal for clinics to require patients to sign an undertaking-to-pay agreement and to take a credit card impression as guarantee of payment prior to providing medical care.Serious cases may be transferred to Freeport or Nassau, or to Miami, Florida, by air ambulance, especially those requiring surgery.Response times to emergency calls might be slow. Make sure you get travel insurance that includes coverage for medical evacuation and hospital stays.Travel health and safety"
      }
    ]
  }
}
```

### Response
```json
{
  "data": {
    "travelAdvisories": [
      {
        "id": "1",
        "name": "Andorra",
        "message": "Andorra has a current risk level of 1.3 (out of 5). We advise: Travelling Andorra is (relatively) safe.",
        "score": 1.3
      },
      {
        "id": "2",
        "name": "United Arab Emirates",
        "message": "United Arab Emirates has a current risk level of 2.3 (out of 5). We advise: Travelling United Arab Emirates is (relatively) safe.",
        "score": 2.3
      },
      {
        "id": "3",
        "name": "Afghanistan",
        "message": "Afghanistan has a current risk level of 5 (out of 5). We advise: It is not safe to travel Afghanistan.",
        "score": 5
      },
      {
        "id": "4",
        "name": "Antigua and Barbuda",
        "message": "Antigua and Barbuda has a current risk level of 1 (out of 5). We advise: Travelling Antigua and Barbuda is (relatively) safe.",
        "score": 1
      },
      {
        "id": "101",
        "name": "Iran",
        "message": "Iran has a current risk level of 3 (out of 5). We advise: Use some caution when travelling Iran.",
        "score": 3
      },
      {
        "id": "102",
        "name": "Iceland",
        "message": "Iceland has a current risk level of 1.5 (out of 5). We advise: Travelling Iceland is (relatively) safe.",
        "score": 1.5
      },
      {
        "id": "103",
        "name": "Italy",
        "message": "Italy has a current risk level of 1.8 (out of 5). We advise: Travelling Italy is (relatively) safe.",
        "score": 1.8
      },
      {
        "id": "104",
        "name": "Jersey",
        "message": "Jersey has a current risk level of 0 (out of 5). We advise: Travelling Jersey is (relatively) safe.",
        "score": 0
      },
      {
        "id": "105",
        "name": "Jamaica",
        "message": "Jamaica has a current risk level of 2.6 (out of 5). We advise: Use some caution when travelling Jamaica.",
        "score": 2.6
      },
      {
        "id": "106",
        "name": "Jordan",
        "message": "Jordan has a current risk level of 2.5 (out of 5). We advise: Use some caution when travelling Jordan.",
        "score": 2.5
      },
      {
        "id": "107",
        "name": "Japan",
        "message": "Japan has a current risk level of 1.8 (out of 5). We advise: Travelling Japan is (relatively) safe.",
        "score": 1.8
      },
      {
        "id": "108",
        "name": "Kenya",
        "message": "Kenya has a current risk level of 2.7 (out of 5). We advise: Use some caution when travelling Kenya.",
        "score": 2.7
      },
      {
        "id": "109",
        "name": "Kyrgyzstan",
        "message": "Kyrgyzstan has a current risk level of 2.4 (out of 5). We advise: Travelling Kyrgyzstan is (relatively) safe.",
        "score": 2.4
      },
      {
        "id": "110",
        "name": "Cambodia",
        "message": "Cambodia has a current risk level of 2 (out of 5). We advise: Travelling Cambodia is (relatively) safe.",
        "score": 2
      },
      {
        "id": "111",
        "name": "Kiribati",
        "message": "Kiribati has a current risk level of 1 (out of 5). We advise: Travelling Kiribati is (relatively) safe.",
        "score": 1
      },
      {
        "id": "112",
        "name": "Comoros",
        "message": "Comoros has a current risk level of 2.3 (out of 5). We advise: Travelling Comoros is (relatively) safe.",
        "score": 2.3
      },
      {
        "id": "113",
        "name": "Saint Kitts and Nevis",
        "message": "Saint Kitts and Nevis has a current risk level of 1 (out of 5). We advise: Travelling Saint Kitts and Nevis is (relatively) safe.",
        "score": 1
      },
      {
        "id": "114",
        "name": "North Korea",
        "message": "North Korea has a current risk level of 4.3 (out of 5). We advise: Please reconsider your need to travel to North Korea.",
        "score": 4.3
      },
      {
        "id": "115",
        "name": "South Korea",
        "message": "South Korea has a current risk level of 1.6 (out of 5). We advise: Travelling South Korea is (relatively) safe.",
        "score": 1.6
      },
      {
        "id": "116",
        "name": "Kuwait",
        "message": "Kuwait has a current risk level of 2.2 (out of 5). We advise: Travelling Kuwait is (relatively) safe.",
        "score": 2.2
      },
      {
        "id": "237",
        "name": "Zambia",
        "message": "Zambia has a current risk level of 2 (out of 5). We advise: Travelling Zambia is (relatively) safe.",
        "score": 2
      },
      {
        "id": "238",
        "name": "Zimbabwe",
        "message": "Zimbabwe has a current risk level of 2.6 (out of 5). We advise: Use some caution when travelling Zimbabwe.",
        "score": 2.6
      }
    ]
  }
}
```

### Embassies

```graphql
{
  embassies {
    id
    name
    address
    phone
    website
    lat
    long
    passportServices
  }
}
```

```json
{
  "data": {
    "embassies": [
      {
        "id": "1",
        "name": "Embassy of Canada",
        "address": "130, rue du Faubourg Saint-Honoré, 75008 Paris",
        "phone": "+33 (0)1 44 43 29 02",
        "website": "http://www.france.gc.ca",
        "lat": 48.86685,
        "long": 2.30556,
        "passportServices": true
      },
      {
        "id": "2",
        "name": "Consulate of Canada",
        "address": "3, place de la Bourse 69002 Lyon, France",
        "phone": "33 (0)9 62 56 59 01",
        "website": "",
        "lat": 45.764962,
        "long": 4.836703,
        "passportServices": false
      },
      {
        "id": "3",
        "name": "Consulate of Canada",
        "address": "10, rue Lamartine, 06000 Nice, France",
        "phone": "+33 (0)4 93-92-93-22",
        "website": "",
        "lat": 43.69973,
        "long": 7.25649,
        "passportServices": false
      },
      {
        "id": "4",
        "name": "Consulate of Canada",
        "address": "59, allées Jean-Jaurès, 31000 Toulouse, France",
        "phone": "+33 (0)5-67-31-45-53",
        "website": "",
        "lat": 48.862725,
        "long": 2.287592,
        "passportServices": false
      },
      {
        "id": "5",
        "name": "Embassy of Canada",
        "address": "Abu Dhabi Trade Towers (Abu Dhabi Mall), West Tower, 9th Floor, Abu Dhabi, United Arab Emirates",
        "phone": "971 (2) 694-0300",
        "website": "http://www.canadainternational.gc.ca/uae-eau/",
        "lat": 24.497012,
        "long": 54.382067,
        "passportServices": true
      },
      {
        "id": "6",
        "name": "Consulate General of Canada",
        "address": "19th Floor, Jumeirah Emirates Towers, Sheikh Zayed Road, Dubai, United Arab Emirates",
        "phone": "971 (4) 404-8444",
        "website": "http://www.canadainternational.gc.ca/uae-eau/",
        "lat": 25.05946,
        "long": 55.12781,
        "passportServices": true
      },
      {
        "id": "7",
        "name": "Embassy of Canada",
        "address": "Street No. 15, House No. 256, Wazir Akbar Khan, Kabul",
        "phone": "93 (0) 701 108 800",
        "website": "http://international.gc.ca/afghanistan/index.aspx?lang=eng",
        "lat": 34.53311,
        "long": 69.1835,
        "passportServices": true
      },
      {
        "id": "8",
        "name": "High Commission of Canada",
        "address": "Bishop's Court Hill, St. Michael, P.O. Box 404, Bridgetown, Barbados BB11113",
        "phone": "(246) 629-3550",
        "website": "http://www.barbados.gc.ca",
        "lat": 13.09511,
        "long": -59.59998,
        "passportServices": true
      },
      {
        "id": "9",
        "name": "High Commission of Canada",
        "address": "Bishop's Court Hill, St. Michael, P.O. Box 404, Bridgetown, Barbados BB11113",
        "phone": "(246) 629-3550",
        "website": "http://www.barbados.gc.ca",
        "lat": 13.09511,
        "long": -59.59998,
        "passportServices": true
      },
      {
        "id": "10",
        "name": "Consulate of Canada",
        "address": "Rr: Ibrahim Rugova, Tirana, Albania",
        "phone": "355 (4) 225 7274",
        "website": "",
        "lat": 41.327546,
        "long": 19.818698,
        "passportServices": false
      },
      {
        "id": "11",
        "name": "Embassy of Canada",
        "address": "Via Zara 30, Rome 00198, Italy",
        "phone": "+39 06-85444-1",
        "website": "http://www.italy.gc.ca",
        "lat": 41.91534,
        "long": 12.50891,
        "passportServices": true
      },
      {
        "id": "12",
        "name": "Consulate of Canada",
        "address": "17 Buzand Street, #229, Yerevan, 0010, Armenia",
        "phone": "374 (10) 56-79-90",
        "website": "",
        "lat": 40.176385,
        "long": 44.511173,
        "passportServices": true
      },
      {
        "id": "13",
        "name": "Embassy of Canada",
        "address": "23 Starokonyushenny Pereulok, Moscow, 119002, Russia",
        "phone": "7 (495) 925-6000",
        "website": "http://www.russia.gc.ca",
        "lat": 55.746664,
        "long": 37.595059,
        "passportServices": true
      },
      {
        "id": "14",
        "name": "Consulate of Canada",
        "address": "Rua Rei Katyavala 113, Luanda, Angola",
        "phone": "+244 222 448-371 / +244 222 448-377 / +244 222 448-8366",
        "website": "",
        "lat": -8.819391,
        "long": 13.244298,
        "passportServices": false
      },
      {
        "id": "15",
        "name": "Embassy of Canada",
        "address": "45 Baines Avenue, Harare, Zimbabwe",
        "phone": "+263 (024) 2 252 181/2/3/4/5. Note: if calling from a landline in Harare, omit the area code (e.g. dial 2 252 181)",
        "website": "http://www.zimbabwe.gc.ca",
        "lat": -17.820705,
        "long": 31.043559,
        "passportServices": true
      },
      {
        "id": "16",
        "name": "Embassy of Canada",
        "address": "Tagle 2828, C1425EEH Buenos Aires, Argentina",
        "phone": "54 (11) 4808-1000",
        "website": "http://www.argentina.gc.ca",
        "lat": -34.58005,
        "long": -58.3978,
        "passportServices": true
      },
      {
        "id": "17",
        "name": "High Commission of Australia",
        "address": "Beach Road, Apia, Samoa",
        "phone": "685 24311",
        "website": "http://www.samoa.embassy.gov.au/apia/home.html",
        "lat": -13.83282,
        "long": -171.76462,
        "passportServices": false
      },
      {
        "id": "18",
        "name": "High Commission of Canada",
        "address": "Level 11, 125 The Terrace, Wellington 6011, New Zealand",
        "phone": "+64 4 473-9577",
        "website": "http://www.newzealand.gc.ca",
        "lat": -41.283551,
        "long": 174.774821,
        "passportServices": true
      },
      {
        "id": "19",
        "name": "Embassy of Canada",
        "address": "Laurenzenberg 2, A-1010, Vienna, Austria",
        "phone": "43 (1) 531-38-3000",
        "website": "http://www.austria.gc.ca",
        "lat": 48.21076,
        "long": 16.37836,
        "passportServices": true
      },
      {
        "id": "20",
        "name": "High Commission of Canada",
        "address": "Commonwealth Avenue, Canberra ACT, Australia 2600",
        "phone": "(61) 2 6270 4000",
        "website": "http://www.australia.gc.ca",
        "lat": -35.30299,
        "long": 149.125,
        "passportServices": true
      },
      {
        "id": "21",
        "name": "Consulate General of Canada",
        "address": "Level 5, Quay West Building, 111 Harrington Street, Sydney, NSW 2000, Australia",
        "phone": "61 (2) 9364-3000",
        "website": "http://www.australia.gc.ca",
        "lat": -33.86164,
        "long": 151.2071,
        "passportServices": true
      },
      {
        "id": "22",
        "name": "Embassy of Canada",
        "address": "Avenida Francisco de Miranda con Avenida Altamira Sur, Altamira, Caracas 1060, Venezuela",
        "phone": "+58 212 600 3000",
        "website": "http://www.venezuela.gc.ca",
        "lat": 10.491016,
        "long": -66.902061,
        "passportServices": true
      },
      {
        "id": "23",
        "name": "Embassy of Canada",
        "address": "Cinnah Caddesi No. 58, Çankaya 06690, Ankara, Turkey",
        "phone": "90 (312) 409-2700",
        "website": "http://www.turkey.gc.ca",
        "lat": 39.89212,
        "long": 32.85599,
        "passportServices": true
      },
      {
        "id": "24",
        "name": "Embassy of Canada",
        "address": "Laurenzenberg 2, A-1010, Vienna, Austria",
        "phone": "43 (1) 531-38-3000",
        "website": "http://www.austria.gc.ca",
        "lat": 48.21076,
        "long": 16.37836,
        "passportServices": true
      },
      {
        "id": "25",
        "name": "High Commission of Canada",
        "address": "Bishop's Court Hill, St. Michael, P.O. Box 404, Bridgetown, Barbados BB11113",
        "phone": "(246) 629-3550",
        "website": "http://www.barbados.gc.ca",
        "lat": 13.09511,
        "long": -59.59998,
        "passportServices": true
      },
      {
        "id": "26",
        "name": "High Commission of Canada",
        "address": "United Nations Road, Baridhara, Dhaka, Bangladesh",
        "phone": "+880 2 5566 8444",
        "website": "http://www.bangladesh.gc.ca",
        "lat": 23.79979,
        "long": 90.4185,
        "passportServices": true
      },
      {
        "id": "27",
        "name": "Embassy of Canada",
        "address": "Avenue des Arts 58, 1000, Brussels, Belgium",
        "phone": "32 (2) 741-0611",
        "website": "http://www.belgium.gc.ca",
        "lat": 50.84003,
        "long": 4.39781,
        "passportServices": true
      },
      {
        "id": "28",
        "name": "Embassy of Canada",
        "address": "316 Professeur Ki-Zerbo Street, Ouagadougou, Burkina Faso",
        "phone": "+226 25 49 08 00 / +226 25 31 18 94",
        "website": "http://www.burkinafaso.gc.ca",
        "lat": 12.369416,
        "long": -1.516655,
        "passportServices": true
      },
      {
        "id": "29",
        "name": "Embassy of Canada",
        "address": "1-3 Tuberozelor Street, 011411 Bucharest, Sector 1, Romania",
        "phone": "(4)  021-307-5000",
        "website": "http://www.romania.gc.ca",
        "lat": 44.46099,
        "long": 26.0828,
        "passportServices": true
      },
      {
        "id": "30",
        "name": "Consulate of Canada",
        "address": "GBCorp Tower, 16th Floor, Building 1411, Road 4626, Block 346, Bahrain Financial Harbour District, Manama, Bahrain",
        "phone": "973 (17) 536270",
        "website": "",
        "lat": 26.24007,
        "long": 50.58734,
        "passportServices": false
      },
      {
        "id": "31",
        "name": "Embassy of Canada",
        "address": "Diplomatic Quarter, Riyadh, Saudi Arabia",
        "phone": "966 (11) 202-3200",
        "website": "http://www.saudiarabia.gc.ca",
        "lat": 24.67783,
        "long": 46.62227,
        "passportServices": true
      },
      {
        "id": "32",
        "name": "Consulate of Canada",
        "address": "Hôtel Club du Lac Tanganyika, Chaussée d’Uvira, Bujumbura, Burundi",
        "phone": "+257 22 24 58 98",
        "website": "",
        "lat": -3.37166,
        "long": 29.3565,
        "passportServices": false
      },
      {
        "id": "33",
        "name": "High Commission of Canada",
        "address": "Limuru Road, Gigiri, Nairobi, Kenya",
        "phone": "254 (20) 366-3000",
        "website": "http://www.canadainternational.gc.ca/kenya/",
        "lat": -1.241846,
        "long": 36.813004,
        "passportServices": true
      },
      {
        "id": "34",
        "name": "Consulate of Canada",
        "address": "Haie Vive, behind Tri-postal and Cotonou airport, Benin",
        "phone": "+229 21 30 21 45 / +229 95 95 11 80",
        "website": "",
        "lat": 6.351291,
        "long": 2.38795,
        "passportServices": false
      },
      {
        "id": "35",
        "name": "Embassy of Canada",
        "address": "316 Professeur Ki-Zerbo Street, Ouagadougou, Burkina Faso",
        "phone": "+226 25 49 08 00 / +226 25 31 18 94",
        "website": "http://www.burkinafaso.gc.ca",
        "lat": 12.369416,
        "long": -1.516655,
        "passportServices": true
      },
      {
        "id": "36",
        "name": "Embassy of Canada",
        "address": "130, rue du Faubourg Saint-Honoré, 75008 Paris",
        "phone": "+33 (0)1 44 43 29 02",
        "website": "http://www.france.gc.ca",
        "lat": 48.86685,
        "long": 2.30556,
        "passportServices": true
      },
      {
        "id": "37",
        "name": "Consulate of Canada",
        "address": "Stewart Hall, 5 Queen Street, St. George, GE 05, Bermuda",
        "phone": "1 844 880 6519",
        "website": "https://www.canada.ca/Canada-In-New-York",
        "lat": 32.38172,
        "long": -64.677996,
        "passportServices": false
      },
      {
        "id": "38",
        "name": "Consulate General of Canada",
        "address": "466 Lexington Avenue, 20th Floor, New York, New York, U.S.A., 10017",
        "phone": "1-844-880-6519",
        "website": "https://www.canada.ca/Canada-In-New-York",
        "lat": 40.75368,
        "long": -73.974423,
        "passportServices": false
      },
      {
        "id": "39",
        "name": "High Commission of Canada",
        "address": "Street Address No. 1 Jalan McArthur, 5th Floor, Bandar Seri Begawan, BS 8711, Brunei",
        "phone": "673-222-0043",
        "website": "http://www.brunei.gc.ca",
        "lat": 4.88838,
        "long": 114.93977,
        "passportServices": true
      },
      {
        "id": "40",
        "name": "Embassy of Canada (Program Office)",
        "address": "2678, Calle Victor Sanjinez, Edificio Barcelona, 2nd Floor, Plaza España (Sopocachi), La Paz, Bolivia",
        "phone": "591 (2) 241-5141",
        "website": "",
        "lat": -17.46667,
        "long": -68.93333,
        "passportServices": true
      },
      {
        "id": "41",
        "name": "Embassy of Canada",
        "address": "Calle Bolognesi 228, Miraflores, Lima 18, Peru",
        "phone": "51 (1) 319-3200",
        "website": "http://www.peru.gc.ca",
        "lat": -12.120851,
        "long": -77.035953,
        "passportServices": true
      },
      {
        "id": "42",
        "name": "Embassy of Canada",
        "address": "Avenida Francisco de Miranda con Avenida Altamira Sur, Altamira, Caracas 1060, Venezuela",
        "phone": "+58 212 600 3000",
        "website": "http://www.venezuela.gc.ca",
        "lat": 10.491016,
        "long": -66.902061,
        "passportServices": true
      },
      {
        "id": "43",
        "name": "Embassy of Canada",
        "address": "SES - Av. das Nações, Quadra 803, Lote 16, 70410-900 Brasília, DF, Brazil",
        "phone": "55 (61) 3424-5400",
        "website": "http://www.brazil.gc.ca",
        "lat": -15.815613,
        "long": -47.878642,
        "passportServices": true
      },
      {
        "id": "44",
        "name": "Consulate of Canada",
        "address": "Edifício Lumière: Hospital de Olhos Dr. Ricardo Guimarães, Rua da Paisagem 220, 3º andar, Vila da Serra, 34000-000, Nova Lima, Belo Horizonte - MG, Brazil",
        "phone": "55 (31) 3047-1225",
        "website": "http://www.brazil.gc.ca",
        "lat": -19.93679,
        "long": -43.92222,
        "passportServices": false
      },
      {
        "id": "45",
        "name": "Consulate General of Canada",
        "address": "Av. Atlântica 1130, 13º andar, Copacabana, 22021-000 Rio de Janeiro - RJ, Brazil",
        "phone": "55 (21) 2543-3004",
        "website": "http://www.brazil.gc.ca",
        "lat": -22.964916,
        "long": -43.173957,
        "passportServices": false
      },
      {
        "id": "46",
        "name": "Consulate General of Canada",
        "address": "Centro Empresarial Nações Unidas - Torre Norte, Av. das Nações Unidas, 12901, 16º andar, 04578-000 São Paulo - SP, Brazil",
        "phone": "55 (11) 5509-4321",
        "website": "http://www.brazil.gc.ca",
        "lat": -23.609325,
        "long": -46.697676,
        "passportServices": true
      },
      {
        "id": "47",
        "name": "Consulate of Canada",
        "address": "Shirley Street Plaza, Nassau, Bahamas",
        "phone": "(242) 393-2123/(242) 393-2124",
        "website": "",
        "lat": 25.06,
        "long": -77.345,
        "passportServices": false
      },
      {
        "id": "48",
        "name": "High Commission of Canada",
        "address": "3 West Kings House Road, Kingston 10, Jamaica",
        "phone": "(876) 926-1500",
        "website": "http://www.jamaica.gc.ca",
        "lat": 18.02169,
        "long": -76.78732,
        "passportServices": true
      }
    ]
  }
}
```

### Users
Returns all users in the database

#### Request:

```graphql
{
  users {
    name
    email
    role
    phoneNumber
    latitude
    longitude
  }
}
```

#### Response:

```json
{
  "data": {
    "users": [
      {
        "name": "Kimbra Graham",
        "email": "karey.bogan@ullrich.io",
        "role": 0,
        "phoneNumber": "+269 226-235-1014",
        "latitude": 26.3100493248533,
        "longitude": -42.7626012974382
      },
      {
        "name": "Chara Kilback",
        "email": "miguel@blickmacejkovic.co",
        "role": 0,
        "phoneNumber": "+993 493-377-9488",
        "latitude": 83.5111495192167,
        "longitude": 69.4954353441307
      },
      {
        "name": "Gaynelle Grimes",
        "email": "stacia@schowalter.co",
        "role": 0,
        "phoneNumber": "+370 1-759-627-4913 x19660",
        "latitude": -67.9468950646934,
        "longitude": -37.6066730919121
      },
      {
        "name": "Theo Kulas",
        "email": "winfred@friesen.biz",
        "role": 0,
        "phoneNumber": "+387 727.016.9805 x0877",
        "latitude": 33.2302345019916,
        "longitude": -24.0376728019228
      },
      {
        "name": "Carlotta Torphy",
        "email": "edgar@jones.name",
        "role": 0,
        "phoneNumber": "+233 1-988-330-6765",
        "latitude": -3.43103621105386,
        "longitude": 142.436486320976
      },
      {
        "name": "Mrs. Deangelo Mraz",
        "email": "talisha@mckenzie.name",
        "role": 0,
        "phoneNumber": "+30 493.460.5487",
        "latitude": 23.3171973581456,
        "longitude": -123.647234290818
      },
      {
        "name": "Wilhemina Heller",
        "email": "dewayne_grimes@emard.org",
        "role": 0,
        "phoneNumber": "+856 1-856-685-5586 x4722",
        "latitude": -56.0873060357644,
        "longitude": -112.306063215103
      },
      {
        "name": "Leonor MacGyver",
        "email": "corrinne_armstrong@hilpert.info",
        "role": 0,
        "phoneNumber": "+7-6 1-682-507-2900 x698",
        "latitude": -75.1675121754905,
        "longitude": -118.938030209698
      },
      {
        "name": "Mrs. Helene Nader",
        "email": "willie@lefflerzboncak.com",
        "role": 0,
        "phoneNumber": "+256 1-760-080-9321 x03641",
        "latitude": -24.7102437970728,
        "longitude": -170.973197662859
      },
      {
        "name": "Marvella Kautzer",
        "email": "guy_renner@rogahn.org",
        "role": 0,
        "phoneNumber": "+850 759.899.0576 x547",
        "latitude": 88.7583238848613,
        "longitude": 127.028335752735
      },
      {
        "name": "Lory Robel",
        "email": "dagny@spencermarquardt.net",
        "role": 0,
        "phoneNumber": "+254 956-285-3420 x9898",
        "latitude": 53.6142816617883,
        "longitude": -100.468894810743
      }
    ]
  }
}
```

### User and User's Followers
Returns a single User (determined by id) and the user's associated followers

#### Request:
```graphql
{
  user(id: 1) {
    name
    email
    phoneNumber
    friends {
      id
      name
      role
      phoneNumber
    }
  }
}
```

#### Response:
```json
{
  "data": {
    "user": {
      "name": "Kimbra Graham",
      "email": "karey.bogan@ullrich.io",
      "phoneNumber": "+269 226-235-1014",
      "friends": [
        {
          "id": "2",
          "name": "Chara Kilback",
          "role": 0,
          "phoneNumber": "+993 493-377-9488"
        },
        {
          "id": "3",
          "name": "Gaynelle Grimes",
          "role": 0,
          "phoneNumber": "+370 1-759-627-4913 x19660"
        },
        {
          "id": "4",
          "name": "Theo Kulas",
          "role": 0,
          "phoneNumber": "+387 727.016.9805 x0877"
        }
      ]
    }
  }
}
```
### User and User's Notifications
Returns a single User (determined by id) and the user's associated notificiations

#### Request

```graphql
{
  user(id: 1) {
    id
    name
    notificationsSent {
      unread
      message
      senderId
      receiverId
      latitude
      longitude

    }
    notificationsReceived {
      unread
      id
      message
      senderId
    	receiverId
       latitude
      longitude
      
    }
  }
}

```

#### Response
```json

{
  "data": {
    "user": {
      "id": "1",
      "name": "Mrs. Kimbery Robel",
      "notificationsSent": [
        {
          "unread": true,
          "message": "tattooed",
          "senderId": 1,
          "receiverId": 2,
          "latitude": 57.6299,
          "longitude": 39.8737
        },
        {
          "unread": false,
          "message": "cray",
          "senderId": 1,
          "receiverId": 3,
          "latitude": 40.7143,
          "longitude": -74.006
        }
      ],
      "notificationsReceived": [
        {
          "unread": true,
          "id": "1",
          "message": "retro",
          "senderId": 2,
          "receiverId": 1,
          "latitude": 38.0467,
          "longitude": -97.345
        },
        {
          "unread": true,
          "id": "2",
          "message": "drinking",
          "senderId": 2,
          "receiverId": 1,
          "latitude": 37.6394,
          "longitude": 127.0328
        },
        {
          "unread": true,
          "id": "5",
          "message": "Nov 11th",
          "senderId": 2,
          "receiverId": 1,
          "latitude": 1,
          "longitude": 2
        },
        {
          "unread": true,
          "id": "6",
          "message": "Nov 11th",
          "senderId": 2,
          "receiverId": 1,
          "latitude": 1,
          "longitude": 2
        }
      ]
    }
  }
}
```
### User and User's Trips
Returns a single User (determined by id) and the user's associated trips

#### Request:

```graphql
{
  user(id:1) {
    name
    email
    phoneNumber
    trips {
      id
      name
      startDate
      endDate
      userId
    }
  }
}
```

#### Response:

```json
{
  "data": {
    "user": {
      "name": "Kimbra Graham",
      "email": "karey.bogan@ullrich.io",
      "phoneNumber": "+269 226-235-1014",
      "trips": [
        {
          "id": "1",
          "name": "Tunisia",
          "startDate": "2019-06-15",
          "endDate": "2020-02-02",
          "userId": 1
        },
        {
          "id": "2",
          "name": "Madagascar",
          "startDate": "2019-01-17",
          "endDate": "2020-04-27",
          "userId": 1
        },
        {
          "id": "3",
          "name": "Norway",
          "startDate": "2018-12-23",
          "endDate": "2020-04-23",
          "userId": 1
        }
      ]
    }
  }
}
```

### Trip and Trip's Legs
Returns a single trip (by id passed in), and the associated legs

#### Request

```graphql
{
  trip(id:1) {
    name
    startDate
    endDate
    legs {
      id
      name
      startDate
      startLocation
      endDate
      endLocation
      tripId
    }
  }
}
```

#### Response

```json
{
  "data": {
    "trip": {
      "name": "Tunisia",
      "startDate": "2019-06-15",
      "endDate": "2020-02-02",
      "legs": [
        {
          "id": "1",
          "name": null,
          "startDate": "2019-05-19",
          "startLocation": "Purdytown",
          "endDate": "2020-04-16",
          "endLocation": "Purdytown",
          "tripId": 1
        },
        {
          "id": "2",
          "name": null,
          "startDate": "2018-11-13",
          "startLocation": "New Michelinefort",
          "endDate": "2020-05-15",
          "endLocation": "West Freda",
          "tripId": 1
        },
        {
          "id": "3",
          "name": null,
          "startDate": "2019-08-05",
          "startLocation": "North Benmouth",
          "endDate": "2020-02-24",
          "endLocation": "Pollichville",
          "tripId": 1
        },
        {
          "id": "4",
          "name": null,
          "startDate": "2019-01-03",
          "startLocation": "Billieshire",
          "endDate": "2020-01-08",
          "endLocation": "North Laneton",
          "tripId": 1
        }
      ]
    }
  }
}
```

### Leg and Leg Destinations
Returns single leg based on the ID passed in, and the associated destinations

#### Request

```graphql
{
  leg(id: 1) {
    destinations {
      id
      city
      country
      legId
      latitude
      longitude
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
          "id": "1",
          "city": "North Adolfofurt",
          "country": "Morarport",
          "legId": 1,
          "latitude": null,
          "longitude": null
        },
        {
          "id": "2",
          "city": "Williamsonmouth",
          "country": "South Billy",
          "legId": 1,
          "latitude": null,
          "longitude": null
        },
        {
          "id": "3",
          "city": "Langworthberg",
          "country": "Lake Tienland",
          "legId": 1,
          "latitude": 48.3636287,
          "longitude": 7.5945826
        }
      ]
    }
  }
}
```

### User and User's Notifications
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
      "name": "Trudie Deckow",
      "email": "marylouise@robel.org"
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
      },
      {
        "id": "4",
        "active": true,
        "userId": 2
      },
      {
        "id": "5",
        "active": true,
        "userId": 2
      },
      {
        "id": "6",
        "active": false,
        "userId": 3
      },
      {
        "id": "7",
        "active": false,
        "userId": 3
      }
    ]
  }
}
```

### Leg and Leg Transportations
Returns single leg based on the ID passed in, and associated transportations

#### Request

```graphql
{
  leg(id: 1) {
    startDate
    startLocation
    endDate
    endLocation
    tripId
  }
  transportations {
    id
    mode
    departureCity
    departureTime
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
      "startDate": "2019-05-19",
      "startLocation": "Purdytown",
      "endDate": "2020-04-16",
      "endLocation": "Purdytown",
      "tripId": 1
    },
    "transportations": [
      {
        "id": "1",
        "mode": "flight",
        "departureCity": "Haland",
        "departureTime": "2020-08-02 08:24:19 -0600",
        "arrivalTime": "2019-07-13 02:53:29 -0600",
        "arrivalCity": "North Jules"
      },
      {
        "id": "2",
        "mode": "flight",
        "departureCity": "Taniastad",
        "departureTime": "2020-06-28 14:14:46 -0600",
        "arrivalTime": "2019-07-12 17:52:08 -0600",
        "arrivalCity": "West Ned"
      },
      {
        "id": "3",
        "mode": "flight",
        "departureCity": "East Fatima",
        "departureTime": "2020-04-21 13:47:41 -0600",
        "arrivalTime": "2019-05-07 06:13:31 -0600",
        "arrivalCity": "Faheyborough"
      },
      {
        "id": "4",
        "mode": "flight",
        "departureCity": "Alberttown",
        "departureTime": "2020-02-18 10:31:50 -0700",
        "arrivalTime": "2019-05-21 07:05:17 -0600",
        "arrivalCity": "Camimouth"
      },
      {
        "id": "5",
        "mode": "flight",
        "departureCity": "Gilberteland",
        "departureTime": "2020-10-21 16:29:24 -0600",
        "arrivalTime": "2019-01-30 05:00:12 -0700",
        "arrivalCity": "Bernieborough"
      }
    ]
  }
}
```

### Leg and Leg Lodgings
Returns single leg based on the ID passed in, and the associated lodgings

#### Request

```graphql
{
  leg(id: 1) {
    lodgings {
      name
      arrivalDate
      departureDate
      city
      legId
    }
  }
}
```

#### Response

```json
{
  "data": {
    "leg": {
      "lodgings": [
        {
          "name": "Klein-Mante",
          "arrivalDate": "2019-03-14",
          "departureDate": "2020-07-13",
          "city": "Bartellmouth",
          "legId": 1
        },
        {
          "name": "Schneider-Mayert",
          "arrivalDate": "2019-09-16",
          "departureDate": "2020-03-24",
          "city": "Lake Darrylside",
          "legId": 1
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
  createTrip(
    input: {
      name: "Australia",
      startDate: "Nov 11th",
      endDate: "Dec 1st",
      userId: 1
    })
  {
    trip {
      id
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
        "id": "4",
        "name": "Australia",
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
  updateTrip(
    input: {
      id: 1,
      name: "Mexico City",
      startDate: "Nov 11th",
      endDate: "Dec 1st"
    })
  {
    trip {
      id
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
    "updateTrip": {
      "trip": {
        "id": "1",
        "name": "Mexico City",
        "startDate": "Nov 11th",
        "endDate": "Dec 1st"
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
  removeTrip(
    input: {
      id: 3
    })
  {
    trip {
      id
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
    "removeTrip": {
      "trip": {
        "id": "3",
        "name": "Norway",
        "startDate": "2018-12-23",
        "endDate": "2020-04-23"
      }
    }
  }
}
```


### Create Leg

Required Fields
- startDate
- endDate
- startLocation
- endLocation
- tripId

#### Request
```graphql
mutation {
  createLeg(
    input: {
      startDate: "10/30/19",
      startLocation: "New York",
      endDate: "11/12/19",
      endLocation: "Oslo",
      tripId: 1
    })
  {
    leg {
      id
      startDate
      startLocation
      endDate
      endLocation
      tripId
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
        "id": "10",
        "startDate": "10/30/19",
        "startLocation": "New York",
        "endDate": "11/12/19",
        "endLocation": "Oslo",
        "tripId": 1
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
  updateLeg(
    input: {
      id: 10
      startDate: "10/30/19",
      startLocation: "Mexico City",
      endDate: "11/12/19",
      endLocation: "Oslo",
      tripId: 1
    })
  {
    leg {
      id
      startDate
      startLocation
      endDate
      endLocation
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
        "id": "10",
        "startDate": "10/30/19",
        "startLocation": "Mexico City",
        "endDate": "11/12/19",
        "endLocation": "Oslo",
        "tripId": 1
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
  removeLeg(
    input: {
      id: 10
    })
  {
    leg {
      id
      startDate
      startLocation
      endDate
      endLocation
      tripId
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
        "id": "10",
        "startDate": "10/30/19",
        "startLocation": "Mexico City",
        "endDate": "11/12/19",
        "endLocation": "Oslo",
        "tripId": 1
      }
    }
  }
}
```

### Create Destination
Required Fields
- id
- city
- country

#### Request
```graphql
mutation {
  createDestination(
    input: {
      city: "Oslo",
      country:"Norway"
      legId: 1
    })
  {
    destination {
      id
      city
      country
      latitude
      longitude
      legId
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
        "id": "4",
        "city": "Oslo",
        "country": "Norway",
        "latitude": 59.9133301,
        "longitude": 10.7389701,
        "legId": 1
      }
    }
  }
}
```

###  Update Destination

#### Request
```graphql
mutation {
  updateDestination(
    input: {
      id: 4,
      city: "Bergen",
      country:"Norway"
      legId: 1
    })
  {
    destination {
      id
      city
      country
      latitude
      longitude
      legId
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
        "id": "4",
        "city": "Bergen",
        "country": "Norway",
        "latitude": 60.3943055,
        "longitude": 5.3259192,
        "legId": 1
      }
    }
  }
}
```

### Remove Destination

#### Request
```graphql
mutation {
  removeDestination(
    input: {
      id: 4
    })
  {
    destination {
      id
      city
      country
      latitude
      longitude
      legId
    }
  }
}
```
#### Response
```json
{
  "data": {
    "removeDestination": {
      "destination": {
        "id": "4",
        "city": "Bergen",
        "country": "Norway",
        "latitude": 60.3943055,
        "longitude": 5.3259192,
        "legId": 1
      }
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
- legId

#### Request
```graphql
mutation {
  createLodging(
    input: {
      name: "Queen Anne Hotel",
      arrivalDate: "2019-10-11",
      departureDate:"2019-10-20",
      city: "San Francisco",
      legId: 2
    })
  {
    lodging {
      name
      arrivalDate
      departureDate
      city
      legId
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
        "id": "9",
        "name": "Queen Anne Hotel",
        "arrivalDate": "2019-10-11",
        "departureDate": "2019-10-20",
        "city": "San Francisco",
        "legId": 2
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
- legId

#### Request
```graphql
mutation {
  updateLodging(
    input: {
      id: 9,
      name: "La Quinta",
      arrivalDate: "2019-10-11",
      departureDate:"2019-10-20",
      city: "Los Angeles",
      legId: 2
    })
  {
    lodging {
      name
      arrivalDate
      departureDate
      city
      legId
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
        "name": "La Quinta",
        "arrivalDate": "2019-10-11",
        "departureDate": "2019-10-20",
        "city": "Los Angeles",
        "legId": 2
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
  removeLodging(
    input: {
      id: 9
    })
  {
    lodging {
      name
      arrivalDate
      departureDate
      city
      legId
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
        "name": "La Quinta",
        "arrivalDate": "2019-10-11",
        "departureDate": "2019-10-20",
        "city": "Los Angeles",
        "legId": 2
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
      departureCity: "Hollywood",
      departureTime: "2020-01-13 16:01:26 -0700",
      arrivalCity: "San Juan",
      arrivalTime: "2019-04-02 04:08:33 -0600",
      legId: 1
    })
  {
    transportation {
      id
      mode
      departureCity
      departureTime
      arrivalCity
      arrivalTime
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
        "id": "6",
        "mode": "bus",
        "departureCity": "Hollywood",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "arrivalCity": "San Juan",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
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
      id: 6,
      mode: "bus",
      departureCity: "Las Vegas",
      departureTime: "2020-01-13 16:01:26 -0700",
      arrivalCity: "Santa Fe",
      arrivalTime: "2019-04-02 04:08:33 -0600",
      legId: 1
    })
  {
    transportation {
      id
      mode
      departureCity
      departureTime
      arrivalCity
      arrivalTime
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
        "id": "6",
        "mode": "bus",
        "departureCity": "Las Vegas",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "arrivalCity": "Santa Fe",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
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
      id: 6
    })
  {
    transportation {
      id
      mode
      departureCity
      departureTime
      arrivalCity
      arrivalTime
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
        "id": "6",
        "mode": "bus",
        "departureCity": "Las Vegas",
        "departureTime": "2020-01-13 16:01:26 -0700",
        "arrivalCity": "Santa Fe",
        "arrivalTime": "2019-04-02 04:08:33 -0600",
        "legId": 1
      }
    }
  }
}
```


### Create Notification

Required Fields
- active
- userId

#### Request
```graphql
mutation {
  createNotification(input: {senderId: 2, receiverId: 1, message: "Nov 11th", latitude: 1.0, longitude:2.0}) {
    notification {
      id
      message
      latitude
      longitude
      senderId
      receiverId
    }
  }
}

```

#### Response

```json
{
  "data": {
    "updateNotification": {
      "notification": {
        "id": "2",
        "message": "Typewriter art party hammock poutine next level pabst cold-pressed beard chambray.",
        "unread": true
      }
    }
  }
}
```

### Update Notification

Required Fields
- id
- active
- userId

#### Request
```graphql
mutation {
 updateNotification(input: {id: 2, unread: true}) {
    notification {
      id
      message
      unread
    }
  }
}

```

### Response

```json
{
  "data": {
    "updateNotification": {
      "notification": {
        "id": "2",
        "message": "Typewriter art party hammock poutine next level pabst cold-pressed beard chambray.",
        "unread": true
      }
    }
  }
}
```

### Remove Notification

Deletes a notification from the DB.

Required Fields
- id

#### Request
```graphql
mutation {
  removeNotification(
    input: {
      id: 8
    })
  {
    notification {
      id
      active
      userId
    }
  }
}
```

#### Response

```json
{
  "data": {
    "removeNotification": {
      "notification": {
        "id": "8",
        "active": false,
        "userId": 4
      }
    }
  }
}
```

### Create Follower

Required Fields
- friendId
- userId

#### Request
```graphql
mutation {
  createFriendship(
    input: {
      friendId: 9
      userId: 1
    })
  {
    friends {
      id
      name
      email
      phoneNumber
      role
    }
  }
}
```

#### Response

```json
{
  "data": {
    "createFriendship": {
      "friends": [
        {
          "id": "2",
          "name": "Chara Kilback",
          "email": "miguel@blickmacejkovic.co",
          "phoneNumber": "+993 493-377-9488",
          "role": 0
        },
        {
          "id": "3",
          "name": "Gaynelle Grimes",
          "email": "stacia@schowalter.co",
          "phoneNumber": "+370 1-759-627-4913 x19660",
          "role": 0
        },
        {
          "id": "4",
          "name": "Theo Kulas",
          "email": "winfred@friesen.biz",
          "phoneNumber": "+387 727.016.9805 x0877",
          "role": 0
        },
        {
          "id": "9",
          "name": "Mrs. Helene Nader",
          "email": "willie@lefflerzboncak.com",
          "phoneNumber": "+256 1-760-080-9321 x03641",
          "role": 0
        }
      ]
    }
  }
}
```

### Remove Follower

Deletes a follower that is associated with that wanderer.

Required Fields
- id

#### Request
```graphql
mutation {
  removeFriendship(
    input: {
      id: 9
    })
   {
    message
  }
}
```

#### Response

```json
{
  "data": {
    "removeFriendship": {
      "message": "You deleted a follower!"
    }
  }
}
```

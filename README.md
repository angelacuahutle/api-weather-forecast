# README

For this challenge you will be using OpenWeather's API to look up the temperature
using geographic coordinates, and show the results in metric units.


### Things you may want to cover:

- [x] Docs: https://openweathermap.org/forecast5
- [x] API Key: 0eebd1fcf852d29ca0340c5c451d4c9a

To find the coordinates of a given city, you will use an endpoint from the Reservamos
API where we can get data for different places by name.
- [x] Endpoint: https://search.reservamos.mx/api/v2/places
- [x] It accepts a get parameter (q) with a partial or full name of a city (US and
MX only), e.g.:
- [x] https://search.reservamos.mx/api/v2/places?q=monterrey
- [x] The response is an array with data for different places, for this challenge
we're only interested in cities (result_type).

#### Scope
- [x] The app can be built using the framework you're most comfortable with.
- [x] We expect you to work on this challenge for no more than 3 hours, we're
happy to see anything that's working so we can build on top of it during the
coding interview step of the interview process.
- [x] It is not required to persist data in a data base, we're only interested in
showing them while using the web app.
- [x] User login is not required, anybody can look up weather forecasts.

#### Deliverables
- [x] Code repo in Github, Gitlab, Bitbucket, etc
- [x] Instructions to run the web app locally, or a link where we can see and test
the app.

* Ruby version
3.0.0

* How to run the test suite

``rails s``

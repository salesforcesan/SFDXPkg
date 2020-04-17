# Crossmark OneHub

build notes (test)
###

* node.js and npm required to build static resources for SPAs
* any sfdc metadata must be added to the unmanaged package `OneHub` in the org
  * (Setup > Create > Packages > retailplanning)
* Enable Forecasts and check the Show Quotas checkbox
  * (Setup > Build > Forecasts > Forcasts Settings)
* Enable Notes
  * (Setup > Build > Customize > Notes > Notes Settings)
* Enable Communities
  * (Setup > Build > Customize > Communities)

## Developer Environment Variables (example from ~/.bashrc)

`export SF_USERNAME_CMX_RPS=dan@shopperevents.com.csxdans`

`export SF_PASSWD_CMX_RPS=PasswordHereX298F9vxgVyANyyBAQzZz3PJ`

`export SF_URL_CMX_RPS=https://login.salesforce.com/`

  * devs will need ant or jsforce metadata tools installed to refresh from package (used instead of MavensMate "refresh from server"):

  ```ant -buildfile build/build.xml -lib ./lib RetrievePackagedToSrc```

## CI Environment Variable Setup for each developer (example given for branch `dev.dan`)

https://circleci.com/gh/CROSSMARK-GIT/OneHub/edit#env-vars

`DEV_DAN_USERNAME = dan@shopperevents.com.csxdans`

`DEV_DAN_PASSWD = PasswordAndToken`

`DEV_DAN_URL = 'https://shopperevents--csxdans.cs52.my.salesforce.com/'`

### Data Import
Details to come.
Barton completed training

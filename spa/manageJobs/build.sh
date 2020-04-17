#!/bin/bash

##build vendor.min.js  (order is important)
cat jquery-3.1.0.min.js jsr-mocks-jquery.js jquery-ui.min.js jquery.multiselect.min.js  toastr.min.js moment.min.js handlebars.min.js > vendor.min.js

##build vendor.min.css
cat jquery-ui.min.css jquery-ui.theme.min.css jquery.multiselect.css toastr.min.css > vendor.min.css

##backup previous static resource (just in case)
mv -f Archive.zip Archive.zip.old
##zip the static resource
zip -r ./Archive.zip vendor.min.js vendor.min.css images

echo "Static resource output to Archive.zip"

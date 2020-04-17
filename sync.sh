echo "---- download package from salesforce ----"
ant -buildfile build/build.xml -lib ./lib RetrievePackagedToSrc;
echo "---- end of download ----";
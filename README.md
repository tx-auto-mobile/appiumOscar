# Cucumber-Ruby-Appium automation project

This project is an example of automation mobile for iOS applications, using cucumber to write the test cases in plain
text, ruby as the language used to interect with appium libraries, and Appium server to launch the app to allow
the execution of the automated test cases.

#Documentation
Please refer to the automation guide document: AppiumCucumberRubyAutomation.docx

#Requirements
This automation tests has been written for Signal-iOS app, so please download the code from:<br /><br />
https://github.com/WhisperSystems/Signal-iOS<br /><br />
After download the code, build and point your automated code to the .app build.

#Usage
To run this sample project:<br />
1. Go to the appium.txt file and specify the environment you want to execute the test cases, also in there specify the
location of your app.<br />
2. Navigate to the automation project, then from console type:<br />
   cucumber -p all_tests<br />
   This will launch the iOS simulator to execute the test cases<br />
3. Once execution finishes, type this in console to create the report:<br />
   mvn install<br />
   mvn exec:java<br />
4. Navigate to ReportHTMLResults folder, then open the feature-overview.html file to see the execution report of the
automation.

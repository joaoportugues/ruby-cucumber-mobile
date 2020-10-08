cucumber-ruby-app-nbd
=====================

Code samples to get started with Appium tests for your Native App using the Cucumber framework.

## Setup
### Requirements

1. Ruby: If you don't have Ruby installed, follow the instructions given [here](https://www.ruby-lang.org/en/documentation/installation/)
2. Bundler : If you dont have Bundler installed, follow the instructions given [here](https://bundler.io/)

### Install the dependencies

To install the dependencies for Android tests, run (run on root folder - iOS will be implemented later):
```sh
cd android/examples
bundle install
```

Or,

To install the dependencies for iOS tests, run (not implemented yet):

```sh
cd ios/examples
bundle install
```

## Getting Started

Getting Started with Appium tests in Cucumber Ruby

- Navigate to root directory

```sh
rake
```

- To run only tagged tests change Rakefile to run tags and then run tests
```sh
task.cucumber_opts = ['--format=AllureCucumber::CucumberFormatter',  '--require run-local-test/', 'run-local-test/', 'CONFIG_NAME=local', '--publish', '--out reports/allure-reports', '--tags "@runThis"']
```

```sh
rake
```

### **Reports :**

```sh
allure serve reports/allure-reports
```

## Addtional Resources
* [Cucumber](https://cucumber.io/)
* [AllureReports](https://github.com/allure-framework/allure-ruby/blob/master/allure-cucumber/README.md) 

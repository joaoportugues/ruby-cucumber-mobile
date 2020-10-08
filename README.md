cucumber-ruby-app-nbd
=====================

Code samples to get started with Appium tests for your Native App using the Cucumber framework.

## Setup
### Requirements

1. Ruby: If you don't have Ruby installed, follow the instructions given [here](https://www.ruby-lang.org/en/documentation/installation/)
2. Bundler : If you dont have Bundler installed, follow the instructions given [here](https://bundler.io/)

### Install the dependencies

To install the dependencies for Android tests, run :
```sh
cd android/examples
bundle install
```

Or,

To install the dependencies for iOS tests, run :

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

### **Reports :**

```sh
allure serve reports/allure-reports
```

## Addtional Resources
* [Cucumber](https://cucumber.io/)
* [AllureReports](https://github.com/allure-framework/allure-ruby/blob/master/allure-cucumber/README.md) 

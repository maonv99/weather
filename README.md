# Image App

# GetX Boilerplate Start Project

A boilerplate project created in flutter using GetX.

## Getting Started


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/maonv99/weather.git
```

Or simply click on the **Use this template** button and make your own repository using this template.

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**NOTE**: Don't forget to change the 'app name' and 'package name' in android, ios and pubspec files.

## Boilerplate Features:

* Initializer - to intialize dependencies on startup
* Home
* Routing
* Theme
* Dynamic UI support
* GetConnect with custom retry button and proper error handling
* GetStorage
* GetX (State Management)
* Custom Validations, widgets, dialogs, extensions and much more

### Libraries & Tools Used

* [GetX](https://github.com/jonataslaw/getx)
* [Storage](https://github.com/jonataslaw/get_storage)
* [ScreenUtil](https://github.com/OpenFlutter/flutter_screenutil/)
* [Intl](https://github.com/dart-lang/intl)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- app/
|- main.dart
```

```
app/
|- common/
   |- storage/
   |- util/
   |- values/
   |- constants.dart
|- data/
   |- errors/
   |- interface_controller/
   |- api_helper.dart
   |- app_response.dart
|- modules/
   |- home/
   |- widgets/
|- routes/
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- common - Contains all the utilities/common functions  which are using throughout the app. This directory contains `constants`. `utilities`, `theme`, `strings`, `dimensions`, `storage`, `text styles`, `colors` and `images path`.
2- data - Contains the data layer of your project, includes a controller for retry apis, `custom errors` and response & error handling.
3- modules - Contains all the ui of your project, contains sub directory for each screen and custo widgets as per the need.
4- routes — Contains the files for routes for your application.
5- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```
**NOTE**: You can use [Get Cli](https://github.com/jonataslaw/get_cli) to auto generate ui pages, controllers and routes.

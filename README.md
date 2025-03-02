# marketplace

A simulation of marketplace app

## Introduction

In this project, I am trying to implement modularization. I have couple of modules here and basically separate the module based on features.
To show the modularization concept, I create 2 feature modules:
1. feature_home
2. feature_product

For reusable component, i create another module called shared_ui under shared module. So for each component or library that can be used in all features module would be placed here.

For main module, basically only contain some registrar to register our app and routes across the feature modules.
Features modules imported by main modules, and in each feature module has route registrar to registering all routes in that particular module.
And then in the app route registrar, I register all routes from all modules.

In this project, I am using 3rd party library too:
1. Flutter Bloc
   - This library is used to handle state management, so any business logic will be separated from view. Any state changed should be done in the cubit level, then view will listening the changes and then rebuild it automatically to use the latest state.
2. Melos
   - Since in this project I have couple of modules, it's a bit hard to maintain it one by one every time I need to do sync I have to run flutter pub get in each modules. So melos comes to rescue, no need to run it one by one just hit `melos bootstrap` then it will sync and run flutter pub get for all modules

## Getting Started

To run this project locally, you should follow this step:
1. activate melos first: `dart pub global activate melos`
2. sync all modules: `melos bootstrap`
3. open emulator/simulator or just connect to your device directly, make sure it's detected by the IDE
4. run `flutter run` or just hit run from your IDE

## Demo

For the demo, I provide APK [here](https://drive.google.com/file/d/1U1bMZZPYhBZn4Y1VaT0XeIRzbQD3ZePD/view?usp=sharing) so you could download and install it.
Also I provide some video [here](https://drive.google.com/file/d/14S2afHm7BdZCcCCFCFku-sdQtD6UI4Gs/view?usp=sharing) to watch the demo

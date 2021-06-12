# Provider + Get_it Architecture

This is the starting code for [this tutorial](https://www.filledstacks.com/post/flutter-architecture-my-provider-implementation-guide) where we setup a Flutter app architecture using the Provider package.

Let's quickly go over the structure. The lib folder is divided into two folders. core and ui. Core contains all the files associated with the logic. ui contains all the files associated with the ui. Core is divided into three folders.

Models: Contains all the plain data models
Services: Contains the dedicated files that will handle actual business logic
ViewModels: Contains the Provider models for each of the Widget views
UI is also divided into three folders.

Shared: Contains files used in multiple other UI files
Views: Contains the files for the app views
Widgets: Contains widget files that are too big to keep in the view files.
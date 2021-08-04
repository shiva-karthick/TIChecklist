# TIChecklist technical documentation

This project is adapted from [here](https://www.filledstacks.com/post/flutter-architecture-my-provider-implementation-guide) where we setup a sample Flutter app using the Provider package.

#### Technical documentation is in the doc/api folder. Open the index.html page in Google Chrome or any web browser.
TIChecklist/start/doc/api/index.html

## High Level Architecture Overview
1. Each view will have it's own model that extends the ChangeNotifier.
2. Notify listeners for a view will ONLY BE CALLED when the View's state changes.
3. Each view only has 2 states. Idle and Busy. Any other piece of UI contained in a view, that requires logic and state / UI updates will have it's own model associated with it. This way the main view only paints when the main view state changes.
4. Providers will NOT be passed in through app level global provider, unless it's required by more than 1 view in the app architecture (Users information).
5. Providers and services will be injected using get_it.
6. Models will ONLY request data from Services and reduce state from that DATA. Nothing else.
7. Dedicated Services(Just normal objects, to not confuse beginners) will perform all the actual work. Api class will request and serialize data. The model will just call the function to do that. Authentication service will use the Api to get the user details and track it. The model just calls the function and passes values to it.

*That's it on a high level. Keeping that in mind as we progress.*

Let's quickly go over the structure. The lib folder is divided into two folders. core and ui. Core contains all the files associated with the logic. ui contains all the files associated with the ui. Core is divided into three folders.

Let's quickly go over the project structure. 
- The lib folder is divided into 2 folders. **core** and **UI.** 
- **Core** contains all the files associated with the **logic**. 
  - Core is divided into 4 folders.
    - **Models**: Contains all the data models
    - **Services**: Contains the dedicated files that will handle actual business logic 
    - **View Models**: Contains the Provider models for each of the Widget views
- **UI** contains all the files associated with the user interface.
  - **shared** : Contains files used in multiple other UI files
  - **view** : Contains the files for the app views
  - **widgets** : Contains widget files that are too big to keep in the view files.

## Project Architecture

For communication between the UI and the business logic, the architecture is similar to MVVM (Model View ViewModel).

The model is the data from a source like a database or the web. The view is the UI, like a screen or widget. The view model is the business logic sitting between the UI and the data. It provides data in a form that the UI can present, but it knows nothing about the UI itself. This differs from the MVP architecture. The view model also doesn’t know where the data comes from. That’s abstracted away.

Each view.dart will have its own view model. The view model will define the methods and user services to accomplish tasks such as fetching data from disk to displaying in the screen. 

Note these points:
- The UI screens listen for changes in the view models. They also send events to the view models.
- The view models don’t know any details about how the UI looks.
- The business logic interacts with an abstract service. It doesn’t know anything about the local storage or the web. This type of architecture is sometimes called a data repository.

Useful links : 
- [Flutter architecture using provider](https://www.filledstacks.com/post/flutter-architecture-my-provider-implementation-guide)
- [Flutter cookbook](https://flutter.dev/docs/cookbook)
- [State management with raywenderlich.com](https://www.raywenderlich.com/6373413-state-management-with-provider#toc-anchor-003)
- [Services filled stacks](https://www.filledstacks.com/post/services-in-code-and-how-to-use-them-in-flutter/)
- [Awesome Flutter](https://github.com/Solido/awesome-flutter#components)
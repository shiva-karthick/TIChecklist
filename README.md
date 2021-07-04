# TIChecklist ✅

## Project's Aim
1) To simplify the task of collecting data from the vehicles
2) To synchronise the data, thus mitigating misinformation

### Forms, @yadunut for your info 
Packages used 
1) [Flutter forms builder](https://github.com/danvick/flutter_form_builder)

The bolded are the titles.

- **Appbar** : Type of detachment, ex : RID, DSD, TTD
- **Date/Time** : FormBuilderDateTimePicker - For Date, Time and DateTime input
- **Location of Detachment** : FormBuilderTextField
- **Action** : FormBuilderTextField
- 
- Use UIhelper class, to create a space
- 
- **Mission profile** : FormBuilderTextField
- Use UIhelper class, to create a space
- **Faulty items** : 
  - Each item will be a container widget, the name of the item will be a slidable widget.
  - The slidable widget will be able to Create,Delete (Create the structure of next item, Delete the item)
![Form sketch](../TIChecklist/form_sketch/Form_sketch.jpg)
- The same goes for Missing Items, Expiring items, Outstanding items.

#### Login Screen
When the user opens the app for first time, cache the name using (Shared Preferences) 
Cache the type of user - NSF/Regular.
#### Home Screen
The home screen contains 3 bottom navigation tabs: 
1. List of checklists
   1. Files in a folder will be parsed and shown as posts in this screen. If a post is clicked, it will show a view of the data. If an edit floating action button is clicked, it will direct to the editing screen where the user can edit and re-save the file again. 
2. Charts about the checklists
   1. A brief overview of the missing items, faulty items, Outstanding items.
   2. Provide options to look at certain Node vehicles.
3. Settings
   1. not really sure !


---
## Data Sources

There are three levels of data persistence:

  - In-memory cache - Fast
  - Disk (HiveDB) - Fast
  
Synchronization between layers is hard and depends on the case so it's out of the scope for the samples. The chosen sync implementation is very simple:

  - In every get operation:
    - Return in-memory cache if available, or
    - return info from disk 
  - Every write/delete operation will simply:
    - Update cache
    - Update local


## Project Management (Targetted to complete by June)

### UX - 23 May 2021

| Task                      | Completed by | Assigned to   | Current Status | Finished |
| ------------------------- | ------------ | ------------- | -------------- | -------- |
| Forms Design              | 23  May      | @yadunut      |                | ✅        |
| Card Design in homeScreen | 23  May      | @shankar-shiv |                | ❌        |
| Login Screen              | 23 May       | @yadunut      |                | ✅        |
| Charts                    | 25 May       | @shankar-shiv |                | ❌        |
| Undo functionality        | 31 May       | @shankar-shiv |                | ❌        |

### Navigation and Routing

| Task                           | Time required | Assigned to   | Current Status | Finished |
| ------------------------------ | ------------- | ------------- | -------------- | -------- |
| Routing different forms        | 25 May        | @yadunut      |                | ❌        |
| Routing from login to homepage | 25 May        | @shankar-shiv |                | ✅        |


### Data and Backend
| Task                       | Time required | Assigned to | Current Status | Finished |
| -------------------------- | ------------- | ----------- | -------------- | -------- |
| Capturing data from forms  | 31 May        | @shankar    |                | ❌        |
| Saving Hive files to disk  | 31 May        | @yadunut    |                | ❌        |
| Retrieving files from disk | 31 May        | @yadunut    |                | ❌        |
| Final data in excel view   | 31 May        | @shankar    |                | ❌        |


## Packages used
1. [Hive DB](https://pub.dev/packages/hive)
2. (Shared Preferences)[https://stackoverflow.com/questions/52831605/flutter-shared-preferences/54031842#54031842] 
3. provider : A package that helps with state management 
4. get_it: This is a simple Service Locator and can be used instead of InheritedWidget or Provider to access objects e.g. from your UI.
5. bottom_navy_bar: To view different screens
6. unicorndial: A fancy FloatingActionButton dial

## State management, MVVM(Model, View, ViewModel, Services) Architecture reference links
1. [**Filled Stacks**](**https://www.filledstacks.com/post/flutter-architecture-my-provider-implementation-guide/**)
2. [Official Flutter Provider shopper](https://github.com/flutter/samples/tree/master/provider_shopper)
3. [Official Flutter Provider Counter](https://github.com/flutter/samples/tree/master/provider_counter)
4. [Flutter tutorial: Architect your app using Provider and Stream](https://blog.codemagic.io/flutter-tutorial-app-arhitecture-beginners/)
5. [Currency app; good reference](https://www.raywenderlich.com/6373413-state-management-with-provider#toc-anchor-003)
  

## Login page UI

1. [Flutter login animation](https://github.com/GeekyAnts/flutter-login-home-animation)

## Main Page User Interface (UI) 👨‍🎨

1. [Bottom Navigation bar](https://github.com/pedromassango/bottom_navy_bar)

## Form design 

1. [Timeline for easy viewing](https://github.com/JHBitencourt/timeline_tile) 🤔
2. [Slideable for Update and Delete](https://github.com/JHBitencourt/timeline_tile)

### Inspirational ideas 💡
1. [Awesome Flutter](https://github.com/Solido/awesome-flutter)
2. [[Examples] Simple basic isolated apps, for budding flutter devs.](https://github.com/nisrulz/flutter-examples)
3. [Flutter Roadmap](https://github.com/olexale/flutter_roadmap)

#### StackOverflow 

- [Flutter Listview.builder inside another Listview](https://stackoverflow.com/questions/53465394/flutter-listview-builder-inside-another-listview)
- [Dynamica class based on JSON response](https://stackoverflow.com/questions/61942994/dart-create-dynamic-class-based-on-json-response)
- ```dart
  class MyClass {
    Map<String, dynamic> json;
    MyClass(this.json);

    factory MyClass.fromJson(dynamic data) {
      assert(data is Map);

      return MyClass(data);
    }
  }

  void main() {
    // Let's say this is your json
    final json = {
      'field1': 1,
      'field2': 2.2,
    };

    // Create your MyClass instance
    var myClass = MyClass.fromJson(json);

    // Get the values
    var field1 = myClass.json['field1']; // prints 1
    print(myClass.json);
  //   var field2 = myClass.'field2'; // prints 2.2
  }

```
---
## MVVM
For communication between the UI and the business logic, the architecture is similar to MVVM (Model View ViewModel).

The model is the data from a source like a database or the web. The view is the UI, like a screen or widget. The view model is the business logic sitting between the UI and the data. It provides data in a form that the UI can present, but it knows nothing about the UI itself. This differs from the MVP architecture. The view model also doesn’t know where the data comes from. That’s abstracted away.

Each view.dart will have its own view model. The view model will define the methods and user services to accomplish tasks such as fetching data from disk to displaying in the screen. 

The process is roughly shown below.

- view <-> viewmodel <-> (Model) <-> Services

![alt](../TIChecklist/form_sketch/mvvm_general-650x169.png)

Here is a more detailed view, 
![architecture diagram](../TIChecklist/form_sketch/advanced_architecture.png)

Note these points:
- The UI screens listen for changes in the view models. They also send events to the view models.
- The view models don’t know any details about how the UI looks.
- The business logic interacts with an abstract service. It doesn’t know anything about the local storage or the web. This type of architecture is sometimes called a data repository.

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


- Models: Contains all the plain data models
- Services: Contains the dedicated files that will handle actual business logic
- ViewModels: Contains the Provider models for each of the Widget views
- UI is also divided into three folders.

- Shared: Contains files used in multiple other UI files
- Views: Contains the files for the app views
- Widgets: Contains widget files that are too big to keep in the view files.

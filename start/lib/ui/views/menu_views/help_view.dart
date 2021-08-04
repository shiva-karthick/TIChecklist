import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

const String markDownSource = ''' 
# User Guide

### **NOTE :  You MUST allow permission to access your storage to use this app.**

### **Step 1 : Login Page.**
### There are no fixed username/password, the login name is optional. You can choose to enter your desired name in the text box.
![app_1](resource:assets/app_screenshots/app_2.jpg)

### **Step 2 : Home Page.**
### Since there are no posts at the start, click the :heavy_plus_sign: button to get started with **RID checklist**.
![app_1](resource:assets/app_screenshots/app_3.jpg)

### **Step 3 : RID checklist (1).**
### There are 2 pages of RID checklist, the below page is the first step and you are required to key in the **important details** shown in the **grey boxes.** Tap **Save** after keying in the necessary information.
![app_4](resource:assets/app_screenshots/app_4.jpg)
![app_5](resource:assets/app_screenshots/app_5.jpg)

### **Step 4 : Refresh .**
### Tap refresh if the screen is blank 
  ![refresh_button](resource:assets/refresh_button.jpg)

### **Step 5 : Home Screen .**
### Since, there are no data of missing / faulty items, you should see the **nil** in the charts and **0% completion status** 
### Tap the post to enter the checklist
  ![app_6](resource:assets/app_screenshots/app_6.jpg)

### **Step 6 : RID checklist (2) .**
### Fill up the rest of the checklist as shown below.
### **It is optional to press Save after each data entry, auto-save functionality is available by default**
### Press the back arrow, **you cannot use android / ios back button**

  ![app_7](resource:assets/app_screenshots/app_7.jpg)

### **Step 7 : Back to Home Screen .**
  ![app_8](resource:assets/app_screenshots/app_8.jpg)
  
### **Step 8 : Licenses and Help menu .**
  ![app_9](resource:assets/app_screenshots/app_9.jpg)

--- 

# **Importing Files in 6 steps**

### **Android users** : Download the **Xplore** application from Google Play Store
![Xplore_play_store](resource:assets/Xplore_images/Xplore_play_store.jpg)

### **IOS users** : No need to download any additional app 👍
### The steps to import a file is similar for both Android and IOS devices. 

### **Step 1** : Open the Xplore application as shown below.
![refresh_button](resource:assets/Xplore_images/Xplore_1.jpg)

### **Step 2** : Tap the Internal Shared storage button and you will see all the files in your storage.
![refresh_button](resource:assets/Xplore_images/Xplore_2.jpg)

### **Step 3** : Search for Android folder and tap the Android folder.
![refresh_button](resource:assets/Xplore_images/Xplore_3.jpg)

### **Step 4** : Tap the data folder as shown.
![refresh_button](resource:assets/Xplore_images/Xplore_4.jpg)

### **Step 5** : Scroll down and look for **com.example.start** folder and tap the folder.
![refresh_button](resource:assets/Xplore_images/Xplore_5.jpg)

### **Step 6** : Finally, tap the files folder to look at all the vehicle data.
![refresh_button](resource:assets/Xplore_images/Xplore_6.jpg)

---

## **Read and modify data externally in 6 steps (Optional)**

### _Download **JSON Genie Free** from the Google Play Store and download **JASON** app from App Store_
### _The steps are similar for IOS devices, IOS steps are not shown._
### _Follow the above steps to continue_

### **Step 1** : Tap the file you wish to edit and wait for a dialog to appear. Tap JSON Genie Free.
![refresh_button](resource:assets/genie_images/genie_1.jpg)

### **Step 2** : Select a piece of data you wish to edit, for example **location data**. 
### Tap the **3 dots** to edit the data as shown below.
![refresh_button](resource:assets/genie_images/genie_2.jpg)

### **Step 3** : **DO NOT modify the Text, Number, Boolean option.** It may result in undesirable consequences.
### You are allowed to edit the value only in the **blue box.**
### DO NOT edit the **orange and pink boxes.**
![refresh_button](resource:assets/genie_images/genie_3.jpg)

### **Step 4** : Edit the text.
![refresh_button](resource:assets/genie_images/genie_4.jpg)

### **Step 5** : Once the value in the blue box is changed, tap **save.**
![refresh_button](resource:assets/genie_images/genie_5.jpg)

### **Step 6** : That's it, you have successfully edited data externally. 
![refresh_button](resource:assets/genie_images/genie_6.jpg)

---
''';

class HelpView extends StatelessWidget {
  const HelpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Help section",
        ),
      ),
      body: Container(
        child: Markdown(
          selectable: true,
          data: markDownSource,
          extensionSet: md.ExtensionSet(
            md.ExtensionSet.gitHubFlavored.blockSyntaxes,
            [
              md.EmojiSyntax(),
              ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
            ],
          ),
        ),
      ),
    );
  }
}

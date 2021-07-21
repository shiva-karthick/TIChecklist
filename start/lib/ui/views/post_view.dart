import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/viewModels/postview_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/shared/text_styles.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:provider_architecture/ui/widgets/completion_status.dart';
import 'package:provider_architecture/ui/widgets/faulty_item.dart';
import 'package:provider_architecture/ui/widgets/fmw1_personnel.dart';
import 'package:provider_architecture/ui/widgets/missing_item.dart';
import 'package:provider_architecture/ui/widgets/other_personnel.dart';
import 'package:provider_architecture/ui/widgets/remarks.dart';
import '../widgets/global.dart' as global;

class PostView extends StatefulWidget {
  final Post post;
  PostView({this.post});

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  /// To view and manipulate the state of the form
  // Old _formKey , DO NOT DELETE!
  // final _formKey = GlobalKey<FormBuilderState>();
  final _formKey = global.formKey;

  /// _missingWidgets
  List<Widget> _missingWidgets = <Widget>[
    MissingItem(
      index: 1,
    ),
  ];

  List<Widget> _faultyWidgets = <Widget>[
    FaultyItem(
      index: 1,
    ),
  ];

  // Used too keep track in array; don't mess up this
  int missingItemIndex = 0;
  int faultyItemIndex = 0;

  Map<String, dynamic> data;

  int flag = 0;
  List<String> missingKeys;
  List<int> missingNo = [];
  int missingMaxValue;

  @override
  Widget build(BuildContext context) {
    return BaseView<PostViewModel>(
      onModelReady: (model) {
        // Call something on the model,
        // perform any starting logic code we want to use,

        // Get the post from the router and give it to the model
        model.post = widget.post;
        missingKeys = model.post.json.keys.toList();
        for (var item in missingKeys) {
          if (item.contains("missingItemDate")) {
            int randomVar =
                int.parse(item.replaceAll(new RegExp(r'[^0-9]'), ''));
            missingNo.add(randomVar);
          }
        }
        missingMaxValue =
            missingNo.reduce((curr, next) => curr > next ? curr : next);
        for (var i = 0; i < missingMaxValue - 1; i++) {
          missingItemIndex = 0 + 2;
          _missingWidgets.add(
            MissingItem(
              index: missingItemIndex,
            ),
          );
        }
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text('RID checklist'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.redo),
              onPressed: () {
                _formKey.currentState.reset();
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: flag == 0 ? Icon(Icons.edit) : Icon(Icons.save),
          onPressed: () {
            flag = 1;

            final validationSuccess = true; // _formKey.currentState.validate();
            if (validationSuccess) {
              _formKey.currentState.save();
              data = _formKey.currentState.value;
              // model.requestPermissionAndWriteData(data);
            }
            setState(() {});
          },
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                // width: 300,
                child: FormBuilder(
                  key: _formKey,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      // FormBuilder(
                      //   key: _formKey,
                      //   child:
                      Column(
                        children: [
                          FormBuilderTextField(
                            name: 'detachment',
                            initialValue: model.post.json["detachment"] ?? "",
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context),
                                FormBuilderValidators.minLength(context, 8),
                                FormBuilderValidators.maxLength(context, 35),
                              ],
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.radio_rounded),
                              hintText: 'N36 RID2 52418',
                              labelText: 'Detachment',
                              helperText:
                                  'Enter Node number and vehicle number plate',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            maxLength: 35,
                          ),
                          UIHelper.verticalSpaceSmall(),
                          FormBuilderDateTimePicker(
                            name: 'dateTime',
                            initialValue: model.post.json["dateTime"] == null
                                ? DateTime.now()
                                : model.convertToDateTime(
                                    model.post.json["dateTime"],
                                  ),
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context),
                              ],
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.date_range_rounded),
                              labelText: 'Date/Time',
                              helperText: 'Enter Date',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          FormBuilderTextField(
                            name: 'location',
                            initialValue: model.post.json["location"] ?? "",
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context),
                                FormBuilderValidators.minLength(context, 3),
                                FormBuilderValidators.maxLength(context, 35),
                              ],
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.location_on),
                              hintText: 'MHC Level 3',
                              labelText: 'Location of Detachment',
                              helperText: 'Enter location',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            maxLength: 35,
                          ),
                          UIHelper.verticalSpaceSmall(),
                          FormBuilderTextField(
                            name: 'mission_profile',
                            initialValue:
                                model.post.json["mission_profile"] ?? "",
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context),
                                FormBuilderValidators.minLength(context, 3),
                                FormBuilderValidators.maxLength(context, 35),
                              ],
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.miscellaneous_services_outlined),
                              hintText: 'N36',
                              labelText: 'Mission Profile',
                              helperText: 'Add mission profile',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            maxLength: 35,
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Missing Items',
                            style: TextStyle(
                              fontSize: 24,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                        ],
                      ),
                      // ), // FormBuilder
                      ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        scrollDirection: Axis.vertical,
                        itemCount: _missingWidgets.length,
                        itemBuilder: (context, index) {
                          // print("missingItemIndex : $missingItemIndex");
                          missingItemIndex = index + 2;
                          return _missingWidgets[index];
                        },
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add_box),
                                Text('Add another missing item'),
                              ],
                            ),
                            onPressed: () {
                              _missingWidgets.add(
                                MissingItem(
                                  index: missingItemIndex,
                                ),
                              );
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.remove_circle),
                                Text('Delete previous missing item'),
                              ],
                            ),
                            onPressed: () {
                              if (missingItemIndex == 2) {
                              } else {
                                _missingWidgets.removeLast();
                              }
                              _formKey.currentState.removeInternalFieldValue(
                                  'missingItemDescription${missingItemIndex - 1}');
                              _formKey.currentState.removeInternalFieldValue(
                                  'missingItemDate${missingItemIndex - 1}');
                              _formKey.currentState.removeInternalFieldValue(
                                  'missingItemDone${missingItemIndex - 1}');

                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Faulty Items ',
                            style: TextStyle(
                              fontSize: 24,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                        ],
                      ),
                      ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        scrollDirection: Axis.vertical,
                        itemCount: _faultyWidgets.length,
                        itemBuilder: (context, index) {
                          faultyItemIndex = index + 2;
                          return _faultyWidgets[index];
                        },
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add_box),
                                Text('Add another missing item'),
                              ],
                            ),
                            onPressed: () {
                              _faultyWidgets.add(
                                FaultyItem(
                                  index: faultyItemIndex,
                                ),
                              );
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.remove_circle),
                                Text('Delete previous missing item'),
                              ],
                            ),
                            onPressed: () {
                              if (faultyItemIndex == 2) {
                              } else {
                                _faultyWidgets.removeLast();
                              }
                              _formKey.currentState.removeInternalFieldValue(
                                  'faultyItemDescription${faultyItemIndex - 1}');
                              _formKey.currentState.removeInternalFieldValue(
                                  'faultyItemDate${faultyItemIndex - 1}');
                              _formKey.currentState.removeInternalFieldValue(
                                  'faultyItemDone${faultyItemIndex - 1}');

                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'FMW1 personnel',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          FMW1personnel(
                            fmw1Personnel: model.post.json["fmw1Personnel"],
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Other personnels',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          OtherPersonnel(
                            otherPersonnel: model.post.json["otherPersonnel"],
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Remarks',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Remarks(
                            remarks: model.post.json["remarks"],
                          ),
                          CompletionStatus(
                            value: model.post.json["slider"],
                          ),
                          UIHelper.verticalSpaceLarge(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

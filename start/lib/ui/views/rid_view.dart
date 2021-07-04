import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewModels/vehicle_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/ui/widgets/completion_status.dart';
import 'package:provider_architecture/ui/widgets/faulty_item.dart';
import 'package:provider_architecture/ui/widgets/fmw1_personnel.dart';
import 'package:provider_architecture/ui/widgets/missing_item.dart';
import 'package:provider_architecture/ui/widgets/other_personnel.dart';
import 'package:provider_architecture/ui/widgets/remarks.dart';
import '../widgets/missing_item.dart';
import '../widgets/global.dart' as global;

class RidView extends StatefulWidget {
  @override
  _RidViewState createState() => _RidViewState();
}

class _RidViewState extends State<RidView> {
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

  int missingItemIndex = 0;
  int faultyItemIndex = 0;

  Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return BaseView<VehicleModel>(
      onModelReady: (model) {
        // Call something on the model,
        // perform any starting logic code we want to use,
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text('RID checklist'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.redo),
              onPressed: () {
                // _formKey.currentState.reset();
                model.readData();
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.save,
          ),
          onPressed: () {
            final validationSuccess = true; // _formKey.currentState.validate();
            if (validationSuccess) {
              _formKey.currentState.save();
              data = _formKey.currentState.value;
              model.requestPermissionAndWriteData(data);
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
                            initialValue: DateTime.now(),
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
                          FMW1personnel(),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Other personnels',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          OtherPersonnel(),
                          UIHelper.verticalSpaceSmall(),
                          Text(
                            'Remarks',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Remarks(),
                          CompletionStatus(),
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

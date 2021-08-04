import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewModels/vehicle_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/ui/views/rid/detachment_detail.dart';
import 'package:provider_architecture/ui/widgets/fmw1_personnel.dart';
import 'package:provider_architecture/ui/widgets/global.dart' as global;
import 'package:provider_architecture/ui/widgets/other_personnel.dart';
import 'package:provider_architecture/ui/widgets/remarks.dart';

/// Shows the RID (1) form, register the most important initial data
class RidView extends StatefulWidget {
  RidView();

  @override
  _RidView createState() => _RidView();
}

class _RidView extends State<RidView> {
  final _formKey = global.formKey;

  Map<String, dynamic> data;

  final saveSnackBar = SnackBar(content: Text('Saved Successfully 🚀'));
  final clearSnackBar = SnackBar(content: Text('Reset done 🔄'));
  final errorSnackBar = SnackBar(content: Text('Fill up required fields❗️ 🔺'));

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
          leading: IconButton(
            onPressed: () {
              setState(() {});
              Navigator.pop(context); // pop current page
              Navigator.pushNamed(context, "/"); // push it back in
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Setting up RID ...'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.restart_alt),
              onPressed: () {
                _formKey.currentState.reset();
                ScaffoldMessenger.of(context).showSnackBar(clearSnackBar);
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          /// Saves the data as a JSON file and writes in the directory.
          ///
          /// Once the data is validated, call the VehicleModel.requestPersmissionAndWriteData().
          /// Show a dialog to confirm the data is saved.
          onPressed: () {
            final validationSuccess = _formKey.currentState.validate();
            if (validationSuccess) {
              _formKey.currentState.save();
              data = _formKey.currentState.value;
              model.requestPermissionAndWriteData(data);
              ScaffoldMessenger.of(context).showSnackBar(saveSnackBar);
            }
          },
          icon: Icon(Icons.thumb_up),
          label: Text('Save'),
          backgroundColor: Colors.pink,
        ),
        body: WillPopScope(
          onWillPop: () async => false,
          child: SafeArea(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: FormBuilder(
                    key: _formKey,
                    child: ListView(
                      // Column
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        DetachmentDetail(),
                        UIHelper.verticalSpaceSmall(),
                        Text(
                          'FMW1 personnel',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        UIHelper.verticalSpaceSmall(),
                        FMW1personnel(
                          fmw1Personnel: "",
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
                          otherPersonnel: "",
                        ),
                        UIHelper.verticalSpaceSmall(),
                        Text(
                          'Remarks i.e vehicle status',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        UIHelper.verticalSpaceSmall(),
                        Remarks(
                          remarks: "",
                        ),
                        UIHelper.verticalSpaceLarge(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

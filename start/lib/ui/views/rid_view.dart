import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewModels/vehicle_model.dart';
import 'package:provider_architecture/ui/views/base_view.dart';

class RidView extends StatefulWidget {
  const RidView();

  @override
  _RidViewState createState() => _RidViewState();
}

class _RidViewState extends State<RidView> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var backgroundColor;
    return BaseView<VehicleModel>(
      // replace LoginModel with VehicleModel
      onModelReady: (model) {
        // Call something on the model,
        // perform any starting logic code we want to use,
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("RID"),
            )
          ],
        ),
      ),
    );
  }
}

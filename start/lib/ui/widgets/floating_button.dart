import 'package:provider_architecture/ui/views/rid_view.dart';
import 'package:provider_architecture/ui/widgets/Key/formKey.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:flutter/material.dart';

class floatingActionButton extends StatelessWidget {
  floatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
      parentButtonBackground: Colors.teal,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(Icons.add),
      childButtons: <UnicornButton>[
        UnicornButton(
          hasLabel: true,
          labelText: "DSD",
          currentButton: FloatingActionButton(
            heroTag: "train",
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.computer),
            onPressed: () {},
          ),
        ),
        // UIHelper.verticalSpaceSmall(),
        UnicornButton(
          hasLabel: true,
          labelText: "TTD",
          currentButton: FloatingActionButton(
            heroTag: "airplane",
            backgroundColor: Colors.green,
            child: Icon(Icons.looks_3),
            onPressed: () {},
          ),
        ),
        UnicornButton(
          hasLabel: true,
          labelText: "RID",
          currentButton: FloatingActionButton(
            heroTag: "RID",
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.radio_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RidView()),
              );
            },
          ),
        ),
      ],
    );
  }
}

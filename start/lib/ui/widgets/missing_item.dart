import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import '../widgets/global.dart' as global;

class MissingItem extends StatefulWidget {
  final int index;

  const MissingItem({
    this.index,
  });

  @override
  _MissingItemState createState() => _MissingItemState();
}

class _MissingItemState extends State<MissingItem> {
  List<Widget> _statusItemWidgets = <Widget>[];
  int statusItemIndex = 1;

  final _formKey = global.formKey;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ColoredBox(
        color: Colors.green[100],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: FormBuilderDateTimePicker(
                    name: 'missingItemDate${widget.index}',
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Date',
                      border: InputBorder.none,
                    ),
                    initialTime: TimeOfDay(hour: 9, minute: 0),
                    initialValue: DateTime.now(),
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(context),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: FormBuilderTextField(
                    name: 'missingItemDescription${widget.index}',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Item Description ${widget.index}',
                    ),
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(context),
                        FormBuilderValidators.max(context, 70),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FormBuilderCheckbox(
                      title: Text(''),
                      name: 'missingItemDone${widget.index}',
                      initialValue: false),
                )
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Status Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Status Action',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              itemCount: _statusItemWidgets.length,
              itemBuilder: (context, index) {
                return _statusItemWidgets[index];
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Icon(Icons.add_circle),
                  onPressed: () {
                    setState(
                      () {
                        String join = "${widget.index}$statusItemIndex";
                        // print(int.parse(join));
                        _statusItemWidgets.add(
                          StatusItem(statusItemIndex: int.parse(join)),
                        );
                        statusItemIndex++;
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(
                      () {
                        _statusItemWidgets.removeLast();
                        statusItemIndex--;
                        String join = "${widget.index}$statusItemIndex";
                        _formKey.currentState.removeInternalFieldValue(
                            'missingStatusItemDate' + join);
                        _formKey.currentState.removeInternalFieldValue(
                            'missingStatusItemDescription$statusItemIndex' +
                                join);
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final int statusItemIndex;
  const StatusItem({Key key, this.statusItemIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: FormBuilderDateTimePicker(
              name: 'missingStatusItemDate$statusItemIndex',
              decoration: InputDecoration(
                labelText: 'Date',
                border: InputBorder.none,
              ),
              initialValue: DateTime.now(),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(context),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: FormBuilderTextField(
              name: 'missingStatusItemDescription$statusItemIndex',
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                labelText: 'Status Action $statusItemIndex',
              ),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.max(context, 70),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

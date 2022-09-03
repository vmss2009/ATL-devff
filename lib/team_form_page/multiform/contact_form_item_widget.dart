import 'package:a_t_l_dev/backend/backend.dart';
import 'package:a_t_l_dev/flutter_flow/flutter_flow_drop_down.dart';
import 'package:a_t_l_dev/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'contact_model.dart';

class ContactFormItemWidget extends StatefulWidget {
  static bool isTrue = false;
  ContactFormItemWidget(
      {Key? key, required this.contactModel, required this.index})
      : super(key: key);

  final int index;
  ContactModel contactModel;
  final state = _ContactFormItemWidgetState();

  @override
  State<StatefulWidget> createState() => _ContactFormItemWidgetState();
}

class _ContactFormItemWidgetState extends State<ContactFormItemWidget> {
  String? dropDownValue2;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${widget.index + 1}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    StreamBuilder<List<StudentDataRecord>>(
                      stream: queryStudentDataRecord(
                        queryBuilder: (studentdataRecord) => studentdataRecord
                            .where('teamLeader', isEqualTo: false),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<StudentDataRecord> dropDownStudentDataRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown(
                          options: dropDownStudentDataRecordList
                              .map((e) => e.firstName!)
                              .toList()
                              .toList(),
                          onChanged: (val) {
                            widget.contactModel.dropdownvalue = val;
                            setState(() => dropDownValue2 = val);
                          },
                          width: 180,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: Colors.black,
                                  ),
                          hintText: 'Please select...',
                          fillColor: Color.fromARGB(255, 180, 170, 170),
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

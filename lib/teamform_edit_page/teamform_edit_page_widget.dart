import 'package:a_t_l_dev/teamform_edit_page/multiform/contact_form_item_widget.dart';
import 'package:a_t_l_dev/teamform_edit_page/multiform/contact_model.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamformEditPageWidget extends StatefulWidget {
  const TeamformEditPageWidget({
    Key? key,
    this.teamName,
    this.teamLeader,
    this.teamMembers,
    this.currentExperiment,
    this.documentRefrence,
  }) : super(key: key);

  final String? teamName;
  final String? teamLeader;
  final String? teamMembers;

  final String? currentExperiment;
  final DocumentReference? documentRefrence;

  @override
  _TeamformEditPageWidgetState createState() => _TeamformEditPageWidgetState();
}

class _TeamformEditPageWidgetState extends State<TeamformEditPageWidget> {
  String? dropDownValue1;
  TextEditingController? textController1;
  String? dropDownValue2;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<ContactFormItemWidget> contactForms = List.empty(growable: true);


  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: widget.teamName);
    textController2 = TextEditingController(text: widget.currentExperiment);
    for(var i = 0; i < widget.teamMembers!.split(",").length; i++){
      print(widget.teamMembers!.split(",")[i]);
      String teamMember = widget.teamMembers!.split(",")[i];
      var contactModel = ContactModel(id: i, dropdownvalue: teamMember);
      contactForms.add(ContactFormItemWidget(contactModel: contactModel, index: i));
    }
  }

  List? onSave() {
    List teammembers = [];
    teammembers =
        contactForms.map((e) => e.contactModel.dropdownvalue!).toList();
    return teammembers;
  }

  onRemove() {
    setState(() {
      if (contactForms.isNotEmpty) {
        contactForms.removeAt(contactForms.length - 1);
      }
    });
  }

  onAdd() {
    setState(() {
      ContactModel _contactModel = ContactModel(id: contactForms.length);
      contactForms.add(
        ContactFormItemWidget(
          index: contactForms.length,
          contactModel: _contactModel,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                TextFormField(
                                  controller: textController1,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF909090),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF909090),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Leader',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: StreamBuilder<List<StudentDataRecord>>(
                                  stream: queryStudentDataRecord(
                                    queryBuilder: (studentDataRecord) =>
                                        studentDataRecord.where('teamLeader',
                                            isEqualTo: true),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<StudentDataRecord>
                                        dropDownStudentDataRecordList =
                                        snapshot.data!;
                                    return FlutterFlowDropDown(
                                      initialOption: dropDownValue1 ??=
                                          widget.teamLeader,
                                      options: dropDownStudentDataRecordList
                                          .map((e) => e.firstName!)
                                          .toList()
                                          .toList(),
                                      onChanged: (val) =>
                                          setState(() => dropDownValue1 = val),
                                      width: double.infinity,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: Colors.black,
                                          ),
                                      hintText: 'Please select...',
                                      fillColor: Colors.white,
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Team members',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: contactForms.isNotEmpty
                                          ? ListView.builder(
                                          itemCount: contactForms.length,
                                          itemBuilder: (_, index) {
                                            return contactForms[index];
                                          })
                                          : const Center(
                                        child: Text(
                                            "Tap on + to add a Team member"),
                                      ),
                                    ),
                                    Row(children: [
                                      IconButton(
                                        onPressed: () {
                                          onAdd();
                                        },
                                        icon: const Icon(Icons.add),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          onRemove();
                                        },
                                        icon: const Icon(Icons.delete),
                                      ),
                                    ])
                                  ],
                                ),
                                height: 300,
                                width: 300,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Tinkering Activity',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              TextFormField(
                                controller: textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Current Tinkering Activity',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF909090),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF909090),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final teamDataUpdateData = {
                          ...createTeamDataRecordData(
                            experiment: textController2!.text,
                            teamLeader: dropDownValue1,
                            teamName: textController1!.text,
                          ),
                          'teamMember': onSave(),
                        };
                        await widget.documentRefrence!
                            .update(teamDataUpdateData);
                        setState(() {
                          textController1?.clear();
                          textController2?.clear();
                        });
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('School Updated Successfully'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      text: 'Update',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color: Colors.white,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

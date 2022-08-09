import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../more_information_student/more_information_student_widget.dart';
import '../student_formeeditpage/student_formeeditpage_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentReportPageWidget extends StatefulWidget {
  const StudentReportPageWidget({Key? key}) : super(key: key);

  @override
  _StudentReportPageWidgetState createState() =>
      _StudentReportPageWidgetState();
}

class _StudentReportPageWidgetState extends State<StudentReportPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        title: Text(
          'School Report',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: FlutterFlowTheme.of(context).title2Family,
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<StudentdataRecord>>(
                stream: queryStudentdataRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<StudentdataRecord> listViewStudentdataRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewStudentdataRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewStudentdataRecord =
                          listViewStudentdataRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MoreInformationStudentWidget(
                                  schoolName:
                                      listViewStudentdataRecord.schoolName,
                                  studentName:
                                      '${listViewStudentdataRecord.firstName} ${listViewStudentdataRecord.lastName}',
                                  studentClass:
                                      listViewStudentdataRecord.studentClass,
                                  email: listViewStudentdataRecord.email,
                                  whatsappContact:
                                      listViewStudentdataRecord.whatsappContact,
                                  aspiration:
                                      listViewStudentdataRecord.aspiration,
                                  isLeader:
                                      listViewStudentdataRecord.teamLeader,
                                  curretTinkeringActivity:
                                      listViewStudentdataRecord
                                          .currentTinkeringActivity,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 125,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      '${listViewStudentdataRecord.firstName} ${listViewStudentdataRecord.lastName}'
                                          .maybeHandleOverflow(
                                        maxChars: 10,
                                        replacement: '…',
                                      ),
                                      style:
                                          FlutterFlowTheme.of(context).title1,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  StudentFormeeditpageWidget(
                                                schoolName:
                                                    listViewStudentdataRecord
                                                        .schoolName,
                                                firstName:
                                                    listViewStudentdataRecord
                                                        .firstName,
                                                lastName:
                                                    listViewStudentdataRecord
                                                        .lastName,
                                                studentClass:
                                                    listViewStudentdataRecord
                                                        .studentClass,
                                                email: currentUserEmail,
                                                whatsappContact:
                                                    listViewStudentdataRecord
                                                        .whatsappContact,
                                                aspiration:
                                                    listViewStudentdataRecord
                                                        .aspiration,
                                                isLeader:
                                                    listViewStudentdataRecord
                                                        .teamLeader,
                                                currentTinkeringActivity:
                                                    listViewStudentdataRecord
                                                        .currentTinkeringActivity,
                                                documentRefrence:
                                                    listViewStudentdataRecord
                                                        .reference,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.delete,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Do you want to delete ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          await listViewStudentdataRecord
                                              .reference
                                              .delete();
                                        }
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  'Current Tinkering Activity : ${listViewStudentdataRecord.currentTinkeringActivity}',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title3Family,
                                        fontSize: 15,
                                      ),
                                ),
                                Text(
                                  'Team Leader : ${functions.convertbooltostring(listViewStudentdataRecord.teamLeader)}',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title3Family,
                                        fontSize: 15,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

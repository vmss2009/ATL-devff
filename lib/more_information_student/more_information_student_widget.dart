import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInformationStudentWidget extends StatefulWidget {
  const MoreInformationStudentWidget({
    Key? key,
    this.schoolName,
    this.studentName,
    this.studentClass,
    this.email,
    this.whatsappContact,
    this.aspiration,
    this.isLeader,
    this.curretTinkeringActivity,
  }) : super(key: key);

  final String? schoolName;
  final String? studentName;
  final String? studentClass;
  final String? email;
  final String? whatsappContact;
  final String? aspiration;
  final bool? isLeader;
  final String? curretTinkeringActivity;

  @override
  _MoreInformationStudentWidgetState createState() =>
      _MoreInformationStudentWidgetState();
}

class _MoreInformationStudentWidgetState
    extends State<MoreInformationStudentWidget> {
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
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xFFF5F5F5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Student school',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.5, 0),
                          child: Text(
                            widget.schoolName!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Name',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.5, 0),
                          child: Text(
                            widget.studentName!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Class',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            widget.studentClass!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Email',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            widget.email!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Whatsapp Contact',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            widget.whatsappContact!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Aspiration',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            widget.aspiration!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Leader',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            functions.convertbooltostring(widget.isLeader),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Current Tinkering Activity',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.7, 0),
                          child: Text(
                            widget.curretTinkeringActivity!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
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

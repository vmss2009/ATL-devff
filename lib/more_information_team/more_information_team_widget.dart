import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInformationTeamWidget extends StatefulWidget {
  const MoreInformationTeamWidget({
    Key? key,
    this.teamName,
    this.teamLeader,
    this.teamMembers,
    this.currentExperiment,
  }) : super(key: key);

  final String? teamName;
  final String? teamLeader;
  final String? teamMembers;
  final String? currentExperiment;

  @override
  _MoreInformationTeamWidgetState createState() =>
      _MoreInformationTeamWidgetState();
}

class _MoreInformationTeamWidgetState extends State<MoreInformationTeamWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'moreInformationTeam',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
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
                              'Name',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.5, 0),
                              child: Text(
                                widget.teamName!,
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
                              alignment: AlignmentDirectional(-0.5, 0),
                              child: Text(
                                widget.teamLeader!,
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
                              'Members',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.7, 0),
                              child: Text(
                                widget.teamMembers!,
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
                                widget.currentExperiment!,
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
        ));
  }
}

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteuserWidget extends StatefulWidget {
  const InviteuserWidget({Key? key}) : super(key: key);

  @override
  _InviteuserWidgetState createState() => _InviteuserWidgetState();
}

class _InviteuserWidgetState extends State<InviteuserWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        title: Text(
          'Invite User',
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
          child: StreamBuilder<List<AtlUsersRecord>>(
            stream: queryAtlUsersRecord(
              queryBuilder: (atlUsersRecord) =>
                  atlUsersRecord.where('role', isEqualTo: 'admin'),
            ),
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
              List<AtlUsersRecord> listViewAtlUsersRecordList =
                  snapshot.data!.where((u) => u.uid != currentUserUid).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewAtlUsersRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewAtlUsersRecord =
                      listViewAtlUsersRecordList[listViewIndex];
                  return InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPageWidget(
                            chatUser: listViewAtlUsersRecord,
                          ),
                        ),
                      );
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text(
                        listViewAtlUsersRecord.displayName!,
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      subtitle: Text(
                        'Admin',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

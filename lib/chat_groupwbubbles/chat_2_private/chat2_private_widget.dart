import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat_groupwbubbles/chat_details_overlay/chat_details_overlay_widget.dart';
import '/chat_groupwbubbles/chat_thread_component/chat_thread_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat2_private_model.dart';
export 'chat2_private_model.dart';

class Chat2PrivateWidget extends StatefulWidget {
  const Chat2PrivateWidget({
    Key? key,
    required this.chatRef,
  }) : super(key: key);

  final ChatsRecord? chatRef;

  @override
  _Chat2PrivateWidgetState createState() => _Chat2PrivateWidgetState();
}

class _Chat2PrivateWidgetState extends State<Chat2PrivateWidget> {
  late Chat2PrivateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chat2PrivateModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      unawaited(
        () async {
          await widget.chatRef!.reference.update({
            ...mapToFirestore(
              {
                'last_message_seen_by':
                    FieldValue.arrayUnion([currentUserReference]),
              },
            ),
          });
        }(),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed(
                'Chat',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 230),
                  ),
                },
              );
            },
          ),
          title: FutureBuilder<UsersRecord>(
            future: UsersRecord.getDocumentOnce(widget.chatRef!.users
                .where((e) => e != currentUserReference)
                .toList()
                .first),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              final conditionalBuilderUsersRecord = snapshot.data!;
              return Builder(
                builder: (context) {
                  if (widget.chatRef!.users.length <= 2) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (conditionalBuilderUsersRecord.photoUrl != null &&
                            conditionalBuilderUsersRecord.photoUrl != '')
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Container(
                                width: 44.0,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent1,
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      conditionalBuilderUsersRecord.photoUrl,
                                      width: 44.0,
                                      height: 44.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  conditionalBuilderUsersRecord.displayName,
                                  'Ghost User',
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  valueOrDefault<String>(
                                    conditionalBuilderUsersRecord.email,
                                    'casper@ghost.io',
                                  ).maybeHandleOverflow(
                                    maxChars: 40,
                                    replacement: '…',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                  minFontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 12.0, 4.0),
                          child: Container(
                            width: 54.0,
                            height: 44.0,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        if (conditionalBuilderUsersRecord
                                                    .photoUrl !=
                                                null &&
                                            conditionalBuilderUsersRecord
                                                    .photoUrl !=
                                                '') {
                                          return Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 200),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 200),
                                                imageUrl:
                                                    valueOrDefault<String>(
                                                  conditionalBuilderUsersRecord
                                                      .photoUrl,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-flow-at3mts/assets/jozbfglfd548/flutterflow_future%402x.jpg',
                                                ),
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  conditionalBuilderUsersRecord
                                                      .displayName,
                                                  'A',
                                                ).maybeHandleOverflow(
                                                    maxChars: 1),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    conditionalBuilderUsersRecord.displayName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              );
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 12.0,
                borderWidth: 2.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.more_vert,
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 24.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                    barrierColor: Color(0x00FFFFFF),
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => _model.unfocusNode.canRequestFocus
                            ? FocusScope.of(context)
                                .requestFocus(_model.unfocusNode)
                            : FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: ChatDetailsOverlayWidget(
                            chatRef: widget.chatRef!,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.chatThreadComponentModel,
            updateCallback: () => setState(() {}),
            updateOnChange: true,
            child: ChatThreadComponentWidget(
              chatRef: widget.chatRef,
            ),
          ),
        ),
      ),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.emailAddressCreateController ??= TextEditingController();
    _model.emailAddressCreateFocusNode ??= FocusNode();

    _model.passwordCreateController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Container(
                  width: double.infinity,
                  height: 230.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).tertiary
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 72.0),
                    child: Text(
                      'IntelliCane',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Urbanist',
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 170.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).width >= 768.0
                                ? 530.0
                                : 630.0,
                            constraints: BoxConstraints(
                              maxWidth: 570.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: FlutterFlowButtonTabBar(
                                      useToggleButtonStyle: true,
                                      isScrollable: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                      unselectedLabelStyle: TextStyle(),
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      unselectedBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 12.0,
                                      elevation: 0.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              32.0, 0.0, 32.0, 0.0),
                                      tabs: [
                                        Tab(
                                          text: 'Patient',
                                        ),
                                        Tab(
                                          text: 'Nurse',
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (i) async {
                                        [() async {}, () async {}][i]();
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.tabBarController,
                                      children: [
                                        Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 16.0, 24.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                    ))
                                                      Container(
                                                        width: 230.0,
                                                        height: 16.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                    Text(
                                                      'Login as Patient',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  24.0),
                                                      child: Text(
                                                        'Let\'s get started by filling out the form below.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  16.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .emailAddressController,
                                                        focusNode: _model
                                                            .emailAddressFocusNode,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .sentences,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'User Name',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent4,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        validator: _model
                                                            .emailAddressControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  16.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .passwordController,
                                                        focusNode: _model
                                                            .passwordFocusNode,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .sentences,
                                                        obscureText: !_model
                                                            .passwordVisibility,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Password',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent4,
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                              () => _model
                                                                      .passwordVisibility =
                                                                  !_model
                                                                      .passwordVisibility,
                                                            ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.passwordVisibility
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        validator: _model
                                                            .passwordControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            GoRouter.of(context)
                                                                .prepareAuthEvent();

                                                            final user =
                                                                await authManager
                                                                    .signInWithEmail(
                                                              context,
                                                              _model
                                                                  .emailAddressController
                                                                  .text,
                                                              _model
                                                                  .passwordController
                                                                  .text,
                                                            );
                                                            if (user == null) {
                                                              return;
                                                            }

                                                            context.goNamedAuth(
                                                                'Home',
                                                                context
                                                                    .mounted);
                                                          },
                                                          text: 'Login',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 230.0,
                                                            height: 52.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        12.0),
                                                            child: Text(
                                                              'Or login with',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Wrap(
                                                            spacing: 16.0,
                                                            runSpacing: 0.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .center,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    final user =
                                                                        await authManager
                                                                            .signInWithGoogle(context);
                                                                    if (user ==
                                                                        null) {
                                                                      return;
                                                                    }

                                                                    context.goNamedAuth(
                                                                        'Home',
                                                                        context
                                                                            .mounted);
                                                                  },
                                                                  text:
                                                                      'Continue with Google',
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .google,
                                                                    size: 20.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        230.0,
                                                                    height:
                                                                        44.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                    hoverColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                              isAndroid
                                                                  ? Container()
                                                                  : Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          GoRouter.of(context)
                                                                              .prepareAuthEvent();
                                                                          final user =
                                                                              await authManager.signInWithApple(context);
                                                                          if (user ==
                                                                              null) {
                                                                            return;
                                                                          }

                                                                          context.goNamedAuth(
                                                                              'Home',
                                                                              context.mounted);
                                                                        },
                                                                        text:
                                                                            'Continue with Apple',
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .apple,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              230.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(40.0),
                                                                          hoverColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                      ),
                                                                    ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              'Forgot Password?',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 44.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        32.0,
                                                                        0.0,
                                                                        32.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Color(
                                                                          0xFF006AFF),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'sign_up_register');
                                                          },
                                                          text:
                                                              'Create an Account',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 22.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        32.0,
                                                                        0.0,
                                                                        32.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Color(
                                                                          0xFF006CFF),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation1']!),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 16.0, 24.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                ))
                                                  Container(
                                                    width: 230.0,
                                                    height: 16.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                Text(
                                                  'Login as Nurse',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 24.0),
                                                  child: Text(
                                                    'Let\'s get started by filling out the form below.',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 16.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressCreateController,
                                                    focusNode: _model
                                                        .emailAddressCreateFocusNode,
                                                    textCapitalization:
                                                        TextCapitalization
                                                            .sentences,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Username',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .emailAddressCreateControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 16.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordCreateController,
                                                    focusNode: _model
                                                        .passwordCreateFocusNode,
                                                    textCapitalization:
                                                        TextCapitalization
                                                            .sentences,
                                                    obscureText: !_model
                                                        .passwordCreateVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _model
                                                                  .passwordCreateVisibility =
                                                              !_model
                                                                  .passwordCreateVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordCreateVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .passwordCreateControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();

                                                        final user =
                                                            await authManager
                                                                .signInWithEmail(
                                                          context,
                                                          _model
                                                              .emailAddressCreateController
                                                              .text,
                                                          _model
                                                              .passwordCreateController
                                                              .text,
                                                        );
                                                        if (user == null) {
                                                          return;
                                                        }

                                                        context.goNamedAuth(
                                                            'Home',
                                                            context.mounted);
                                                      },
                                                      text: 'Login',
                                                      options: FFButtonOptions(
                                                        width: 230.0,
                                                        height: 52.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 12.0),
                                                    child: Text(
                                                      'Or login with',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Wrap(
                                                    spacing: 16.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.center,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .center,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.center,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            GoRouter.of(context)
                                                                .prepareAuthEvent();
                                                            final user =
                                                                await authManager
                                                                    .signInWithGoogle(
                                                                        context);
                                                            if (user == null) {
                                                              return;
                                                            }

                                                            context.goNamedAuth(
                                                                'Home',
                                                                context
                                                                    .mounted);
                                                          },
                                                          text:
                                                              'Continue with Google',
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .google,
                                                            size: 20.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 230.0,
                                                            height: 44.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                          ),
                                                        ),
                                                      ),
                                                      isAndroid
                                                          ? Container()
                                                          : Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();
                                                                  final user =
                                                                      await authManager
                                                                          .signInWithApple(
                                                                              context);
                                                                  if (user ==
                                                                      null) {
                                                                    return;
                                                                  }

                                                                  context.goNamedAuth(
                                                                      'Home',
                                                                      context
                                                                          .mounted);
                                                                },
                                                                text:
                                                                    'Continue with Apple',
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .apple,
                                                                  size: 20.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 230.0,
                                                                  height: 44.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                              ),
                                                            ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'ForgotPassword');
                                                      },
                                                      text: 'Forgot Password?',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    32.0,
                                                                    0.0,
                                                                    32.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF006AFF),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'sign_up_register');
                                                      },
                                                      text: 'Create an Account',
                                                      options: FFButtonOptions(
                                                        height: 22.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    32.0,
                                                                    0.0,
                                                                    32.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF006CFF),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation2']!),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

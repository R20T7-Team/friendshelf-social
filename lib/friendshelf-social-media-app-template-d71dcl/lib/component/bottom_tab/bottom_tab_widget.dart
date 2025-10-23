import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_tab_model.dart';
export 'bottom_tab_model.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({super.key});

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  late BottomTabModel _model;

  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomTabModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: !(isWeb
          ? MediaQuery.viewInsetsOf(context).bottom > 0
          : _isKeyboardVisible),
      child: Container(
        width: double.infinity,
        height: 66.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().bottomTab != BottomTab.Home) {
                    context.pushNamed(HomeWidget.routeName);

                    FFAppState().bottomTab = BottomTab.Home;
                    safeSetState(() {});
                  }
                },
                child: Container(
                  width: 61.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState().bottomTab == BottomTab.Home
                                ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/frg9q43zdb0c/home.png'
                                : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/xk1kxmtaye2y/group.png',
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/isvtz11uveyy/home_(1).svg',
                          ),
                          width: 18.0,
                          height: 18.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FFAppState().bottomTab == BottomTab.Home
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).bottomTabGrey,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (FFAppState().bottomTab != BottomTab.Shelf) {
                  context.pushNamed(ShelfsWidget.routeName);

                  FFAppState().bottomTab = BottomTab.Shelf;
                  safeSetState(() {});
                }
              },
              child: Container(
                width: 61.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          FFAppState().bottomTab == BottomTab.Shelf
                              ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/yy9wqu62t20l/search-status.png'
                              : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/beuh542g7an8/search-status.png',
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/beuh542g7an8/search-status.png',
                        ),
                        width: 18.0,
                        height: 18.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Shelf',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.readexPro(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FFAppState().bottomTab == BottomTab.Shelf
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).bottomTabGrey,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (FFAppState().bottomTab != BottomTab.CreateShelf) {
                  context.pushNamed(
                    CreateWidget.routeName,
                    queryParameters: {
                      'getStarted': serializeParam(
                        false,
                        ParamType.bool,
                      ),
                    }.withoutNulls,
                  );

                  FFAppState().bottomTab = BottomTab.CreateShelf;
                  safeSetState(() {});
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: SvgPicture.asset(
                  'assets/images/Frame_1171276349.svg',
                  width: 46.0,
                  height: 46.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (FFAppState().bottomTab != BottomTab.Messages) {
                  context.pushNamed(ChatsWidget.routeName);

                  FFAppState().bottomTab = BottomTab.Messages;
                  safeSetState(() {});
                }
              },
              child: Container(
                width: 61.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          FFAppState().bottomTab == BottomTab.Messages
                              ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/trq7d8umc8uz/message-notif_(1).png'
                              : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/byviaqfzon5k/message-notif.png',
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/byviaqfzon5k/message-notif.png',
                        ),
                        width: 18.0,
                        height: 18.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Messages',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.readexPro(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FFAppState().bottomTab == BottomTab.Messages
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).bottomTabGrey,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().bottomTab != BottomTab.Profile) {
                    context.pushNamed(MyProfileWidget.routeName);

                    FFAppState().bottomTab = BottomTab.Profile;
                    safeSetState(() {});
                  }
                },
                child: Container(
                  width: 61.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState().bottomTab == BottomTab.Profile
                                ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/ga9xqulafy67/user-tick.png'
                                : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/o1jitjebdhgg/user-tick.png',
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/friend-shelf-4pycao/assets/o1jitjebdhgg/user-tick.png',
                          ),
                          width: 18.0,
                          height: 18.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Profile',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FFAppState().bottomTab == BottomTab.Profile
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).bottomTabGrey,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

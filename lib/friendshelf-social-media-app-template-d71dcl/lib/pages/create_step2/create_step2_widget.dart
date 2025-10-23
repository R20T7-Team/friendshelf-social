import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/component/app_bar/app_bar_widget.dart';
import '/component/popup_create_your_own/popup_create_your_own_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_step2_model.dart';
export 'create_step2_model.dart';

class CreateStep2Widget extends StatefulWidget {
  const CreateStep2Widget({super.key});

  static String routeName = 'CreateStep2';
  static String routePath = 'createStep2';

  @override
  State<CreateStep2Widget> createState() => _CreateStep2WidgetState();
}

class _CreateStep2WidgetState extends State<CreateStep2Widget> {
  late CreateStep2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateStep2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.appBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppBarWidget(),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(CreateStep1Widget.routeName);
                              },
                              child: Container(
                                width: 41.0,
                                height: 41.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color(0x4F04113A),
                                  ),
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'What are you into? Let\'s tailor this for you.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            'You can select multiple categories. ',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Select',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                constraints: BoxConstraints(
                                  minHeight: 40.0,
                                ),
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: StreamBuilder<
                                      List<ShelfCategoriesRecord>>(
                                    stream: queryShelfCategoriesRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ShelfCategoriesRecord>
                                          listViewShelfCategoriesRecordList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            listViewShelfCategoriesRecordList
                                                .length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewShelfCategoriesRecord =
                                              listViewShelfCategoriesRecordList[
                                                  listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                  .ListOfCategories
                                                  .contains(
                                                      listViewShelfCategoriesRecord
                                                          .reference)) {
                                                FFAppState()
                                                    .removeFromListOfCategories(
                                                        listViewShelfCategoriesRecord
                                                            .reference);
                                                safeSetState(() {});
                                              } else {
                                                FFAppState().addToListOfCategories(
                                                    listViewShelfCategoriesRecord
                                                        .reference);
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              height: 25.0,
                                              constraints: BoxConstraints(
                                                maxHeight: 30.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: FFAppState()
                                                        .ListOfCategories
                                                        .contains(
                                                            listViewShelfCategoriesRecord
                                                                .reference)
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .buttonBackground,
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 8.0, 10.0, 8.0),
                                                  child: Text(
                                                    listViewShelfCategoriesRecord
                                                        .title,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Didn’t find your category',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 110.0,
                              height: 26.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Builder(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Container(
                                              width: 300.0,
                                              child: PopupCreateYourOwnWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  text: 'Create Your Own',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).dullOrange,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (FFAppState()
                                      .ListOfCategories
                                      .isNotEmpty) {
                                    if (FFAppState().EditShelf) {
                                      await FFAppState()
                                          .CreatingShelf
                                          .createdShelfRef!
                                          .update({
                                        ...createShelfRecordData(
                                          name: FFAppState().CreatingShelf.name,
                                          aboutShelf: FFAppState()
                                              .CreatingShelf
                                              .aboutShelf,
                                          type: FFAppState().CreatingShelf.type,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'ListOfCategories':
                                                FFAppState().ListOfCategories,
                                          },
                                        ),
                                      });
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Success'),
                                            content: Text(
                                                'This shelf has been updated'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      _model.shelfs =
                                          await queryRecommendationRecordOnce(
                                        queryBuilder: (recommendationRecord) =>
                                            recommendationRecord.where(
                                          'Related_Shelf',
                                          isEqualTo: FFAppState()
                                              .CreatingShelf
                                              .createdShelfRef,
                                        ),
                                      );
                                      _model.itr = 0;
                                      safeSetState(() {});
                                      while (
                                          _model.itr < _model.shelfs!.length) {
                                        await _model.shelfs!
                                            .elementAtOrNull(_model.itr)!
                                            .reference
                                            .update(
                                                createRecommendationRecordData(
                                              type: FFAppState()
                                                  .CreatingShelf
                                                  .type,
                                            ));
                                        _model.itr = _model.itr + 1;
                                        safeSetState(() {});
                                      }

                                      context.pushNamed(ShelfsWidget.routeName);

                                      FFAppState().EditShelf = false;
                                      FFAppState().ListOfCategories = [];
                                      FFAppState().CreatingShelf = ShelfStruct
                                          .fromSerializableMap(jsonDecode(
                                              '{\"ListOfCategories\":\"[\\\"/Shelf_Categories/3PPrsoQQVRHW3MyczYoY\\\"]\",\"newwTest\":\"[]\"}'));
                                      safeSetState(() {});
                                    } else {
                                      var shelfRecordReference =
                                          ShelfRecord.collection.doc();
                                      await shelfRecordReference.set({
                                        ...createShelfRecordData(
                                          name: FFAppState().CreatingShelf.name,
                                          aboutShelf: FFAppState()
                                              .CreatingShelf
                                              .aboutShelf,
                                          relatedUser: currentUserReference,
                                          type: FFAppState().CreatingShelf.type,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'ListOfCategories':
                                                FFAppState().ListOfCategories,
                                            'Created_Date':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      _model.okman =
                                          ShelfRecord.getDocumentFromData({
                                        ...createShelfRecordData(
                                          name: FFAppState().CreatingShelf.name,
                                          aboutShelf: FFAppState()
                                              .CreatingShelf
                                              .aboutShelf,
                                          relatedUser: currentUserReference,
                                          type: FFAppState().CreatingShelf.type,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'ListOfCategories':
                                                FFAppState().ListOfCategories,
                                            'Created_Date': DateTime.now(),
                                          },
                                        ),
                                      }, shelfRecordReference);
                                      FFAppState().updateCreatingShelfStruct(
                                        (e) => e
                                          ..listOfCategories = _model
                                              .okman!.listOfCategories
                                              .toList()
                                          ..createdShelfRef =
                                              _model.okman?.reference,
                                      );
                                      safeSetState(() {});

                                      context
                                          .goNamed(CreateStep3Widget.routeName);
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('No categories selected'),
                                          content: Text(
                                              'Please select at least one category'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Hide'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: FFAppState().EditShelf
                                    ? 'Save Changings'
                                    : 'Next',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 20.0))
                            .addToStart(SizedBox(height: 15.0)),
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

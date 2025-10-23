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
import 'create_step2_widget.dart' show CreateStep2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateStep2Model extends FlutterFlowModel<CreateStep2Widget> {
  ///  Local state fields for this page.

  int itr = 0;

  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<RecommendationRecord>? shelfs;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShelfRecord? okman;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}

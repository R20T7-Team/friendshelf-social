import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/component/delete_shelf/delete_shelf_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'shelf_view_widget.dart' show ShelfViewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShelfViewModel extends FlutterFlowModel<ShelfViewWidget> {
  ///  Local state fields for this page.

  ShelfViewTabs? tab = ShelfViewTabs.About;

  RecommendationRecord? forActions;

  ///  State fields for stateful widgets in this page.

  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    bottomTabModel.dispose();
  }
}

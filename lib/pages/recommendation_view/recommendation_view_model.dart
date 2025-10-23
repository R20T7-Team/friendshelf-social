import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/component/delete_recomendation/delete_recomendation_widget.dart';
import '/component/member_requests/member_requests_widget.dart';
import '/component/popup_add_comment/popup_add_comment_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'recommendation_view_widget.dart' show RecommendationViewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class RecommendationViewModel
    extends FlutterFlowModel<RecommendationViewWidget> {
  ///  Local state fields for this page.

  ShelfViewTabs? tab = ShelfViewTabs.About;

  RecommendationRecord? forActions;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ShelfRecord? shelff;
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

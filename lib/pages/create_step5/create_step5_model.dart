import '/component/app_bar/app_bar_widget.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'create_step5_widget.dart' show CreateStep5Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class CreateStep5Model extends FlutterFlowModel<CreateStep5Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    bottomTabModel.dispose();
  }
}

import '/backend/backend.dart';
import '/component/app_bar/app_bar_widget.dart';
import '/component/bottom_sheet_create_s3/bottom_sheet_create_s3_widget.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/component/dropdown_category/dropdown_category_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'create_step3_widget.dart' show CreateStep3Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateStep3Model extends FlutterFlowModel<CreateStep3Widget> {
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

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'popup_create_your_own_widget.dart' show PopupCreateYourOwnWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopupCreateYourOwnModel
    extends FlutterFlowModel<PopupCreateYourOwnWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeTextController;
  String? Function(BuildContext, String?)? typeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    typeFocusNode?.dispose();
    typeTextController?.dispose();
  }
}

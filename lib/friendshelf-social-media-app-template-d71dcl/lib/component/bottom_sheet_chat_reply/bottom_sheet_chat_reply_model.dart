import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'bottom_sheet_chat_reply_widget.dart' show BottomSheetChatReplyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomSheetChatReplyModel
    extends FlutterFlowModel<BottomSheetChatReplyWidget> {
  ///  Local state fields for this component.

  int? showGroup = 1;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for WriteMessageHere widget.
  FocusNode? writeMessageHereFocusNode;
  TextEditingController? writeMessageHereTextController;
  String? Function(BuildContext, String?)?
      writeMessageHereTextControllerValidator;
  String? _writeMessageHereTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    writeMessageHereTextControllerValidator =
        _writeMessageHereTextControllerValidator;
  }

  @override
  void dispose() {
    writeMessageHereFocusNode?.dispose();
    writeMessageHereTextController?.dispose();
  }
}

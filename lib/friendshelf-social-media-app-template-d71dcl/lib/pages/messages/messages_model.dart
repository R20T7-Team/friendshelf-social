import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
  ///  Local state fields for this page.

  PublicVsCollaborative? tab = PublicVsCollaborative.Public;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomTabModel.dispose();
  }
}

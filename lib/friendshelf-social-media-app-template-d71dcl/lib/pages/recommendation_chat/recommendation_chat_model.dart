import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/component/bottom_sheet_chat_reply/bottom_sheet_chat_reply_widget.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/component/delete_message/delete_message_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'recommendation_chat_widget.dart' show RecommendationChatWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecommendationChatModel
    extends FlutterFlowModel<RecommendationChatWidget> {
  ///  Local state fields for this page.

  ShelfViewTabs? tab = ShelfViewTabs.About;

  bool optionsMessage = false;

  MessagesRecord? messageForOption;

  bool replying = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MainListView widget.
  ScrollController? mainListViewScrollController;
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

  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    mainListViewScrollController = ScrollController();
    writeMessageHereTextControllerValidator =
        _writeMessageHereTextControllerValidator;
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    mainListViewScrollController?.dispose();
    writeMessageHereFocusNode?.dispose();
    writeMessageHereTextController?.dispose();

    bottomTabModel.dispose();
  }
}

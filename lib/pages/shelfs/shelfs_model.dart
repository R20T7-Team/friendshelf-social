import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/component/bottom_tab/bottom_tab_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'shelfs_widget.dart' show ShelfsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShelfsModel extends FlutterFlowModel<ShelfsWidget> {
  ///  Local state fields for this page.

  PublicVsCollaborative? tab = PublicVsCollaborative.Public;

  List<DocumentReference> categoryfilters = [];
  void addToCategoryfilters(DocumentReference item) =>
      categoryfilters.add(item);
  void removeFromCategoryfilters(DocumentReference item) =>
      categoryfilters.remove(item);
  void removeAtIndexFromCategoryfilters(int index) =>
      categoryfilters.removeAt(index);
  void insertAtIndexInCategoryfilters(int index, DocumentReference item) =>
      categoryfilters.insert(index, item);
  void updateCategoryfiltersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      categoryfilters[index] = updateFn(categoryfilters[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for seachShelf widget.
  FocusNode? seachShelfFocusNode;
  TextEditingController? seachShelfTextController;
  String? Function(BuildContext, String?)? seachShelfTextControllerValidator;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    seachShelfFocusNode?.dispose();
    seachShelfTextController?.dispose();

    bottomTabModel.dispose();
  }
}

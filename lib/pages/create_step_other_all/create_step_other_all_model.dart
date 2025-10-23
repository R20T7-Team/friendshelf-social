import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/component/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'create_step_other_all_widget.dart' show CreateStepOtherAllWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateStepOtherAllModel
    extends FlutterFlowModel<CreateStepOtherAllWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading_imageOtherRecommendation = false;
  FFUploadedFile uploadedLocalFile_imageOtherRecommendation =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imageOtherRecommendation = '';

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for YourTake widget.
  FocusNode? yourTakeFocusNode;
  TextEditingController? yourTakeTextController;
  String? Function(BuildContext, String?)? yourTakeTextControllerValidator;
  String? _yourTakeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RecommendationRecord? createdRecommendation;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    nameTextControllerValidator = _nameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    yourTakeTextControllerValidator = _yourTakeTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    yourTakeFocusNode?.dispose();
    yourTakeTextController?.dispose();
  }
}

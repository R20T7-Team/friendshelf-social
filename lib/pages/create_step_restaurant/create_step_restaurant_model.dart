import '/component/app_bar/app_bar_widget.dart';
import '/component/bottom_sheet_create_s3/bottom_sheet_create_s3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_step_restaurant_widget.dart' show CreateStepRestaurantWidget;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateStepRestaurantModel
    extends FlutterFlowModel<CreateStepRestaurantWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for NamRecomendationssssaa widget.
  FocusNode? namRecomendationssssaaFocusNode;
  TextEditingController? namRecomendationssssaaTextController;
  String? Function(BuildContext, String?)?
      namRecomendationssssaaTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for Recommendation widget.
  FocusNode? recommendationFocusNode;
  TextEditingController? recommendationTextController;
  String? Function(BuildContext, String?)?
      recommendationTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    namRecomendationssssaaFocusNode?.dispose();
    namRecomendationssssaaTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    recommendationFocusNode?.dispose();
    recommendationTextController?.dispose();
  }
}

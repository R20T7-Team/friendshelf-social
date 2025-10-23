import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'bottom_sheet_create_s3_widget.dart' show BottomSheetCreateS3Widget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomSheetCreateS3Model
    extends FlutterFlowModel<BottomSheetCreateS3Widget> {
  ///  Local state fields for this component.

  int? showGroup = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress_Create widget.
  String? emailAddressCreateValue1;
  FormFieldController<String>? emailAddressCreateValueController1;
  // State field(s) for emailAddress_Create widget.
  String? emailAddressCreateValue2;
  FormFieldController<String>? emailAddressCreateValueController2;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode1;
  TextEditingController? emailAddressCreateTextController1;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController1Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode2;
  TextEditingController? emailAddressCreateTextController2;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController2Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode3;
  TextEditingController? emailAddressCreateTextController3;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressCreateFocusNode1?.dispose();
    emailAddressCreateTextController1?.dispose();

    emailAddressCreateFocusNode2?.dispose();
    emailAddressCreateTextController2?.dispose();

    emailAddressCreateFocusNode3?.dispose();
    emailAddressCreateTextController3?.dispose();
  }
}

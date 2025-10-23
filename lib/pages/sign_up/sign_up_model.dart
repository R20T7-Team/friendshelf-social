import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailWithEmail widget.
  FocusNode? emailWithEmailFocusNode;
  TextEditingController? emailWithEmailTextController;
  String? Function(BuildContext, String?)?
      emailWithEmailTextControllerValidator;
  String? _emailWithEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passworWithEmail widget.
  FocusNode? passworWithEmailFocusNode;
  TextEditingController? passworWithEmailTextController;
  late bool passworWithEmailVisibility;
  String? Function(BuildContext, String?)?
      passworWithEmailTextControllerValidator;
  String? _passworWithEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    emailWithEmailTextControllerValidator =
        _emailWithEmailTextControllerValidator;
    passworWithEmailVisibility = false;
    passworWithEmailTextControllerValidator =
        _passworWithEmailTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailWithEmailFocusNode?.dispose();
    emailWithEmailTextController?.dispose();

    passworWithEmailFocusNode?.dispose();
    passworWithEmailTextController?.dispose();
  }
}

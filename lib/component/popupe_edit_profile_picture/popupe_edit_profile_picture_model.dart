import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'popupe_edit_profile_picture_widget.dart'
    show PopupeEditProfilePictureWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopupeEditProfilePictureModel
    extends FlutterFlowModel<PopupeEditProfilePictureWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_imageProfilePicture = false;
  FFUploadedFile uploadedLocalFile_imageProfilePicture =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imageProfilePicture = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

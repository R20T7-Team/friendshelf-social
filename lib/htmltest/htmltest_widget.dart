import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'htmltest_model.dart';
export 'htmltest_model.dart';

class HtmltestWidget extends StatefulWidget {
  const HtmltestWidget({super.key});

  static String routeName = 'htmltest';
  static String routePath = 'htmltest';

  @override
  State<HtmltestWidget> createState() => _HtmltestWidgetState();
}

class _HtmltestWidgetState extends State<HtmltestWidget> {
  late HtmltestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HtmltestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Html(
                    data:
                        '<!DOCTYPE html>\n<html>\n<head>\n    <title>Colored Divs and Button</title>\n    <style>\n        .red {\n            background-color: red;\n            color: white;\n            padding: 20px;\n            margin: 10px;\n        }\n        .green {\n            background-color: orange;\n            color: white;\n            padding: 20px;\n            margin: 10px;\n        }\n        .blue {\n            background-color: blue;\n            color: white;\n            padding: 20px;\n            margin: 10px;\n        }\n        .yellow {\n            background-color: yellow;\n            color: black;\n            padding: 20px;\n            margin: 10px;\n        }\n        .black-button {\n            background-color: black;\n            color: white;\n            border: none;\n            padding: 10px 20px;\n            font-size: 16px;\n            cursor: pointer;\n            margin: 10px;\n        }\n    </style>\n</head>\n<body>\n<div>\n    <div class=\"red\">This is a red div</div>\n    <div class=\"green\">This is a green div</div>\n    <div class=\"blue\">This is a blue div</div>\n    <div class=\"yellow\">This is a yellow div</div>\n    <button class=\"black-button\">Click Me</button>\n<div>\n</body>\n</html>\n',
                    onLinkTap: (url, _, __) => launchURL(url!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

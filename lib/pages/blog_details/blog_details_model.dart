import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/blogsmallcard/blogsmallcard_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'blog_details_widget.dart' show BlogDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogDetailsModel extends FlutterFlowModel<BlogDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pATHLogoModel = createModel(context, () => PATHLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pATHLogoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

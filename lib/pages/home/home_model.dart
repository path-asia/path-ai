import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/components/course_card/course_card_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  int pageViewIndex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for CourseCard dynamic component.
  late FlutterFlowDynamicModels<CourseCardModel> courseCardModels1;
  // Models for CourseCard dynamic component.
  late FlutterFlowDynamicModels<CourseCardModel> courseCardModels2;
  // Models for CourseCard dynamic component.
  late FlutterFlowDynamicModels<CourseCardModel> courseCardModels3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pATHLogoModel = createModel(context, () => PATHLogoModel());
    courseCardModels1 = FlutterFlowDynamicModels(() => CourseCardModel());
    courseCardModels2 = FlutterFlowDynamicModels(() => CourseCardModel());
    courseCardModels3 = FlutterFlowDynamicModels(() => CourseCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pATHLogoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    courseCardModels1.dispose();
    courseCardModels2.dispose();
    courseCardModels3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

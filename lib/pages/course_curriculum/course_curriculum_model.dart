import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'course_curriculum_widget.dart' show CourseCurriculumWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class CourseCurriculumModel extends FlutterFlowModel<CourseCurriculumWidget> {
  ///  Local state fields for this page.

  CourseSectionStruct? selectedSection;
  void updateSelectedSectionStruct(Function(CourseSectionStruct) updateFn) =>
      updateFn(selectedSection ??= CourseSectionStruct());

  CourseChapterStruct? selectedChapter;
  void updateSelectedChapterStruct(Function(CourseChapterStruct) updateFn) =>
      updateFn(selectedChapter ??= CourseChapterStruct());

  int selectedChapterNo = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;
  String currentPageLink = '';
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pATHLogoModel = createModel(context, () => PATHLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pATHLogoModel.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

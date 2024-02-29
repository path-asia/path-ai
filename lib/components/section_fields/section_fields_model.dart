import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/chapter_fields/chapter_fields_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'section_fields_widget.dart' show SectionFieldsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionFieldsModel extends FlutterFlowModel<SectionFieldsWidget> {
  ///  Local state fields for this component.

  List<CourseChapterStruct> sectionChapters = [];
  void addToSectionChapters(CourseChapterStruct item) =>
      sectionChapters.add(item);
  void removeFromSectionChapters(CourseChapterStruct item) =>
      sectionChapters.remove(item);
  void removeAtIndexFromSectionChapters(int index) =>
      sectionChapters.removeAt(index);
  void insertAtIndexInSectionChapters(int index, CourseChapterStruct item) =>
      sectionChapters.insert(index, item);
  void updateSectionChaptersAtIndex(
          int index, Function(CourseChapterStruct) updateFn) =>
      sectionChapters[index] = updateFn(sectionChapters[index]);

  bool sectionAdded = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Models for ChapterFields dynamic component.
  late FlutterFlowDynamicModels<ChapterFieldsModel> chapterFieldsModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    chapterFieldsModels = FlutterFlowDynamicModels(() => ChapterFieldsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    chapterFieldsModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

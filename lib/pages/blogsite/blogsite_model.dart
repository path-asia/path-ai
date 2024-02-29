import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_iblogcard/a_iblogcard_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'blogsite_widget.dart' show BlogsiteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogsiteModel extends FlutterFlowModel<BlogsiteWidget> {
  ///  Local state fields for this page.

  List<AiBlogsRecord> listBlog = [];
  void addToListBlog(AiBlogsRecord item) => listBlog.add(item);
  void removeFromListBlog(AiBlogsRecord item) => listBlog.remove(item);
  void removeAtIndexFromListBlog(int index) => listBlog.removeAt(index);
  void insertAtIndexInListBlog(int index, AiBlogsRecord item) =>
      listBlog.insert(index, item);
  void updateListBlogAtIndex(int index, Function(AiBlogsRecord) updateFn) =>
      listBlog[index] = updateFn(listBlog[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Blogsite widget.
  List<AiBlogsRecord>? firstListBlog;
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pATHLogoModel = createModel(context, () => PATHLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pATHLogoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

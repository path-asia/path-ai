import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_i_tool_card/a_i_tool_card_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/components/top_a_i_tool_card/top_a_i_tool_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_page_widget.dart' show FilterPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class FilterPageModel extends FlutterFlowModel<FilterPageWidget> {
  ///  Local state fields for this page.

  List<AiToolsRecord> filteredAITools = [];
  void addToFilteredAITools(AiToolsRecord item) => filteredAITools.add(item);
  void removeFromFilteredAITools(AiToolsRecord item) =>
      filteredAITools.remove(item);
  void removeAtIndexFromFilteredAITools(int index) =>
      filteredAITools.removeAt(index);
  void insertAtIndexInFilteredAITools(int index, AiToolsRecord item) =>
      filteredAITools.insert(index, item);
  void updateFilteredAIToolsAtIndex(
          int index, Function(AiToolsRecord) updateFn) =>
      filteredAITools[index] = updateFn(filteredAITools[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in FilterPage widget.
  List<AiToolsRecord>? initialResults;
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<AiToolsRecord> simpleSearchResults1 = [];
  List<AiToolsRecord> simpleSearchResults2 = [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<AiToolsRecord>? filteredResults;

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

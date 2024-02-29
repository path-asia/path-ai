import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/a_i_combination_card_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  List<AIToolCombinationStruct> aiToolCombos = [];
  void addToAiToolCombos(AIToolCombinationStruct item) =>
      aiToolCombos.add(item);
  void removeFromAiToolCombos(AIToolCombinationStruct item) =>
      aiToolCombos.remove(item);
  void removeAtIndexFromAiToolCombos(int index) => aiToolCombos.removeAt(index);
  void insertAtIndexInAiToolCombos(int index, AIToolCombinationStruct item) =>
      aiToolCombos.insert(index, item);
  void updateAiToolCombosAtIndex(
          int index, Function(AIToolCombinationStruct) updateFn) =>
      aiToolCombos[index] = updateFn(aiToolCombos[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PATHLogo component.
  late PATHLogoModel pATHLogoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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

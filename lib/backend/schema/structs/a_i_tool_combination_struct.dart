// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIToolCombinationStruct extends FFFirebaseStruct {
  AIToolCombinationStruct({
    String? combinationTitle,
    List<AIToolStruct>? aiTools,
    String? pricingModel,
    List<String>? advantages,
    List<String>? disadvantages,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _combinationTitle = combinationTitle,
        _aiTools = aiTools,
        _pricingModel = pricingModel,
        _advantages = advantages,
        _disadvantages = disadvantages,
        _price = price,
        super(firestoreUtilData);

  // "combination_title" field.
  String? _combinationTitle;
  String get combinationTitle => _combinationTitle ?? '';
  set combinationTitle(String? val) => _combinationTitle = val;
  bool hasCombinationTitle() => _combinationTitle != null;

  // "ai_tools" field.
  List<AIToolStruct>? _aiTools;
  List<AIToolStruct> get aiTools => _aiTools ?? const [];
  set aiTools(List<AIToolStruct>? val) => _aiTools = val;
  void updateAiTools(Function(List<AIToolStruct>) updateFn) =>
      updateFn(_aiTools ??= []);
  bool hasAiTools() => _aiTools != null;

  // "pricing_model" field.
  String? _pricingModel;
  String get pricingModel => _pricingModel ?? '';
  set pricingModel(String? val) => _pricingModel = val;
  bool hasPricingModel() => _pricingModel != null;

  // "advantages" field.
  List<String>? _advantages;
  List<String> get advantages => _advantages ?? const [];
  set advantages(List<String>? val) => _advantages = val;
  void updateAdvantages(Function(List<String>) updateFn) =>
      updateFn(_advantages ??= []);
  bool hasAdvantages() => _advantages != null;

  // "disadvantages" field.
  List<String>? _disadvantages;
  List<String> get disadvantages => _disadvantages ?? const [];
  set disadvantages(List<String>? val) => _disadvantages = val;
  void updateDisadvantages(Function(List<String>) updateFn) =>
      updateFn(_disadvantages ??= []);
  bool hasDisadvantages() => _disadvantages != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;
  bool hasPrice() => _price != null;

  static AIToolCombinationStruct fromMap(Map<String, dynamic> data) =>
      AIToolCombinationStruct(
        combinationTitle: data['combination_title'] as String?,
        aiTools: getStructList(
          data['ai_tools'],
          AIToolStruct.fromMap,
        ),
        pricingModel: data['pricing_model'] as String?,
        advantages: getDataList(data['advantages']),
        disadvantages: getDataList(data['disadvantages']),
        price: data['price'] as String?,
      );

  static AIToolCombinationStruct? maybeFromMap(dynamic data) => data is Map
      ? AIToolCombinationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'combination_title': _combinationTitle,
        'ai_tools': _aiTools?.map((e) => e.toMap()).toList(),
        'pricing_model': _pricingModel,
        'advantages': _advantages,
        'disadvantages': _disadvantages,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'combination_title': serializeParam(
          _combinationTitle,
          ParamType.String,
        ),
        'ai_tools': serializeParam(
          _aiTools,
          ParamType.DataStruct,
          true,
        ),
        'pricing_model': serializeParam(
          _pricingModel,
          ParamType.String,
        ),
        'advantages': serializeParam(
          _advantages,
          ParamType.String,
          true,
        ),
        'disadvantages': serializeParam(
          _disadvantages,
          ParamType.String,
          true,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static AIToolCombinationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AIToolCombinationStruct(
        combinationTitle: deserializeParam(
          data['combination_title'],
          ParamType.String,
          false,
        ),
        aiTools: deserializeStructParam<AIToolStruct>(
          data['ai_tools'],
          ParamType.DataStruct,
          true,
          structBuilder: AIToolStruct.fromSerializableMap,
        ),
        pricingModel: deserializeParam(
          data['pricing_model'],
          ParamType.String,
          false,
        ),
        advantages: deserializeParam<String>(
          data['advantages'],
          ParamType.String,
          true,
        ),
        disadvantages: deserializeParam<String>(
          data['disadvantages'],
          ParamType.String,
          true,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AIToolCombinationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AIToolCombinationStruct &&
        combinationTitle == other.combinationTitle &&
        listEquality.equals(aiTools, other.aiTools) &&
        pricingModel == other.pricingModel &&
        listEquality.equals(advantages, other.advantages) &&
        listEquality.equals(disadvantages, other.disadvantages) &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([
        combinationTitle,
        aiTools,
        pricingModel,
        advantages,
        disadvantages,
        price
      ]);
}

AIToolCombinationStruct createAIToolCombinationStruct({
  String? combinationTitle,
  String? pricingModel,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIToolCombinationStruct(
      combinationTitle: combinationTitle,
      pricingModel: pricingModel,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIToolCombinationStruct? updateAIToolCombinationStruct(
  AIToolCombinationStruct? aIToolCombination, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aIToolCombination
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIToolCombinationStructData(
  Map<String, dynamic> firestoreData,
  AIToolCombinationStruct? aIToolCombination,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aIToolCombination == null) {
    return;
  }
  if (aIToolCombination.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aIToolCombination.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIToolCombinationData =
      getAIToolCombinationFirestoreData(aIToolCombination, forFieldValue);
  final nestedData =
      aIToolCombinationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aIToolCombination.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIToolCombinationFirestoreData(
  AIToolCombinationStruct? aIToolCombination, [
  bool forFieldValue = false,
]) {
  if (aIToolCombination == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aIToolCombination.toMap());

  // Add any Firestore field values
  aIToolCombination.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIToolCombinationListFirestoreData(
  List<AIToolCombinationStruct>? aIToolCombinations,
) =>
    aIToolCombinations
        ?.map((e) => getAIToolCombinationFirestoreData(e, true))
        .toList() ??
    [];

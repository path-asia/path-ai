// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIToolStruct extends FFFirebaseStruct {
  AIToolStruct({
    String? name,
    String? url,
    String? description,
    String? logo,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _url = url,
        _description = description,
        _logo = logo,
        _price = price,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;
  bool hasPrice() => _price != null;

  static AIToolStruct fromMap(Map<String, dynamic> data) => AIToolStruct(
        name: data['name'] as String?,
        url: data['url'] as String?,
        description: data['description'] as String?,
        logo: data['logo'] as String?,
        price: data['price'] as String?,
      );

  static AIToolStruct? maybeFromMap(dynamic data) =>
      data is Map ? AIToolStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'url': _url,
        'description': _description,
        'logo': _logo,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static AIToolStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIToolStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AIToolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIToolStruct &&
        name == other.name &&
        url == other.url &&
        description == other.description &&
        logo == other.logo &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, url, description, logo, price]);
}

AIToolStruct createAIToolStruct({
  String? name,
  String? url,
  String? description,
  String? logo,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIToolStruct(
      name: name,
      url: url,
      description: description,
      logo: logo,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIToolStruct? updateAIToolStruct(
  AIToolStruct? aITool, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aITool
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIToolStructData(
  Map<String, dynamic> firestoreData,
  AIToolStruct? aITool,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aITool == null) {
    return;
  }
  if (aITool.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aITool.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIToolData = getAIToolFirestoreData(aITool, forFieldValue);
  final nestedData = aIToolData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aITool.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIToolFirestoreData(
  AIToolStruct? aITool, [
  bool forFieldValue = false,
]) {
  if (aITool == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aITool.toMap());

  // Add any Firestore field values
  aITool.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIToolListFirestoreData(
  List<AIToolStruct>? aITools,
) =>
    aITools?.map((e) => getAIToolFirestoreData(e, true)).toList() ?? [];

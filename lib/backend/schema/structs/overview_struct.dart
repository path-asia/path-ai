// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OverviewStruct extends FFFirebaseStruct {
  OverviewStruct({
    String? overviewTitle,
    String? overviewDesc,
    String? features,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _overviewTitle = overviewTitle,
        _overviewDesc = overviewDesc,
        _features = features,
        super(firestoreUtilData);

  // "overview_title" field.
  String? _overviewTitle;
  String get overviewTitle => _overviewTitle ?? '';
  set overviewTitle(String? val) => _overviewTitle = val;
  bool hasOverviewTitle() => _overviewTitle != null;

  // "overview_desc" field.
  String? _overviewDesc;
  String get overviewDesc => _overviewDesc ?? '';
  set overviewDesc(String? val) => _overviewDesc = val;
  bool hasOverviewDesc() => _overviewDesc != null;

  // "features" field.
  String? _features;
  String get features => _features ?? '';
  set features(String? val) => _features = val;
  bool hasFeatures() => _features != null;

  static OverviewStruct fromMap(Map<String, dynamic> data) => OverviewStruct(
        overviewTitle: data['overview_title'] as String?,
        overviewDesc: data['overview_desc'] as String?,
        features: data['features'] as String?,
      );

  static OverviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? OverviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'overview_title': _overviewTitle,
        'overview_desc': _overviewDesc,
        'features': _features,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'overview_title': serializeParam(
          _overviewTitle,
          ParamType.String,
        ),
        'overview_desc': serializeParam(
          _overviewDesc,
          ParamType.String,
        ),
        'features': serializeParam(
          _features,
          ParamType.String,
        ),
      }.withoutNulls;

  static OverviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      OverviewStruct(
        overviewTitle: deserializeParam(
          data['overview_title'],
          ParamType.String,
          false,
        ),
        overviewDesc: deserializeParam(
          data['overview_desc'],
          ParamType.String,
          false,
        ),
        features: deserializeParam(
          data['features'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OverviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OverviewStruct &&
        overviewTitle == other.overviewTitle &&
        overviewDesc == other.overviewDesc &&
        features == other.features;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([overviewTitle, overviewDesc, features]);
}

OverviewStruct createOverviewStruct({
  String? overviewTitle,
  String? overviewDesc,
  String? features,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OverviewStruct(
      overviewTitle: overviewTitle,
      overviewDesc: overviewDesc,
      features: features,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OverviewStruct? updateOverviewStruct(
  OverviewStruct? overview, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    overview
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOverviewStructData(
  Map<String, dynamic> firestoreData,
  OverviewStruct? overview,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (overview == null) {
    return;
  }
  if (overview.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && overview.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final overviewData = getOverviewFirestoreData(overview, forFieldValue);
  final nestedData = overviewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = overview.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOverviewFirestoreData(
  OverviewStruct? overview, [
  bool forFieldValue = false,
]) {
  if (overview == null) {
    return {};
  }
  final firestoreData = mapToFirestore(overview.toMap());

  // Add any Firestore field values
  overview.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOverviewListFirestoreData(
  List<OverviewStruct>? overviews,
) =>
    overviews?.map((e) => getOverviewFirestoreData(e, true)).toList() ?? [];

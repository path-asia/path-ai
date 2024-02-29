// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialsStruct extends FFFirebaseStruct {
  SocialsStruct({
    String? facebook,
    String? instagram,
    String? linkedin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _facebook = facebook,
        _instagram = instagram,
        _linkedin = linkedin,
        super(firestoreUtilData);

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  set facebook(String? val) => _facebook = val;
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  set instagram(String? val) => _instagram = val;
  bool hasInstagram() => _instagram != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  set linkedin(String? val) => _linkedin = val;
  bool hasLinkedin() => _linkedin != null;

  static SocialsStruct fromMap(Map<String, dynamic> data) => SocialsStruct(
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        linkedin: data['linkedin'] as String?,
      );

  static SocialsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SocialsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'facebook': _facebook,
        'instagram': _instagram,
        'linkedin': _linkedin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'facebook': serializeParam(
          _facebook,
          ParamType.String,
        ),
        'instagram': serializeParam(
          _instagram,
          ParamType.String,
        ),
        'linkedin': serializeParam(
          _linkedin,
          ParamType.String,
        ),
      }.withoutNulls;

  static SocialsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SocialsStruct(
        facebook: deserializeParam(
          data['facebook'],
          ParamType.String,
          false,
        ),
        instagram: deserializeParam(
          data['instagram'],
          ParamType.String,
          false,
        ),
        linkedin: deserializeParam(
          data['linkedin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SocialsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SocialsStruct &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        linkedin == other.linkedin;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([facebook, instagram, linkedin]);
}

SocialsStruct createSocialsStruct({
  String? facebook,
  String? instagram,
  String? linkedin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SocialsStruct(
      facebook: facebook,
      instagram: instagram,
      linkedin: linkedin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SocialsStruct? updateSocialsStruct(
  SocialsStruct? socials, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    socials
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSocialsStructData(
  Map<String, dynamic> firestoreData,
  SocialsStruct? socials,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (socials == null) {
    return;
  }
  if (socials.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && socials.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final socialsData = getSocialsFirestoreData(socials, forFieldValue);
  final nestedData = socialsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = socials.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSocialsFirestoreData(
  SocialsStruct? socials, [
  bool forFieldValue = false,
]) {
  if (socials == null) {
    return {};
  }
  final firestoreData = mapToFirestore(socials.toMap());

  // Add any Firestore field values
  socials.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSocialsListFirestoreData(
  List<SocialsStruct>? socialss,
) =>
    socialss?.map((e) => getSocialsFirestoreData(e, true)).toList() ?? [];

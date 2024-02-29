import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpertsRecord extends FirestoreRecord {
  ExpertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "courses_responsible" field.
  List<DocumentReference>? _coursesResponsible;
  List<DocumentReference> get coursesResponsible =>
      _coursesResponsible ?? const [];
  bool hasCoursesResponsible() => _coursesResponsible != null;

  // "students_enrolled" field.
  int? _studentsEnrolled;
  int get studentsEnrolled => _studentsEnrolled ?? 0;
  bool hasStudentsEnrolled() => _studentsEnrolled != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "contacts" field.
  SocialsStruct? _contacts;
  SocialsStruct get contacts => _contacts ?? SocialsStruct();
  bool hasContacts() => _contacts != null;

  // "expert_id" field.
  String? _expertId;
  String get expertId => _expertId ?? '';
  bool hasExpertId() => _expertId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _bio = snapshotData['bio'] as String?;
    _coursesResponsible = getDataList(snapshotData['courses_responsible']);
    _studentsEnrolled = castToType<int>(snapshotData['students_enrolled']);
    _profileImage = snapshotData['profile_image'] as String?;
    _contacts = SocialsStruct.maybeFromMap(snapshotData['contacts']);
    _expertId = snapshotData['expert_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('experts');

  static Stream<ExpertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpertsRecord.fromSnapshot(s));

  static Future<ExpertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpertsRecord.fromSnapshot(s));

  static ExpertsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpertsRecordData({
  String? name,
  String? bio,
  int? studentsEnrolled,
  String? profileImage,
  SocialsStruct? contacts,
  String? expertId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'bio': bio,
      'students_enrolled': studentsEnrolled,
      'profile_image': profileImage,
      'contacts': SocialsStruct().toMap(),
      'expert_id': expertId,
    }.withoutNulls,
  );

  // Handle nested data for "contacts" field.
  addSocialsStructData(firestoreData, contacts, 'contacts');

  return firestoreData;
}

class ExpertsRecordDocumentEquality implements Equality<ExpertsRecord> {
  const ExpertsRecordDocumentEquality();

  @override
  bool equals(ExpertsRecord? e1, ExpertsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.bio == e2?.bio &&
        listEquality.equals(e1?.coursesResponsible, e2?.coursesResponsible) &&
        e1?.studentsEnrolled == e2?.studentsEnrolled &&
        e1?.profileImage == e2?.profileImage &&
        e1?.contacts == e2?.contacts &&
        e1?.expertId == e2?.expertId;
  }

  @override
  int hash(ExpertsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.bio,
        e?.coursesResponsible,
        e?.studentsEnrolled,
        e?.profileImage,
        e?.contacts,
        e?.expertId
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpertsRecord;
}

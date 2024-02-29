import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "enrolled_amount" field.
  int? _enrolledAmount;
  int get enrolledAmount => _enrolledAmount ?? 0;
  bool hasEnrolledAmount() => _enrolledAmount != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "experts_responsible" field.
  List<DocumentReference>? _expertsResponsible;
  List<DocumentReference> get expertsResponsible =>
      _expertsResponsible ?? const [];
  bool hasExpertsResponsible() => _expertsResponsible != null;

  // "course_content" field.
  CourseContentsStruct? _courseContent;
  CourseContentsStruct get courseContent =>
      _courseContent ?? CourseContentsStruct();
  bool hasCourseContent() => _courseContent != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "preview_image" field.
  String? _previewImage;
  String get previewImage => _previewImage ?? '';
  bool hasPreviewImage() => _previewImage != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _duration = snapshotData['duration'] as String?;
    _enrolledAmount = castToType<int>(snapshotData['enrolled_amount']);
    _price = castToType<double>(snapshotData['price']);
    _id = snapshotData['id'] as String?;
    _expertsResponsible = getDataList(snapshotData['experts_responsible']);
    _courseContent =
        CourseContentsStruct.maybeFromMap(snapshotData['course_content']);
    _tag = snapshotData['tag'] as String?;
    _previewImage = snapshotData['preview_image'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? title,
  String? description,
  String? category,
  String? duration,
  int? enrolledAmount,
  double? price,
  String? id,
  CourseContentsStruct? courseContent,
  String? tag,
  String? previewImage,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'category': category,
      'duration': duration,
      'enrolled_amount': enrolledAmount,
      'price': price,
      'id': id,
      'course_content': CourseContentsStruct().toMap(),
      'tag': tag,
      'preview_image': previewImage,
      'created_at': createdAt,
    }.withoutNulls,
  );

  // Handle nested data for "course_content" field.
  addCourseContentsStructData(firestoreData, courseContent, 'course_content');

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.duration == e2?.duration &&
        e1?.enrolledAmount == e2?.enrolledAmount &&
        e1?.price == e2?.price &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.expertsResponsible, e2?.expertsResponsible) &&
        e1?.courseContent == e2?.courseContent &&
        e1?.tag == e2?.tag &&
        e1?.previewImage == e2?.previewImage &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.category,
        e?.duration,
        e?.enrolledAmount,
        e?.price,
        e?.id,
        e?.expertsResponsible,
        e?.courseContent,
        e?.tag,
        e?.previewImage,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}

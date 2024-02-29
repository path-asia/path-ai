// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseContentsStruct extends FFFirebaseStruct {
  CourseContentsStruct({
    OverviewStruct? courseOverview,
    List<CourseSectionStruct>? courseSections,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _courseOverview = courseOverview,
        _courseSections = courseSections,
        super(firestoreUtilData);

  // "course_overview" field.
  OverviewStruct? _courseOverview;
  OverviewStruct get courseOverview => _courseOverview ?? OverviewStruct();
  set courseOverview(OverviewStruct? val) => _courseOverview = val;
  void updateCourseOverview(Function(OverviewStruct) updateFn) =>
      updateFn(_courseOverview ??= OverviewStruct());
  bool hasCourseOverview() => _courseOverview != null;

  // "course_sections" field.
  List<CourseSectionStruct>? _courseSections;
  List<CourseSectionStruct> get courseSections => _courseSections ?? const [];
  set courseSections(List<CourseSectionStruct>? val) => _courseSections = val;
  void updateCourseSections(Function(List<CourseSectionStruct>) updateFn) =>
      updateFn(_courseSections ??= []);
  bool hasCourseSections() => _courseSections != null;

  static CourseContentsStruct fromMap(Map<String, dynamic> data) =>
      CourseContentsStruct(
        courseOverview: OverviewStruct.maybeFromMap(data['course_overview']),
        courseSections: getStructList(
          data['course_sections'],
          CourseSectionStruct.fromMap,
        ),
      );

  static CourseContentsStruct? maybeFromMap(dynamic data) => data is Map
      ? CourseContentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'course_overview': _courseOverview?.toMap(),
        'course_sections': _courseSections?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'course_overview': serializeParam(
          _courseOverview,
          ParamType.DataStruct,
        ),
        'course_sections': serializeParam(
          _courseSections,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static CourseContentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CourseContentsStruct(
        courseOverview: deserializeStructParam(
          data['course_overview'],
          ParamType.DataStruct,
          false,
          structBuilder: OverviewStruct.fromSerializableMap,
        ),
        courseSections: deserializeStructParam<CourseSectionStruct>(
          data['course_sections'],
          ParamType.DataStruct,
          true,
          structBuilder: CourseSectionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CourseContentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CourseContentsStruct &&
        courseOverview == other.courseOverview &&
        listEquality.equals(courseSections, other.courseSections);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([courseOverview, courseSections]);
}

CourseContentsStruct createCourseContentsStruct({
  OverviewStruct? courseOverview,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CourseContentsStruct(
      courseOverview:
          courseOverview ?? (clearUnsetFields ? OverviewStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CourseContentsStruct? updateCourseContentsStruct(
  CourseContentsStruct? courseContents, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    courseContents
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourseContentsStructData(
  Map<String, dynamic> firestoreData,
  CourseContentsStruct? courseContents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (courseContents == null) {
    return;
  }
  if (courseContents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && courseContents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final courseContentsData =
      getCourseContentsFirestoreData(courseContents, forFieldValue);
  final nestedData =
      courseContentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = courseContents.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourseContentsFirestoreData(
  CourseContentsStruct? courseContents, [
  bool forFieldValue = false,
]) {
  if (courseContents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(courseContents.toMap());

  // Handle nested data for "course_overview" field.
  addOverviewStructData(
    firestoreData,
    courseContents.hasCourseOverview() ? courseContents.courseOverview : null,
    'course_overview',
    forFieldValue,
  );

  // Add any Firestore field values
  courseContents.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourseContentsListFirestoreData(
  List<CourseContentsStruct>? courseContentss,
) =>
    courseContentss
        ?.map((e) => getCourseContentsFirestoreData(e, true))
        .toList() ??
    [];

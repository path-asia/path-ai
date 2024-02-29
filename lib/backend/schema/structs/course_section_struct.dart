// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseSectionStruct extends FFFirebaseStruct {
  CourseSectionStruct({
    String? sectionTitle,
    String? sectionDesc,
    List<CourseChapterStruct>? sectionChapters,
    QuizStruct? sectionQuiz,
    String? sectionDuration,
    String? sectionId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sectionTitle = sectionTitle,
        _sectionDesc = sectionDesc,
        _sectionChapters = sectionChapters,
        _sectionQuiz = sectionQuiz,
        _sectionDuration = sectionDuration,
        _sectionId = sectionId,
        super(firestoreUtilData);

  // "section_title" field.
  String? _sectionTitle;
  String get sectionTitle => _sectionTitle ?? '';
  set sectionTitle(String? val) => _sectionTitle = val;
  bool hasSectionTitle() => _sectionTitle != null;

  // "section_desc" field.
  String? _sectionDesc;
  String get sectionDesc => _sectionDesc ?? '';
  set sectionDesc(String? val) => _sectionDesc = val;
  bool hasSectionDesc() => _sectionDesc != null;

  // "section_chapters" field.
  List<CourseChapterStruct>? _sectionChapters;
  List<CourseChapterStruct> get sectionChapters => _sectionChapters ?? const [];
  set sectionChapters(List<CourseChapterStruct>? val) => _sectionChapters = val;
  void updateSectionChapters(Function(List<CourseChapterStruct>) updateFn) =>
      updateFn(_sectionChapters ??= []);
  bool hasSectionChapters() => _sectionChapters != null;

  // "section_quiz" field.
  QuizStruct? _sectionQuiz;
  QuizStruct get sectionQuiz => _sectionQuiz ?? QuizStruct();
  set sectionQuiz(QuizStruct? val) => _sectionQuiz = val;
  void updateSectionQuiz(Function(QuizStruct) updateFn) =>
      updateFn(_sectionQuiz ??= QuizStruct());
  bool hasSectionQuiz() => _sectionQuiz != null;

  // "section_duration" field.
  String? _sectionDuration;
  String get sectionDuration => _sectionDuration ?? '';
  set sectionDuration(String? val) => _sectionDuration = val;
  bool hasSectionDuration() => _sectionDuration != null;

  // "section_id" field.
  String? _sectionId;
  String get sectionId => _sectionId ?? '';
  set sectionId(String? val) => _sectionId = val;
  bool hasSectionId() => _sectionId != null;

  static CourseSectionStruct fromMap(Map<String, dynamic> data) =>
      CourseSectionStruct(
        sectionTitle: data['section_title'] as String?,
        sectionDesc: data['section_desc'] as String?,
        sectionChapters: getStructList(
          data['section_chapters'],
          CourseChapterStruct.fromMap,
        ),
        sectionQuiz: QuizStruct.maybeFromMap(data['section_quiz']),
        sectionDuration: data['section_duration'] as String?,
        sectionId: data['section_id'] as String?,
      );

  static CourseSectionStruct? maybeFromMap(dynamic data) => data is Map
      ? CourseSectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'section_title': _sectionTitle,
        'section_desc': _sectionDesc,
        'section_chapters': _sectionChapters?.map((e) => e.toMap()).toList(),
        'section_quiz': _sectionQuiz?.toMap(),
        'section_duration': _sectionDuration,
        'section_id': _sectionId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'section_title': serializeParam(
          _sectionTitle,
          ParamType.String,
        ),
        'section_desc': serializeParam(
          _sectionDesc,
          ParamType.String,
        ),
        'section_chapters': serializeParam(
          _sectionChapters,
          ParamType.DataStruct,
          true,
        ),
        'section_quiz': serializeParam(
          _sectionQuiz,
          ParamType.DataStruct,
        ),
        'section_duration': serializeParam(
          _sectionDuration,
          ParamType.String,
        ),
        'section_id': serializeParam(
          _sectionId,
          ParamType.String,
        ),
      }.withoutNulls;

  static CourseSectionStruct fromSerializableMap(Map<String, dynamic> data) =>
      CourseSectionStruct(
        sectionTitle: deserializeParam(
          data['section_title'],
          ParamType.String,
          false,
        ),
        sectionDesc: deserializeParam(
          data['section_desc'],
          ParamType.String,
          false,
        ),
        sectionChapters: deserializeStructParam<CourseChapterStruct>(
          data['section_chapters'],
          ParamType.DataStruct,
          true,
          structBuilder: CourseChapterStruct.fromSerializableMap,
        ),
        sectionQuiz: deserializeStructParam(
          data['section_quiz'],
          ParamType.DataStruct,
          false,
          structBuilder: QuizStruct.fromSerializableMap,
        ),
        sectionDuration: deserializeParam(
          data['section_duration'],
          ParamType.String,
          false,
        ),
        sectionId: deserializeParam(
          data['section_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CourseSectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CourseSectionStruct &&
        sectionTitle == other.sectionTitle &&
        sectionDesc == other.sectionDesc &&
        listEquality.equals(sectionChapters, other.sectionChapters) &&
        sectionQuiz == other.sectionQuiz &&
        sectionDuration == other.sectionDuration &&
        sectionId == other.sectionId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sectionTitle,
        sectionDesc,
        sectionChapters,
        sectionQuiz,
        sectionDuration,
        sectionId
      ]);
}

CourseSectionStruct createCourseSectionStruct({
  String? sectionTitle,
  String? sectionDesc,
  QuizStruct? sectionQuiz,
  String? sectionDuration,
  String? sectionId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CourseSectionStruct(
      sectionTitle: sectionTitle,
      sectionDesc: sectionDesc,
      sectionQuiz: sectionQuiz ?? (clearUnsetFields ? QuizStruct() : null),
      sectionDuration: sectionDuration,
      sectionId: sectionId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CourseSectionStruct? updateCourseSectionStruct(
  CourseSectionStruct? courseSection, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    courseSection
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourseSectionStructData(
  Map<String, dynamic> firestoreData,
  CourseSectionStruct? courseSection,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (courseSection == null) {
    return;
  }
  if (courseSection.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && courseSection.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final courseSectionData =
      getCourseSectionFirestoreData(courseSection, forFieldValue);
  final nestedData =
      courseSectionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = courseSection.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourseSectionFirestoreData(
  CourseSectionStruct? courseSection, [
  bool forFieldValue = false,
]) {
  if (courseSection == null) {
    return {};
  }
  final firestoreData = mapToFirestore(courseSection.toMap());

  // Handle nested data for "section_quiz" field.
  addQuizStructData(
    firestoreData,
    courseSection.hasSectionQuiz() ? courseSection.sectionQuiz : null,
    'section_quiz',
    forFieldValue,
  );

  // Add any Firestore field values
  courseSection.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourseSectionListFirestoreData(
  List<CourseSectionStruct>? courseSections,
) =>
    courseSections
        ?.map((e) => getCourseSectionFirestoreData(e, true))
        .toList() ??
    [];

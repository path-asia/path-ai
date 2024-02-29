// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseChapterStruct extends FFFirebaseStruct {
  CourseChapterStruct({
    String? chapterTitle,
    String? chapterId,
    String? chapterVideo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chapterTitle = chapterTitle,
        _chapterId = chapterId,
        _chapterVideo = chapterVideo,
        super(firestoreUtilData);

  // "chapter_title" field.
  String? _chapterTitle;
  String get chapterTitle => _chapterTitle ?? '';
  set chapterTitle(String? val) => _chapterTitle = val;
  bool hasChapterTitle() => _chapterTitle != null;

  // "chapter_id" field.
  String? _chapterId;
  String get chapterId => _chapterId ?? '';
  set chapterId(String? val) => _chapterId = val;
  bool hasChapterId() => _chapterId != null;

  // "chapter_video" field.
  String? _chapterVideo;
  String get chapterVideo => _chapterVideo ?? '';
  set chapterVideo(String? val) => _chapterVideo = val;
  bool hasChapterVideo() => _chapterVideo != null;

  static CourseChapterStruct fromMap(Map<String, dynamic> data) =>
      CourseChapterStruct(
        chapterTitle: data['chapter_title'] as String?,
        chapterId: data['chapter_id'] as String?,
        chapterVideo: data['chapter_video'] as String?,
      );

  static CourseChapterStruct? maybeFromMap(dynamic data) => data is Map
      ? CourseChapterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chapter_title': _chapterTitle,
        'chapter_id': _chapterId,
        'chapter_video': _chapterVideo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chapter_title': serializeParam(
          _chapterTitle,
          ParamType.String,
        ),
        'chapter_id': serializeParam(
          _chapterId,
          ParamType.String,
        ),
        'chapter_video': serializeParam(
          _chapterVideo,
          ParamType.String,
        ),
      }.withoutNulls;

  static CourseChapterStruct fromSerializableMap(Map<String, dynamic> data) =>
      CourseChapterStruct(
        chapterTitle: deserializeParam(
          data['chapter_title'],
          ParamType.String,
          false,
        ),
        chapterId: deserializeParam(
          data['chapter_id'],
          ParamType.String,
          false,
        ),
        chapterVideo: deserializeParam(
          data['chapter_video'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CourseChapterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CourseChapterStruct &&
        chapterTitle == other.chapterTitle &&
        chapterId == other.chapterId &&
        chapterVideo == other.chapterVideo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([chapterTitle, chapterId, chapterVideo]);
}

CourseChapterStruct createCourseChapterStruct({
  String? chapterTitle,
  String? chapterId,
  String? chapterVideo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CourseChapterStruct(
      chapterTitle: chapterTitle,
      chapterId: chapterId,
      chapterVideo: chapterVideo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CourseChapterStruct? updateCourseChapterStruct(
  CourseChapterStruct? courseChapter, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    courseChapter
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourseChapterStructData(
  Map<String, dynamic> firestoreData,
  CourseChapterStruct? courseChapter,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (courseChapter == null) {
    return;
  }
  if (courseChapter.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && courseChapter.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final courseChapterData =
      getCourseChapterFirestoreData(courseChapter, forFieldValue);
  final nestedData =
      courseChapterData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = courseChapter.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourseChapterFirestoreData(
  CourseChapterStruct? courseChapter, [
  bool forFieldValue = false,
]) {
  if (courseChapter == null) {
    return {};
  }
  final firestoreData = mapToFirestore(courseChapter.toMap());

  // Add any Firestore field values
  courseChapter.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourseChapterListFirestoreData(
  List<CourseChapterStruct>? courseChapters,
) =>
    courseChapters
        ?.map((e) => getCourseChapterFirestoreData(e, true))
        .toList() ??
    [];

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizStruct extends FFFirebaseStruct {
  QuizStruct({
    String? quizTitle,
    String? quizDesc,
    List<QuizQuestionStruct>? quizQuestions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quizTitle = quizTitle,
        _quizDesc = quizDesc,
        _quizQuestions = quizQuestions,
        super(firestoreUtilData);

  // "quiz_title" field.
  String? _quizTitle;
  String get quizTitle => _quizTitle ?? '';
  set quizTitle(String? val) => _quizTitle = val;
  bool hasQuizTitle() => _quizTitle != null;

  // "quiz_desc" field.
  String? _quizDesc;
  String get quizDesc => _quizDesc ?? '';
  set quizDesc(String? val) => _quizDesc = val;
  bool hasQuizDesc() => _quizDesc != null;

  // "quiz_questions" field.
  List<QuizQuestionStruct>? _quizQuestions;
  List<QuizQuestionStruct> get quizQuestions => _quizQuestions ?? const [];
  set quizQuestions(List<QuizQuestionStruct>? val) => _quizQuestions = val;
  void updateQuizQuestions(Function(List<QuizQuestionStruct>) updateFn) =>
      updateFn(_quizQuestions ??= []);
  bool hasQuizQuestions() => _quizQuestions != null;

  static QuizStruct fromMap(Map<String, dynamic> data) => QuizStruct(
        quizTitle: data['quiz_title'] as String?,
        quizDesc: data['quiz_desc'] as String?,
        quizQuestions: getStructList(
          data['quiz_questions'],
          QuizQuestionStruct.fromMap,
        ),
      );

  static QuizStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuizStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quiz_title': _quizTitle,
        'quiz_desc': _quizDesc,
        'quiz_questions': _quizQuestions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quiz_title': serializeParam(
          _quizTitle,
          ParamType.String,
        ),
        'quiz_desc': serializeParam(
          _quizDesc,
          ParamType.String,
        ),
        'quiz_questions': serializeParam(
          _quizQuestions,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static QuizStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizStruct(
        quizTitle: deserializeParam(
          data['quiz_title'],
          ParamType.String,
          false,
        ),
        quizDesc: deserializeParam(
          data['quiz_desc'],
          ParamType.String,
          false,
        ),
        quizQuestions: deserializeStructParam<QuizQuestionStruct>(
          data['quiz_questions'],
          ParamType.DataStruct,
          true,
          structBuilder: QuizQuestionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QuizStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuizStruct &&
        quizTitle == other.quizTitle &&
        quizDesc == other.quizDesc &&
        listEquality.equals(quizQuestions, other.quizQuestions);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quizTitle, quizDesc, quizQuestions]);
}

QuizStruct createQuizStruct({
  String? quizTitle,
  String? quizDesc,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuizStruct(
      quizTitle: quizTitle,
      quizDesc: quizDesc,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuizStruct? updateQuizStruct(
  QuizStruct? quiz, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quiz
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuizStructData(
  Map<String, dynamic> firestoreData,
  QuizStruct? quiz,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quiz == null) {
    return;
  }
  if (quiz.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && quiz.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quizData = getQuizFirestoreData(quiz, forFieldValue);
  final nestedData = quizData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quiz.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuizFirestoreData(
  QuizStruct? quiz, [
  bool forFieldValue = false,
]) {
  if (quiz == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quiz.toMap());

  // Add any Firestore field values
  quiz.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuizListFirestoreData(
  List<QuizStruct>? quizs,
) =>
    quizs?.map((e) => getQuizFirestoreData(e, true)).toList() ?? [];

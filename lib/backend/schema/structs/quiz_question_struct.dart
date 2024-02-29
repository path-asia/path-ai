// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizQuestionStruct extends FFFirebaseStruct {
  QuizQuestionStruct({
    String? question,
    List<String>? mcqAnswers,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _mcqAnswers = mcqAnswers,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "mcq_answers" field.
  List<String>? _mcqAnswers;
  List<String> get mcqAnswers => _mcqAnswers ?? const [];
  set mcqAnswers(List<String>? val) => _mcqAnswers = val;
  void updateMcqAnswers(Function(List<String>) updateFn) =>
      updateFn(_mcqAnswers ??= []);
  bool hasMcqAnswers() => _mcqAnswers != null;

  static QuizQuestionStruct fromMap(Map<String, dynamic> data) =>
      QuizQuestionStruct(
        question: data['question'] as String?,
        mcqAnswers: getDataList(data['mcq_answers']),
      );

  static QuizQuestionStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizQuestionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'mcq_answers': _mcqAnswers,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'mcq_answers': serializeParam(
          _mcqAnswers,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static QuizQuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizQuestionStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        mcqAnswers: deserializeParam<String>(
          data['mcq_answers'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'QuizQuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuizQuestionStruct &&
        question == other.question &&
        listEquality.equals(mcqAnswers, other.mcqAnswers);
  }

  @override
  int get hashCode => const ListEquality().hash([question, mcqAnswers]);
}

QuizQuestionStruct createQuizQuestionStruct({
  String? question,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuizQuestionStruct(
      question: question,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuizQuestionStruct? updateQuizQuestionStruct(
  QuizQuestionStruct? quizQuestion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quizQuestion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuizQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuizQuestionStruct? quizQuestion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quizQuestion == null) {
    return;
  }
  if (quizQuestion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quizQuestion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quizQuestionData =
      getQuizQuestionFirestoreData(quizQuestion, forFieldValue);
  final nestedData =
      quizQuestionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quizQuestion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuizQuestionFirestoreData(
  QuizQuestionStruct? quizQuestion, [
  bool forFieldValue = false,
]) {
  if (quizQuestion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quizQuestion.toMap());

  // Add any Firestore field values
  quizQuestion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuizQuestionListFirestoreData(
  List<QuizQuestionStruct>? quizQuestions,
) =>
    quizQuestions?.map((e) => getQuizQuestionFirestoreData(e, true)).toList() ??
    [];

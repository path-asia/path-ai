import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _aiToolComboList = prefs
              .getStringList('ff_aiToolComboList')
              ?.map((x) {
                try {
                  return AIToolCombinationStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _aiToolComboList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CourseSectionStruct> _courseSections = [];
  List<CourseSectionStruct> get courseSections => _courseSections;
  set courseSections(List<CourseSectionStruct> _value) {
    _courseSections = _value;
  }

  void addToCourseSections(CourseSectionStruct _value) {
    _courseSections.add(_value);
  }

  void removeFromCourseSections(CourseSectionStruct _value) {
    _courseSections.remove(_value);
  }

  void removeAtIndexFromCourseSections(int _index) {
    _courseSections.removeAt(_index);
  }

  void updateCourseSectionsAtIndex(
    int _index,
    CourseSectionStruct Function(CourseSectionStruct) updateFn,
  ) {
    _courseSections[_index] = updateFn(_courseSections[_index]);
  }

  void insertAtIndexInCourseSections(int _index, CourseSectionStruct _value) {
    _courseSections.insert(_index, _value);
  }

  List<CourseChapterStruct> _tempCourseChapters = [];
  List<CourseChapterStruct> get tempCourseChapters => _tempCourseChapters;
  set tempCourseChapters(List<CourseChapterStruct> _value) {
    _tempCourseChapters = _value;
  }

  void addToTempCourseChapters(CourseChapterStruct _value) {
    _tempCourseChapters.add(_value);
  }

  void removeFromTempCourseChapters(CourseChapterStruct _value) {
    _tempCourseChapters.remove(_value);
  }

  void removeAtIndexFromTempCourseChapters(int _index) {
    _tempCourseChapters.removeAt(_index);
  }

  void updateTempCourseChaptersAtIndex(
    int _index,
    CourseChapterStruct Function(CourseChapterStruct) updateFn,
  ) {
    _tempCourseChapters[_index] = updateFn(_tempCourseChapters[_index]);
  }

  void insertAtIndexInTempCourseChapters(
      int _index, CourseChapterStruct _value) {
    _tempCourseChapters.insert(_index, _value);
  }

  String _selectedTag = '';
  String get selectedTag => _selectedTag;
  set selectedTag(String _value) {
    _selectedTag = _value;
  }

  List<AIToolCombinationStruct> _aiToolComboList = [];
  List<AIToolCombinationStruct> get aiToolComboList => _aiToolComboList;
  set aiToolComboList(List<AIToolCombinationStruct> _value) {
    _aiToolComboList = _value;
    prefs.setStringList(
        'ff_aiToolComboList', _value.map((x) => x.serialize()).toList());
  }

  void addToAiToolComboList(AIToolCombinationStruct _value) {
    _aiToolComboList.add(_value);
    prefs.setStringList('ff_aiToolComboList',
        _aiToolComboList.map((x) => x.serialize()).toList());
  }

  void removeFromAiToolComboList(AIToolCombinationStruct _value) {
    _aiToolComboList.remove(_value);
    prefs.setStringList('ff_aiToolComboList',
        _aiToolComboList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAiToolComboList(int _index) {
    _aiToolComboList.removeAt(_index);
    prefs.setStringList('ff_aiToolComboList',
        _aiToolComboList.map((x) => x.serialize()).toList());
  }

  void updateAiToolComboListAtIndex(
    int _index,
    AIToolCombinationStruct Function(AIToolCombinationStruct) updateFn,
  ) {
    _aiToolComboList[_index] = updateFn(_aiToolComboList[_index]);
    prefs.setStringList('ff_aiToolComboList',
        _aiToolComboList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAiToolComboList(
      int _index, AIToolCombinationStruct _value) {
    _aiToolComboList.insert(_index, _value);
    prefs.setStringList('ff_aiToolComboList',
        _aiToolComboList.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

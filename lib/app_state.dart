import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}

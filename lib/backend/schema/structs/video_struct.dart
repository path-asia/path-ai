// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoStruct extends FFFirebaseStruct {
  VideoStruct({
    String? videoTitle,
    String? videoDesc,
    String? videoLink,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _videoTitle = videoTitle,
        _videoDesc = videoDesc,
        _videoLink = videoLink,
        super(firestoreUtilData);

  // "video_title" field.
  String? _videoTitle;
  String get videoTitle => _videoTitle ?? '';
  set videoTitle(String? val) => _videoTitle = val;
  bool hasVideoTitle() => _videoTitle != null;

  // "video_desc" field.
  String? _videoDesc;
  String get videoDesc => _videoDesc ?? '';
  set videoDesc(String? val) => _videoDesc = val;
  bool hasVideoDesc() => _videoDesc != null;

  // "video_link" field.
  String? _videoLink;
  String get videoLink => _videoLink ?? '';
  set videoLink(String? val) => _videoLink = val;
  bool hasVideoLink() => _videoLink != null;

  static VideoStruct fromMap(Map<String, dynamic> data) => VideoStruct(
        videoTitle: data['video_title'] as String?,
        videoDesc: data['video_desc'] as String?,
        videoLink: data['video_link'] as String?,
      );

  static VideoStruct? maybeFromMap(dynamic data) =>
      data is Map ? VideoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'video_title': _videoTitle,
        'video_desc': _videoDesc,
        'video_link': _videoLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'video_title': serializeParam(
          _videoTitle,
          ParamType.String,
        ),
        'video_desc': serializeParam(
          _videoDesc,
          ParamType.String,
        ),
        'video_link': serializeParam(
          _videoLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static VideoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideoStruct(
        videoTitle: deserializeParam(
          data['video_title'],
          ParamType.String,
          false,
        ),
        videoDesc: deserializeParam(
          data['video_desc'],
          ParamType.String,
          false,
        ),
        videoLink: deserializeParam(
          data['video_link'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VideoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideoStruct &&
        videoTitle == other.videoTitle &&
        videoDesc == other.videoDesc &&
        videoLink == other.videoLink;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([videoTitle, videoDesc, videoLink]);
}

VideoStruct createVideoStruct({
  String? videoTitle,
  String? videoDesc,
  String? videoLink,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideoStruct(
      videoTitle: videoTitle,
      videoDesc: videoDesc,
      videoLink: videoLink,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideoStruct? updateVideoStruct(
  VideoStruct? video, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    video
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideoStructData(
  Map<String, dynamic> firestoreData,
  VideoStruct? video,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (video == null) {
    return;
  }
  if (video.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && video.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videoData = getVideoFirestoreData(video, forFieldValue);
  final nestedData = videoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = video.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideoFirestoreData(
  VideoStruct? video, [
  bool forFieldValue = false,
]) {
  if (video == null) {
    return {};
  }
  final firestoreData = mapToFirestore(video.toMap());

  // Add any Firestore field values
  video.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideoListFirestoreData(
  List<VideoStruct>? videos,
) =>
    videos?.map((e) => getVideoFirestoreData(e, true)).toList() ?? [];

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AiBlogsRecord extends FirestoreRecord {
  AiBlogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "markdown1" field.
  String? _markdown1;
  String get markdown1 => _markdown1 ?? '';
  bool hasMarkdown1() => _markdown1 != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "markdown2" field.
  String? _markdown2;
  String get markdown2 => _markdown2 ?? '';
  bool hasMarkdown2() => _markdown2 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "markdown3" field.
  String? _markdown3;
  String get markdown3 => _markdown3 ?? '';
  bool hasMarkdown3() => _markdown3 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "aiblog_ref" field.
  DocumentReference? _aiblogRef;
  DocumentReference? get aiblogRef => _aiblogRef;
  bool hasAiblogRef() => _aiblogRef != null;

  // "blog_Id" field.
  String? _blogId;
  String get blogId => _blogId ?? '';
  bool hasBlogId() => _blogId != null;

  // "tag" field.
  List<String>? _tag;
  List<String> get tag => _tag ?? const [];
  bool hasTag() => _tag != null;

  // "descriptionCard" field.
  String? _descriptionCard;
  String get descriptionCard => _descriptionCard ?? '';
  bool hasDescriptionCard() => _descriptionCard != null;

  // "title_card" field.
  String? _titleCard;
  String get titleCard => _titleCard ?? '';
  bool hasTitleCard() => _titleCard != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _markdown1 = snapshotData['markdown1'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _markdown2 = snapshotData['markdown2'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _markdown3 = snapshotData['markdown3'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _createdOn = snapshotData['created_on'] as DateTime?;
    _aiblogRef = snapshotData['aiblog_ref'] as DocumentReference?;
    _blogId = snapshotData['blog_Id'] as String?;
    _tag = getDataList(snapshotData['tag']);
    _descriptionCard = snapshotData['descriptionCard'] as String?;
    _titleCard = snapshotData['title_card'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ai_blogs');

  static Stream<AiBlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AiBlogsRecord.fromSnapshot(s));

  static Future<AiBlogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AiBlogsRecord.fromSnapshot(s));

  static AiBlogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AiBlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AiBlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AiBlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AiBlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AiBlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAiBlogsRecordData({
  String? title,
  String? markdown1,
  String? image1,
  String? markdown2,
  String? image2,
  String? markdown3,
  String? image3,
  DateTime? createdOn,
  DocumentReference? aiblogRef,
  String? blogId,
  String? descriptionCard,
  String? titleCard,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'markdown1': markdown1,
      'image1': image1,
      'markdown2': markdown2,
      'image2': image2,
      'markdown3': markdown3,
      'image3': image3,
      'created_on': createdOn,
      'aiblog_ref': aiblogRef,
      'blog_Id': blogId,
      'descriptionCard': descriptionCard,
      'title_card': titleCard,
    }.withoutNulls,
  );

  return firestoreData;
}

class AiBlogsRecordDocumentEquality implements Equality<AiBlogsRecord> {
  const AiBlogsRecordDocumentEquality();

  @override
  bool equals(AiBlogsRecord? e1, AiBlogsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.markdown1 == e2?.markdown1 &&
        e1?.image1 == e2?.image1 &&
        e1?.markdown2 == e2?.markdown2 &&
        e1?.image2 == e2?.image2 &&
        e1?.markdown3 == e2?.markdown3 &&
        e1?.image3 == e2?.image3 &&
        e1?.createdOn == e2?.createdOn &&
        e1?.aiblogRef == e2?.aiblogRef &&
        e1?.blogId == e2?.blogId &&
        listEquality.equals(e1?.tag, e2?.tag) &&
        e1?.descriptionCard == e2?.descriptionCard &&
        e1?.titleCard == e2?.titleCard;
  }

  @override
  int hash(AiBlogsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.markdown1,
        e?.image1,
        e?.markdown2,
        e?.image2,
        e?.markdown3,
        e?.image3,
        e?.createdOn,
        e?.aiblogRef,
        e?.blogId,
        e?.tag,
        e?.descriptionCard,
        e?.titleCard
      ]);

  @override
  bool isValidKey(Object? o) => o is AiBlogsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AiToolsRecord extends FirestoreRecord {
  AiToolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "pricing" field.
  double? _pricing;
  double get pricing => _pricing ?? 0.0;
  bool hasPricing() => _pricing != null;

  // "price_model" field.
  String? _priceModel;
  String get priceModel => _priceModel ?? '';
  bool hasPriceModel() => _priceModel != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "aitool_ref" field.
  DocumentReference? _aitoolRef;
  DocumentReference? get aitoolRef => _aitoolRef;
  bool hasAitoolRef() => _aitoolRef != null;

  // "topai" field.
  bool? _topai;
  bool get topai => _topai ?? false;
  bool hasTopai() => _topai != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _url = snapshotData['url'] as String?;
    _pricing = castToType<double>(snapshotData['pricing']);
    _priceModel = snapshotData['price_model'] as String?;
    _image = snapshotData['image'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _id = snapshotData['id'] as String?;
    _aitoolRef = snapshotData['aitool_ref'] as DocumentReference?;
    _topai = snapshotData['topai'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ai_tools');

  static Stream<AiToolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AiToolsRecord.fromSnapshot(s));

  static Future<AiToolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AiToolsRecord.fromSnapshot(s));

  static AiToolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AiToolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AiToolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AiToolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AiToolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AiToolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAiToolsRecordData({
  String? name,
  String? description,
  String? url,
  double? pricing,
  String? priceModel,
  String? image,
  DateTime? createdAt,
  String? id,
  DocumentReference? aitoolRef,
  bool? topai,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'url': url,
      'pricing': pricing,
      'price_model': priceModel,
      'image': image,
      'created_at': createdAt,
      'id': id,
      'aitool_ref': aitoolRef,
      'topai': topai,
    }.withoutNulls,
  );

  return firestoreData;
}

class AiToolsRecordDocumentEquality implements Equality<AiToolsRecord> {
  const AiToolsRecordDocumentEquality();

  @override
  bool equals(AiToolsRecord? e1, AiToolsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.url == e2?.url &&
        e1?.pricing == e2?.pricing &&
        e1?.priceModel == e2?.priceModel &&
        e1?.image == e2?.image &&
        e1?.createdAt == e2?.createdAt &&
        e1?.id == e2?.id &&
        e1?.aitoolRef == e2?.aitoolRef &&
        e1?.topai == e2?.topai;
  }

  @override
  int hash(AiToolsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.tags,
        e?.url,
        e?.pricing,
        e?.priceModel,
        e?.image,
        e?.createdAt,
        e?.id,
        e?.aitoolRef,
        e?.topai
      ]);

  @override
  bool isValidKey(Object? o) => o is AiToolsRecord;
}

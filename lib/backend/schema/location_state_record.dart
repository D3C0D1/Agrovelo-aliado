import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationStateRecord extends FirestoreRecord {
  LocationStateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "state" field.
  bool? _state;
  bool get state => _state ?? false;
  bool hasState() => _state != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _state = snapshotData['state'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('location_state');

  static Stream<LocationStateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationStateRecord.fromSnapshot(s));

  static Future<LocationStateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationStateRecord.fromSnapshot(s));

  static LocationStateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationStateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationStateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationStateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationStateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationStateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationStateRecordData({
  DateTime? createdAt,
  DateTime? modifiedAt,
  String? name,
  bool? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'name': name,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationStateRecordDocumentEquality
    implements Equality<LocationStateRecord> {
  const LocationStateRecordDocumentEquality();

  @override
  bool equals(LocationStateRecord? e1, LocationStateRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.name == e2?.name &&
        e1?.state == e2?.state;
  }

  @override
  int hash(LocationStateRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.modifiedAt, e?.name, e?.state]);

  @override
  bool isValidKey(Object? o) => o is LocationStateRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nameBug" field.
  String? _nameBug;
  String get nameBug => _nameBug ?? '';
  bool hasNameBug() => _nameBug != null;

  // "descriptionB" field.
  String? _descriptionB;
  String get descriptionB => _descriptionB ?? '';
  bool hasDescriptionB() => _descriptionB != null;

  // "pruebaB" field.
  String? _pruebaB;
  String get pruebaB => _pruebaB ?? '';
  bool hasPruebaB() => _pruebaB != null;

  void _initializeFields() {
    _nameBug = snapshotData['nameBug'] as String?;
    _descriptionB = snapshotData['descriptionB'] as String?;
    _pruebaB = snapshotData['pruebaB'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? nameBug,
  String? descriptionB,
  String? pruebaB,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameBug': nameBug,
      'descriptionB': descriptionB,
      'pruebaB': pruebaB,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.nameBug == e2?.nameBug &&
        e1?.descriptionB == e2?.descriptionB &&
        e1?.pruebaB == e2?.pruebaB;
  }

  @override
  int hash(ReportsRecord? e) =>
      const ListEquality().hash([e?.nameBug, e?.descriptionB, e?.pruebaB]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}

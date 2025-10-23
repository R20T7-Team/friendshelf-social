import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShelfCategoriesRecord extends FirestoreRecord {
  ShelfCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Shelf_Categories');

  static Stream<ShelfCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShelfCategoriesRecord.fromSnapshot(s));

  static Future<ShelfCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShelfCategoriesRecord.fromSnapshot(s));

  static ShelfCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShelfCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShelfCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShelfCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShelfCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShelfCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShelfCategoriesRecordData({
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShelfCategoriesRecordDocumentEquality
    implements Equality<ShelfCategoriesRecord> {
  const ShelfCategoriesRecordDocumentEquality();

  @override
  bool equals(ShelfCategoriesRecord? e1, ShelfCategoriesRecord? e2) {
    return e1?.title == e2?.title;
  }

  @override
  int hash(ShelfCategoriesRecord? e) => const ListEquality().hash([e?.title]);

  @override
  bool isValidKey(Object? o) => o is ShelfCategoriesRecord;
}

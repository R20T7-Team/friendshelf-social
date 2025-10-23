import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShelfRecord extends FirestoreRecord {
  ShelfRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "AboutShelf" field.
  String? _aboutShelf;
  String get aboutShelf => _aboutShelf ?? '';
  bool hasAboutShelf() => _aboutShelf != null;

  // "Related_User" field.
  DocumentReference? _relatedUser;
  DocumentReference? get relatedUser => _relatedUser;
  bool hasRelatedUser() => _relatedUser != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "ListOfCategories" field.
  List<DocumentReference>? _listOfCategories;
  List<DocumentReference> get listOfCategories => _listOfCategories ?? const [];
  bool hasListOfCategories() => _listOfCategories != null;

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _aboutShelf = snapshotData['AboutShelf'] as String?;
    _relatedUser = snapshotData['Related_User'] as DocumentReference?;
    _type = snapshotData['Type'] as String?;
    _listOfCategories = getDataList(snapshotData['ListOfCategories']);
    _createdDate = snapshotData['Created_Date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Shelf');

  static Stream<ShelfRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShelfRecord.fromSnapshot(s));

  static Future<ShelfRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShelfRecord.fromSnapshot(s));

  static ShelfRecord fromSnapshot(DocumentSnapshot snapshot) => ShelfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShelfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShelfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShelfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShelfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShelfRecordData({
  String? name,
  String? aboutShelf,
  DocumentReference? relatedUser,
  String? type,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'AboutShelf': aboutShelf,
      'Related_User': relatedUser,
      'Type': type,
      'Created_Date': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShelfRecordDocumentEquality implements Equality<ShelfRecord> {
  const ShelfRecordDocumentEquality();

  @override
  bool equals(ShelfRecord? e1, ShelfRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.aboutShelf == e2?.aboutShelf &&
        e1?.relatedUser == e2?.relatedUser &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.listOfCategories, e2?.listOfCategories) &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(ShelfRecord? e) => const ListEquality().hash([
        e?.name,
        e?.aboutShelf,
        e?.relatedUser,
        e?.type,
        e?.listOfCategories,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is ShelfRecord;
}

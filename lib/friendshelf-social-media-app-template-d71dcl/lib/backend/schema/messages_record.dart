import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "Sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "Message_for" field.
  List<DocumentReference>? _messageFor;
  List<DocumentReference> get messageFor => _messageFor ?? const [];
  bool hasMessageFor() => _messageFor != null;

  // "Related_Recommendation" field.
  DocumentReference? _relatedRecommendation;
  DocumentReference? get relatedRecommendation => _relatedRecommendation;
  bool hasRelatedRecommendation() => _relatedRecommendation != null;

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "RepliedTo" field.
  DocumentReference? _repliedTo;
  DocumentReference? get repliedTo => _repliedTo;
  bool hasRepliedTo() => _repliedTo != null;

  void _initializeFields() {
    _body = snapshotData['Body'] as String?;
    _sender = snapshotData['Sender'] as DocumentReference?;
    _messageFor = getDataList(snapshotData['Message_for']);
    _relatedRecommendation =
        snapshotData['Related_Recommendation'] as DocumentReference?;
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _repliedTo = snapshotData['RepliedTo'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? body,
  DocumentReference? sender,
  DocumentReference? relatedRecommendation,
  DateTime? createdDate,
  DocumentReference? repliedTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Body': body,
      'Sender': sender,
      'Related_Recommendation': relatedRecommendation,
      'Created_Date': createdDate,
      'RepliedTo': repliedTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.body == e2?.body &&
        e1?.sender == e2?.sender &&
        listEquality.equals(e1?.messageFor, e2?.messageFor) &&
        e1?.relatedRecommendation == e2?.relatedRecommendation &&
        e1?.createdDate == e2?.createdDate &&
        e1?.repliedTo == e2?.repliedTo;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.body,
        e?.sender,
        e?.messageFor,
        e?.relatedRecommendation,
        e?.createdDate,
        e?.repliedTo
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}

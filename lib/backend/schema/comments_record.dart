import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comment_body" field.
  String? _commentBody;
  String get commentBody => _commentBody ?? '';
  bool hasCommentBody() => _commentBody != null;

  // "related_recommendation" field.
  DocumentReference? _relatedRecommendation;
  DocumentReference? get relatedRecommendation => _relatedRecommendation;
  bool hasRelatedRecommendation() => _relatedRecommendation != null;

  // "comment_by" field.
  DocumentReference? _commentBy;
  DocumentReference? get commentBy => _commentBy;
  bool hasCommentBy() => _commentBy != null;

  // "Rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _commentBody = snapshotData['comment_body'] as String?;
    _relatedRecommendation =
        snapshotData['related_recommendation'] as DocumentReference?;
    _commentBy = snapshotData['comment_by'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['Rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentBody,
  DocumentReference? relatedRecommendation,
  DocumentReference? commentBy,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment_body': commentBody,
      'related_recommendation': relatedRecommendation,
      'comment_by': commentBy,
      'Rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.commentBody == e2?.commentBody &&
        e1?.relatedRecommendation == e2?.relatedRecommendation &&
        e1?.commentBy == e2?.commentBy &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash(
      [e?.commentBody, e?.relatedRecommendation, e?.commentBy, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}

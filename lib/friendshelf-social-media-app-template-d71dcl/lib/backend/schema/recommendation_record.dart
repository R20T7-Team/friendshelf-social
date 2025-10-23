import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendationRecord extends FirestoreRecord {
  RecommendationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "Your_Take" field.
  String? _yourTake;
  String get yourTake => _yourTake ?? '';
  bool hasYourTake() => _yourTake != null;

  // "Related_Shelf" field.
  DocumentReference? _relatedShelf;
  DocumentReference? get relatedShelf => _relatedShelf;
  bool hasRelatedShelf() => _relatedShelf != null;

  // "Recommended_By" field.
  DocumentReference? _recommendedBy;
  DocumentReference? get recommendedBy => _recommendedBy;
  bool hasRecommendedBy() => _recommendedBy != null;

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "Main_Category" field.
  DocumentReference? _mainCategory;
  DocumentReference? get mainCategory => _mainCategory;
  bool hasMainCategory() => _mainCategory != null;

  // "Main_Category_String" field.
  String? _mainCategoryString;
  String get mainCategoryString => _mainCategoryString ?? '';
  bool hasMainCategoryString() => _mainCategoryString != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Liked_By" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "Disliked_By" field.
  List<DocumentReference>? _dislikedBy;
  List<DocumentReference> get dislikedBy => _dislikedBy ?? const [];
  bool hasDislikedBy() => _dislikedBy != null;

  // "Hearted_By" field.
  List<DocumentReference>? _heartedBy;
  List<DocumentReference> get heartedBy => _heartedBy ?? const [];
  bool hasHeartedBy() => _heartedBy != null;

  // "Members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Pinned_By" field.
  List<DocumentReference>? _pinnedBy;
  List<DocumentReference> get pinnedBy => _pinnedBy ?? const [];
  bool hasPinnedBy() => _pinnedBy != null;

  // "Requested_Members" field.
  List<DocumentReference>? _requestedMembers;
  List<DocumentReference> get requestedMembers => _requestedMembers ?? const [];
  bool hasRequestedMembers() => _requestedMembers != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _rating = castToType<int>(snapshotData['Rating']);
    _yourTake = snapshotData['Your_Take'] as String?;
    _relatedShelf = snapshotData['Related_Shelf'] as DocumentReference?;
    _recommendedBy = snapshotData['Recommended_By'] as DocumentReference?;
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _mainCategory = snapshotData['Main_Category'] as DocumentReference?;
    _mainCategoryString = snapshotData['Main_Category_String'] as String?;
    _image = snapshotData['Image'] as String?;
    _likedBy = getDataList(snapshotData['Liked_By']);
    _dislikedBy = getDataList(snapshotData['Disliked_By']);
    _heartedBy = getDataList(snapshotData['Hearted_By']);
    _members = getDataList(snapshotData['Members']);
    _type = snapshotData['Type'] as String?;
    _pinnedBy = getDataList(snapshotData['Pinned_By']);
    _requestedMembers = getDataList(snapshotData['Requested_Members']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recommendation');

  static Stream<RecommendationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecommendationRecord.fromSnapshot(s));

  static Future<RecommendationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecommendationRecord.fromSnapshot(s));

  static RecommendationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecommendationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecommendationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecommendationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecommendationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecommendationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecommendationRecordData({
  String? name,
  String? description,
  int? rating,
  String? yourTake,
  DocumentReference? relatedShelf,
  DocumentReference? recommendedBy,
  DateTime? createdDate,
  DocumentReference? mainCategory,
  String? mainCategoryString,
  String? image,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Description': description,
      'Rating': rating,
      'Your_Take': yourTake,
      'Related_Shelf': relatedShelf,
      'Recommended_By': recommendedBy,
      'Created_Date': createdDate,
      'Main_Category': mainCategory,
      'Main_Category_String': mainCategoryString,
      'Image': image,
      'Type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecommendationRecordDocumentEquality
    implements Equality<RecommendationRecord> {
  const RecommendationRecordDocumentEquality();

  @override
  bool equals(RecommendationRecord? e1, RecommendationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.rating == e2?.rating &&
        e1?.yourTake == e2?.yourTake &&
        e1?.relatedShelf == e2?.relatedShelf &&
        e1?.recommendedBy == e2?.recommendedBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.mainCategory == e2?.mainCategory &&
        e1?.mainCategoryString == e2?.mainCategoryString &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        listEquality.equals(e1?.dislikedBy, e2?.dislikedBy) &&
        listEquality.equals(e1?.heartedBy, e2?.heartedBy) &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.pinnedBy, e2?.pinnedBy) &&
        listEquality.equals(e1?.requestedMembers, e2?.requestedMembers);
  }

  @override
  int hash(RecommendationRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.rating,
        e?.yourTake,
        e?.relatedShelf,
        e?.recommendedBy,
        e?.createdDate,
        e?.mainCategory,
        e?.mainCategoryString,
        e?.image,
        e?.likedBy,
        e?.dislikedBy,
        e?.heartedBy,
        e?.members,
        e?.type,
        e?.pinnedBy,
        e?.requestedMembers
      ]);

  @override
  bool isValidKey(Object? o) => o is RecommendationRecord;
}

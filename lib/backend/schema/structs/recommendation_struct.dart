// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendationStruct extends FFFirebaseStruct {
  RecommendationStruct({
    String? name,
    String? description,
    int? rating,
    String? yourTake,
    DocumentReference? relatedShelf,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _rating = rating,
        _yourTake = yourTake,
        _relatedShelf = relatedShelf,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "Rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  set rating(int? val) => _rating = val;

  void incrementRating(int amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "Your_Take" field.
  String? _yourTake;
  String get yourTake => _yourTake ?? '';
  set yourTake(String? val) => _yourTake = val;

  bool hasYourTake() => _yourTake != null;

  // "Related_Shelf" field.
  DocumentReference? _relatedShelf;
  DocumentReference? get relatedShelf => _relatedShelf;
  set relatedShelf(DocumentReference? val) => _relatedShelf = val;

  bool hasRelatedShelf() => _relatedShelf != null;

  static RecommendationStruct fromMap(Map<String, dynamic> data) =>
      RecommendationStruct(
        name: data['Name'] as String?,
        description: data['Description'] as String?,
        rating: castToType<int>(data['Rating']),
        yourTake: data['Your_Take'] as String?,
        relatedShelf: data['Related_Shelf'] as DocumentReference?,
      );

  static RecommendationStruct? maybeFromMap(dynamic data) => data is Map
      ? RecommendationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Description': _description,
        'Rating': _rating,
        'Your_Take': _yourTake,
        'Related_Shelf': _relatedShelf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'Rating': serializeParam(
          _rating,
          ParamType.int,
        ),
        'Your_Take': serializeParam(
          _yourTake,
          ParamType.String,
        ),
        'Related_Shelf': serializeParam(
          _relatedShelf,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static RecommendationStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecommendationStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['Rating'],
          ParamType.int,
          false,
        ),
        yourTake: deserializeParam(
          data['Your_Take'],
          ParamType.String,
          false,
        ),
        relatedShelf: deserializeParam(
          data['Related_Shelf'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Shelf'],
        ),
      );

  @override
  String toString() => 'RecommendationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecommendationStruct &&
        name == other.name &&
        description == other.description &&
        rating == other.rating &&
        yourTake == other.yourTake &&
        relatedShelf == other.relatedShelf;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, description, rating, yourTake, relatedShelf]);
}

RecommendationStruct createRecommendationStruct({
  String? name,
  String? description,
  int? rating,
  String? yourTake,
  DocumentReference? relatedShelf,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecommendationStruct(
      name: name,
      description: description,
      rating: rating,
      yourTake: yourTake,
      relatedShelf: relatedShelf,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecommendationStruct? updateRecommendationStruct(
  RecommendationStruct? recommendation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recommendation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecommendationStructData(
  Map<String, dynamic> firestoreData,
  RecommendationStruct? recommendation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recommendation == null) {
    return;
  }
  if (recommendation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recommendation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recommendationData =
      getRecommendationFirestoreData(recommendation, forFieldValue);
  final nestedData =
      recommendationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recommendation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecommendationFirestoreData(
  RecommendationStruct? recommendation, [
  bool forFieldValue = false,
]) {
  if (recommendation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recommendation.toMap());

  // Add any Firestore field values
  recommendation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecommendationListFirestoreData(
  List<RecommendationStruct>? recommendations,
) =>
    recommendations
        ?.map((e) => getRecommendationFirestoreData(e, true))
        .toList() ??
    [];

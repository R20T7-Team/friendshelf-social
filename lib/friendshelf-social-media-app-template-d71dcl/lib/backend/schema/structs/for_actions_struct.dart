// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForActionsStruct extends FFFirebaseStruct {
  ForActionsStruct({
    int? likedBy,
    int? dislilkedBy,
    int? heartedBy,
    bool? likeByMe,
    bool? dislikeByMe,
    bool? heartByMe,
    bool? pinnedByMe,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _likedBy = likedBy,
        _dislilkedBy = dislilkedBy,
        _heartedBy = heartedBy,
        _likeByMe = likeByMe,
        _dislikeByMe = dislikeByMe,
        _heartByMe = heartByMe,
        _pinnedByMe = pinnedByMe,
        super(firestoreUtilData);

  // "LikedBy" field.
  int? _likedBy;
  int get likedBy => _likedBy ?? 0;
  set likedBy(int? val) => _likedBy = val;

  void incrementLikedBy(int amount) => likedBy = likedBy + amount;

  bool hasLikedBy() => _likedBy != null;

  // "Dislilked_By" field.
  int? _dislilkedBy;
  int get dislilkedBy => _dislilkedBy ?? 0;
  set dislilkedBy(int? val) => _dislilkedBy = val;

  void incrementDislilkedBy(int amount) => dislilkedBy = dislilkedBy + amount;

  bool hasDislilkedBy() => _dislilkedBy != null;

  // "Hearted_By" field.
  int? _heartedBy;
  int get heartedBy => _heartedBy ?? 0;
  set heartedBy(int? val) => _heartedBy = val;

  void incrementHeartedBy(int amount) => heartedBy = heartedBy + amount;

  bool hasHeartedBy() => _heartedBy != null;

  // "LikeByMe" field.
  bool? _likeByMe;
  bool get likeByMe => _likeByMe ?? false;
  set likeByMe(bool? val) => _likeByMe = val;

  bool hasLikeByMe() => _likeByMe != null;

  // "DislikeByMe" field.
  bool? _dislikeByMe;
  bool get dislikeByMe => _dislikeByMe ?? false;
  set dislikeByMe(bool? val) => _dislikeByMe = val;

  bool hasDislikeByMe() => _dislikeByMe != null;

  // "HeartByMe" field.
  bool? _heartByMe;
  bool get heartByMe => _heartByMe ?? false;
  set heartByMe(bool? val) => _heartByMe = val;

  bool hasHeartByMe() => _heartByMe != null;

  // "PinnedByMe" field.
  bool? _pinnedByMe;
  bool get pinnedByMe => _pinnedByMe ?? false;
  set pinnedByMe(bool? val) => _pinnedByMe = val;

  bool hasPinnedByMe() => _pinnedByMe != null;

  static ForActionsStruct fromMap(Map<String, dynamic> data) =>
      ForActionsStruct(
        likedBy: castToType<int>(data['LikedBy']),
        dislilkedBy: castToType<int>(data['Dislilked_By']),
        heartedBy: castToType<int>(data['Hearted_By']),
        likeByMe: data['LikeByMe'] as bool?,
        dislikeByMe: data['DislikeByMe'] as bool?,
        heartByMe: data['HeartByMe'] as bool?,
        pinnedByMe: data['PinnedByMe'] as bool?,
      );

  static ForActionsStruct? maybeFromMap(dynamic data) => data is Map
      ? ForActionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'LikedBy': _likedBy,
        'Dislilked_By': _dislilkedBy,
        'Hearted_By': _heartedBy,
        'LikeByMe': _likeByMe,
        'DislikeByMe': _dislikeByMe,
        'HeartByMe': _heartByMe,
        'PinnedByMe': _pinnedByMe,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'LikedBy': serializeParam(
          _likedBy,
          ParamType.int,
        ),
        'Dislilked_By': serializeParam(
          _dislilkedBy,
          ParamType.int,
        ),
        'Hearted_By': serializeParam(
          _heartedBy,
          ParamType.int,
        ),
        'LikeByMe': serializeParam(
          _likeByMe,
          ParamType.bool,
        ),
        'DislikeByMe': serializeParam(
          _dislikeByMe,
          ParamType.bool,
        ),
        'HeartByMe': serializeParam(
          _heartByMe,
          ParamType.bool,
        ),
        'PinnedByMe': serializeParam(
          _pinnedByMe,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ForActionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ForActionsStruct(
        likedBy: deserializeParam(
          data['LikedBy'],
          ParamType.int,
          false,
        ),
        dislilkedBy: deserializeParam(
          data['Dislilked_By'],
          ParamType.int,
          false,
        ),
        heartedBy: deserializeParam(
          data['Hearted_By'],
          ParamType.int,
          false,
        ),
        likeByMe: deserializeParam(
          data['LikeByMe'],
          ParamType.bool,
          false,
        ),
        dislikeByMe: deserializeParam(
          data['DislikeByMe'],
          ParamType.bool,
          false,
        ),
        heartByMe: deserializeParam(
          data['HeartByMe'],
          ParamType.bool,
          false,
        ),
        pinnedByMe: deserializeParam(
          data['PinnedByMe'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ForActionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ForActionsStruct &&
        likedBy == other.likedBy &&
        dislilkedBy == other.dislilkedBy &&
        heartedBy == other.heartedBy &&
        likeByMe == other.likeByMe &&
        dislikeByMe == other.dislikeByMe &&
        heartByMe == other.heartByMe &&
        pinnedByMe == other.pinnedByMe;
  }

  @override
  int get hashCode => const ListEquality().hash([
        likedBy,
        dislilkedBy,
        heartedBy,
        likeByMe,
        dislikeByMe,
        heartByMe,
        pinnedByMe
      ]);
}

ForActionsStruct createForActionsStruct({
  int? likedBy,
  int? dislilkedBy,
  int? heartedBy,
  bool? likeByMe,
  bool? dislikeByMe,
  bool? heartByMe,
  bool? pinnedByMe,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ForActionsStruct(
      likedBy: likedBy,
      dislilkedBy: dislilkedBy,
      heartedBy: heartedBy,
      likeByMe: likeByMe,
      dislikeByMe: dislikeByMe,
      heartByMe: heartByMe,
      pinnedByMe: pinnedByMe,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ForActionsStruct? updateForActionsStruct(
  ForActionsStruct? forActions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    forActions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addForActionsStructData(
  Map<String, dynamic> firestoreData,
  ForActionsStruct? forActions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (forActions == null) {
    return;
  }
  if (forActions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && forActions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final forActionsData = getForActionsFirestoreData(forActions, forFieldValue);
  final nestedData = forActionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = forActions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getForActionsFirestoreData(
  ForActionsStruct? forActions, [
  bool forFieldValue = false,
]) {
  if (forActions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(forActions.toMap());

  // Add any Firestore field values
  forActions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getForActionsListFirestoreData(
  List<ForActionsStruct>? forActionss,
) =>
    forActionss?.map((e) => getForActionsFirestoreData(e, true)).toList() ?? [];

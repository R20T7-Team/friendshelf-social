// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShelfStruct extends FFFirebaseStruct {
  ShelfStruct({
    String? name,
    String? aboutShelf,
    DocumentReference? relatedUser,
    String? type,
    List<DocumentReference>? listOfCategories,
    DocumentReference? mainCategory,
    String? mainCategoryString,
    DocumentReference? createdShelfRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _aboutShelf = aboutShelf,
        _relatedUser = relatedUser,
        _type = type,
        _listOfCategories = listOfCategories,
        _mainCategory = mainCategory,
        _mainCategoryString = mainCategoryString,
        _createdShelfRef = createdShelfRef,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "AboutShelf" field.
  String? _aboutShelf;
  String get aboutShelf => _aboutShelf ?? '';
  set aboutShelf(String? val) => _aboutShelf = val;

  bool hasAboutShelf() => _aboutShelf != null;

  // "Related_User" field.
  DocumentReference? _relatedUser;
  DocumentReference? get relatedUser => _relatedUser;
  set relatedUser(DocumentReference? val) => _relatedUser = val;

  bool hasRelatedUser() => _relatedUser != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "ListOfCategories" field.
  List<DocumentReference>? _listOfCategories;
  List<DocumentReference> get listOfCategories => _listOfCategories ?? const [];
  set listOfCategories(List<DocumentReference>? val) => _listOfCategories = val;

  void updateListOfCategories(Function(List<DocumentReference>) updateFn) {
    updateFn(_listOfCategories ??= []);
  }

  bool hasListOfCategories() => _listOfCategories != null;

  // "Main_Category" field.
  DocumentReference? _mainCategory;
  DocumentReference? get mainCategory => _mainCategory;
  set mainCategory(DocumentReference? val) => _mainCategory = val;

  bool hasMainCategory() => _mainCategory != null;

  // "MainCategoryString" field.
  String? _mainCategoryString;
  String get mainCategoryString => _mainCategoryString ?? 'Category';
  set mainCategoryString(String? val) => _mainCategoryString = val;

  bool hasMainCategoryString() => _mainCategoryString != null;

  // "Created_Shelf_Ref" field.
  DocumentReference? _createdShelfRef;
  DocumentReference? get createdShelfRef => _createdShelfRef;
  set createdShelfRef(DocumentReference? val) => _createdShelfRef = val;

  bool hasCreatedShelfRef() => _createdShelfRef != null;

  static ShelfStruct fromMap(Map<String, dynamic> data) => ShelfStruct(
        name: data['Name'] as String?,
        aboutShelf: data['AboutShelf'] as String?,
        relatedUser: data['Related_User'] as DocumentReference?,
        type: data['Type'] as String?,
        listOfCategories: getDataList(data['ListOfCategories']),
        mainCategory: data['Main_Category'] as DocumentReference?,
        mainCategoryString: data['MainCategoryString'] as String?,
        createdShelfRef: data['Created_Shelf_Ref'] as DocumentReference?,
      );

  static ShelfStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShelfStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'AboutShelf': _aboutShelf,
        'Related_User': _relatedUser,
        'Type': _type,
        'ListOfCategories': _listOfCategories,
        'Main_Category': _mainCategory,
        'MainCategoryString': _mainCategoryString,
        'Created_Shelf_Ref': _createdShelfRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'AboutShelf': serializeParam(
          _aboutShelf,
          ParamType.String,
        ),
        'Related_User': serializeParam(
          _relatedUser,
          ParamType.DocumentReference,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
        'ListOfCategories': serializeParam(
          _listOfCategories,
          ParamType.DocumentReference,
          isList: true,
        ),
        'Main_Category': serializeParam(
          _mainCategory,
          ParamType.DocumentReference,
        ),
        'MainCategoryString': serializeParam(
          _mainCategoryString,
          ParamType.String,
        ),
        'Created_Shelf_Ref': serializeParam(
          _createdShelfRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ShelfStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShelfStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        aboutShelf: deserializeParam(
          data['AboutShelf'],
          ParamType.String,
          false,
        ),
        relatedUser: deserializeParam(
          data['Related_User'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
        listOfCategories: deserializeParam<DocumentReference>(
          data['ListOfCategories'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['Shelf_Categories'],
        ),
        mainCategory: deserializeParam(
          data['Main_Category'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Shelf_Categories'],
        ),
        mainCategoryString: deserializeParam(
          data['MainCategoryString'],
          ParamType.String,
          false,
        ),
        createdShelfRef: deserializeParam(
          data['Created_Shelf_Ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Shelf'],
        ),
      );

  @override
  String toString() => 'ShelfStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShelfStruct &&
        name == other.name &&
        aboutShelf == other.aboutShelf &&
        relatedUser == other.relatedUser &&
        type == other.type &&
        listEquality.equals(listOfCategories, other.listOfCategories) &&
        mainCategory == other.mainCategory &&
        mainCategoryString == other.mainCategoryString &&
        createdShelfRef == other.createdShelfRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        aboutShelf,
        relatedUser,
        type,
        listOfCategories,
        mainCategory,
        mainCategoryString,
        createdShelfRef
      ]);
}

ShelfStruct createShelfStruct({
  String? name,
  String? aboutShelf,
  DocumentReference? relatedUser,
  String? type,
  DocumentReference? mainCategory,
  String? mainCategoryString,
  DocumentReference? createdShelfRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShelfStruct(
      name: name,
      aboutShelf: aboutShelf,
      relatedUser: relatedUser,
      type: type,
      mainCategory: mainCategory,
      mainCategoryString: mainCategoryString,
      createdShelfRef: createdShelfRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShelfStruct? updateShelfStruct(
  ShelfStruct? shelf, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shelf
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShelfStructData(
  Map<String, dynamic> firestoreData,
  ShelfStruct? shelf,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shelf == null) {
    return;
  }
  if (shelf.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shelf.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shelfData = getShelfFirestoreData(shelf, forFieldValue);
  final nestedData = shelfData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shelf.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShelfFirestoreData(
  ShelfStruct? shelf, [
  bool forFieldValue = false,
]) {
  if (shelf == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shelf.toMap());

  // Add any Firestore field values
  shelf.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShelfListFirestoreData(
  List<ShelfStruct>? shelfs,
) =>
    shelfs?.map((e) => getShelfFirestoreData(e, true)).toList() ?? [];

import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _NameForAuth = '';
  String get NameForAuth => _NameForAuth;
  set NameForAuth(String value) {
    _NameForAuth = value;
  }

  ShelfStruct _CreatingShelf = ShelfStruct.fromSerializableMap(jsonDecode(
      '{\"ListOfCategories\":\"[\\\"/Shelf_Categories/3PPrsoQQVRHW3MyczYoY\\\"]\",\"newwTest\":\"[]\"}'));
  ShelfStruct get CreatingShelf => _CreatingShelf;
  set CreatingShelf(ShelfStruct value) {
    _CreatingShelf = value;
  }

  void updateCreatingShelfStruct(Function(ShelfStruct) updateFn) {
    updateFn(_CreatingShelf);
  }

  ForActionsStruct _ForActions = ForActionsStruct();
  ForActionsStruct get ForActions => _ForActions;
  set ForActions(ForActionsStruct value) {
    _ForActions = value;
  }

  void updateForActionsStruct(Function(ForActionsStruct) updateFn) {
    updateFn(_ForActions);
  }

  BottomTab? _bottomTab = BottomTab.Home;
  BottomTab? get bottomTab => _bottomTab;
  set bottomTab(BottomTab? value) {
    _bottomTab = value;
  }

  bool _optionsMessage = false;
  bool get optionsMessage => _optionsMessage;
  set optionsMessage(bool value) {
    _optionsMessage = value;
  }

  bool _EditRecommendation = false;
  bool get EditRecommendation => _EditRecommendation;
  set EditRecommendation(bool value) {
    _EditRecommendation = value;
  }

  List<DocumentReference> _InvitingUsers = [];
  List<DocumentReference> get InvitingUsers => _InvitingUsers;
  set InvitingUsers(List<DocumentReference> value) {
    _InvitingUsers = value;
  }

  void addToInvitingUsers(DocumentReference value) {
    InvitingUsers.add(value);
  }

  void removeFromInvitingUsers(DocumentReference value) {
    InvitingUsers.remove(value);
  }

  void removeAtIndexFromInvitingUsers(int index) {
    InvitingUsers.removeAt(index);
  }

  void updateInvitingUsersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    InvitingUsers[index] = updateFn(_InvitingUsers[index]);
  }

  void insertAtIndexInInvitingUsers(int index, DocumentReference value) {
    InvitingUsers.insert(index, value);
  }

  DocumentReference? _createdRecommendation;
  DocumentReference? get createdRecommendation => _createdRecommendation;
  set createdRecommendation(DocumentReference? value) {
    _createdRecommendation = value;
  }

  List<DocumentReference> _ListOfCategories = [];
  List<DocumentReference> get ListOfCategories => _ListOfCategories;
  set ListOfCategories(List<DocumentReference> value) {
    _ListOfCategories = value;
  }

  void addToListOfCategories(DocumentReference value) {
    ListOfCategories.add(value);
  }

  void removeFromListOfCategories(DocumentReference value) {
    ListOfCategories.remove(value);
  }

  void removeAtIndexFromListOfCategories(int index) {
    ListOfCategories.removeAt(index);
  }

  void updateListOfCategoriesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    ListOfCategories[index] = updateFn(_ListOfCategories[index]);
  }

  void insertAtIndexInListOfCategories(int index, DocumentReference value) {
    ListOfCategories.insert(index, value);
  }

  bool _EditShelf = false;
  bool get EditShelf => _EditShelf;
  set EditShelf(bool value) {
    _EditShelf = value;
  }
}

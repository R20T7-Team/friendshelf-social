part of 'example.dart';

class AddFoodItemVariablesBuilder {
  String name;
  double caloriesPerServing;
  double carbsPerServing;
  double fatPerServing;
  double proteinPerServing;

  final FirebaseDataConnect _dataConnect;
  AddFoodItemVariablesBuilder(this._dataConnect, {required  this.name,required  this.caloriesPerServing,required  this.carbsPerServing,required  this.fatPerServing,required  this.proteinPerServing,});
  Deserializer<AddFoodItemData> dataDeserializer = (dynamic json)  => AddFoodItemData.fromJson(jsonDecode(json));
  Serializer<AddFoodItemVariables> varsSerializer = (AddFoodItemVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<AddFoodItemData, AddFoodItemVariables>> execute() {
    return ref().execute();
  }

  MutationRef<AddFoodItemData, AddFoodItemVariables> ref() {
    AddFoodItemVariables vars= AddFoodItemVariables(name: name,caloriesPerServing: caloriesPerServing,carbsPerServing: carbsPerServing,fatPerServing: fatPerServing,proteinPerServing: proteinPerServing,);
    return _dataConnect.mutation("AddFoodItem", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class AddFoodItemFoodItemInsert {
  final String id;
  AddFoodItemFoodItemInsert.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final AddFoodItemFoodItemInsert otherTyped = other as AddFoodItemFoodItemInsert;
    return id == otherTyped.id;
    
  }
  @override
  int get hashCode => id.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    return json;
  }

  AddFoodItemFoodItemInsert({
    required this.id,
  });
}

@immutable
class AddFoodItemData {
  final AddFoodItemFoodItemInsert foodItem_insert;
  AddFoodItemData.fromJson(dynamic json):
  
  foodItem_insert = AddFoodItemFoodItemInsert.fromJson(json['foodItem_insert']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final AddFoodItemData otherTyped = other as AddFoodItemData;
    return foodItem_insert == otherTyped.foodItem_insert;
    
  }
  @override
  int get hashCode => foodItem_insert.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['foodItem_insert'] = foodItem_insert.toJson();
    return json;
  }

  AddFoodItemData({
    required this.foodItem_insert,
  });
}

@immutable
class AddFoodItemVariables {
  final String name;
  final double caloriesPerServing;
  final double carbsPerServing;
  final double fatPerServing;
  final double proteinPerServing;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  AddFoodItemVariables.fromJson(Map<String, dynamic> json):
  
  name = nativeFromJson<String>(json['name']),
  caloriesPerServing = nativeFromJson<double>(json['caloriesPerServing']),
  carbsPerServing = nativeFromJson<double>(json['carbsPerServing']),
  fatPerServing = nativeFromJson<double>(json['fatPerServing']),
  proteinPerServing = nativeFromJson<double>(json['proteinPerServing']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final AddFoodItemVariables otherTyped = other as AddFoodItemVariables;
    return name == otherTyped.name && 
    caloriesPerServing == otherTyped.caloriesPerServing && 
    carbsPerServing == otherTyped.carbsPerServing && 
    fatPerServing == otherTyped.fatPerServing && 
    proteinPerServing == otherTyped.proteinPerServing;
    
  }
  @override
  int get hashCode => Object.hashAll([name.hashCode, caloriesPerServing.hashCode, carbsPerServing.hashCode, fatPerServing.hashCode, proteinPerServing.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['name'] = nativeToJson<String>(name);
    json['caloriesPerServing'] = nativeToJson<double>(caloriesPerServing);
    json['carbsPerServing'] = nativeToJson<double>(carbsPerServing);
    json['fatPerServing'] = nativeToJson<double>(fatPerServing);
    json['proteinPerServing'] = nativeToJson<double>(proteinPerServing);
    return json;
  }

  AddFoodItemVariables({
    required this.name,
    required this.caloriesPerServing,
    required this.carbsPerServing,
    required this.fatPerServing,
    required this.proteinPerServing,
  });
}


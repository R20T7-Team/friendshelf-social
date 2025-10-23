part of 'example.dart';

class CreateMealVariablesBuilder {
  String userId;
  DateTime logDate;
  String mealType;
  Optional<String> _photoUrl = Optional.optional(nativeFromJson, nativeToJson);

  final FirebaseDataConnect _dataConnect;  CreateMealVariablesBuilder photoUrl(String? t) {
   _photoUrl.value = t;
   return this;
  }

  CreateMealVariablesBuilder(this._dataConnect, {required  this.userId,required  this.logDate,required  this.mealType,});
  Deserializer<CreateMealData> dataDeserializer = (dynamic json)  => CreateMealData.fromJson(jsonDecode(json));
  Serializer<CreateMealVariables> varsSerializer = (CreateMealVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<CreateMealData, CreateMealVariables>> execute() {
    return ref().execute();
  }

  MutationRef<CreateMealData, CreateMealVariables> ref() {
    CreateMealVariables vars= CreateMealVariables(userId: userId,logDate: logDate,mealType: mealType,photoUrl: _photoUrl,);
    return _dataConnect.mutation("CreateMeal", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class CreateMealMealInsert {
  final String id;
  CreateMealMealInsert.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateMealMealInsert otherTyped = other as CreateMealMealInsert;
    return id == otherTyped.id;
    
  }
  @override
  int get hashCode => id.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    return json;
  }

  CreateMealMealInsert({
    required this.id,
  });
}

@immutable
class CreateMealData {
  final CreateMealMealInsert meal_insert;
  CreateMealData.fromJson(dynamic json):
  
  meal_insert = CreateMealMealInsert.fromJson(json['meal_insert']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateMealData otherTyped = other as CreateMealData;
    return meal_insert == otherTyped.meal_insert;
    
  }
  @override
  int get hashCode => meal_insert.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['meal_insert'] = meal_insert.toJson();
    return json;
  }

  CreateMealData({
    required this.meal_insert,
  });
}

@immutable
class CreateMealVariables {
  final String userId;
  final DateTime logDate;
  final String mealType;
  late final Optional<String>photoUrl;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  CreateMealVariables.fromJson(Map<String, dynamic> json):
  
  userId = nativeFromJson<String>(json['userId']),
  logDate = nativeFromJson<DateTime>(json['logDate']),
  mealType = nativeFromJson<String>(json['mealType']) {
  
  
  
  
  
    photoUrl = Optional.optional(nativeFromJson, nativeToJson);
    photoUrl.value = json['photoUrl'] == null ? null : nativeFromJson<String>(json['photoUrl']);
  
  }
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateMealVariables otherTyped = other as CreateMealVariables;
    return userId == otherTyped.userId && 
    logDate == otherTyped.logDate && 
    mealType == otherTyped.mealType && 
    photoUrl == otherTyped.photoUrl;
    
  }
  @override
  int get hashCode => Object.hashAll([userId.hashCode, logDate.hashCode, mealType.hashCode, photoUrl.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['userId'] = nativeToJson<String>(userId);
    json['logDate'] = nativeToJson<DateTime>(logDate);
    json['mealType'] = nativeToJson<String>(mealType);
    if(photoUrl.state == OptionalState.set) {
      json['photoUrl'] = photoUrl.toJson();
    }
    return json;
  }

  CreateMealVariables({
    required this.userId,
    required this.logDate,
    required this.mealType,
    required this.photoUrl,
  });
}


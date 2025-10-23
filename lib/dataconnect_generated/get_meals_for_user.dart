part of 'example.dart';

class GetMealsForUserVariablesBuilder {
  String userId;

  final FirebaseDataConnect _dataConnect;
  GetMealsForUserVariablesBuilder(this._dataConnect, {required  this.userId,});
  Deserializer<GetMealsForUserData> dataDeserializer = (dynamic json)  => GetMealsForUserData.fromJson(jsonDecode(json));
  Serializer<GetMealsForUserVariables> varsSerializer = (GetMealsForUserVariables vars) => jsonEncode(vars.toJson());
  Future<QueryResult<GetMealsForUserData, GetMealsForUserVariables>> execute() {
    return ref().execute();
  }

  QueryRef<GetMealsForUserData, GetMealsForUserVariables> ref() {
    GetMealsForUserVariables vars= GetMealsForUserVariables(userId: userId,);
    return _dataConnect.query("GetMealsForUser", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class GetMealsForUserMeals {
  final String id;
  final DateTime logDate;
  final String mealType;
  final String? photoUrl;
  final List<GetMealsForUserMealsMealIngredientsOnMeal> mealIngredients_on_meal;
  GetMealsForUserMeals.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
  logDate = nativeFromJson<DateTime>(json['logDate']),
  mealType = nativeFromJson<String>(json['mealType']),
  photoUrl = json['photoUrl'] == null ? null : nativeFromJson<String>(json['photoUrl']),
  mealIngredients_on_meal = (json['mealIngredients_on_meal'] as List<dynamic>)
        .map((e) => GetMealsForUserMealsMealIngredientsOnMeal.fromJson(e))
        .toList();
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetMealsForUserMeals otherTyped = other as GetMealsForUserMeals;
    return id == otherTyped.id && 
    logDate == otherTyped.logDate && 
    mealType == otherTyped.mealType && 
    photoUrl == otherTyped.photoUrl && 
    mealIngredients_on_meal == otherTyped.mealIngredients_on_meal;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, logDate.hashCode, mealType.hashCode, photoUrl.hashCode, mealIngredients_on_meal.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['logDate'] = nativeToJson<DateTime>(logDate);
    json['mealType'] = nativeToJson<String>(mealType);
    if (photoUrl != null) {
      json['photoUrl'] = nativeToJson<String?>(photoUrl);
    }
    json['mealIngredients_on_meal'] = mealIngredients_on_meal.map((e) => e.toJson()).toList();
    return json;
  }

  GetMealsForUserMeals({
    required this.id,
    required this.logDate,
    required this.mealType,
    this.photoUrl,
    required this.mealIngredients_on_meal,
  });
}

@immutable
class GetMealsForUserMealsMealIngredientsOnMeal {
  final String id;
  final String quantity;
  final GetMealsForUserMealsMealIngredientsOnMealFoodItem foodItem;
  GetMealsForUserMealsMealIngredientsOnMeal.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
  quantity = nativeFromJson<String>(json['quantity']),
  foodItem = GetMealsForUserMealsMealIngredientsOnMealFoodItem.fromJson(json['foodItem']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetMealsForUserMealsMealIngredientsOnMeal otherTyped = other as GetMealsForUserMealsMealIngredientsOnMeal;
    return id == otherTyped.id && 
    quantity == otherTyped.quantity && 
    foodItem == otherTyped.foodItem;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, quantity.hashCode, foodItem.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['quantity'] = nativeToJson<String>(quantity);
    json['foodItem'] = foodItem.toJson();
    return json;
  }

  GetMealsForUserMealsMealIngredientsOnMeal({
    required this.id,
    required this.quantity,
    required this.foodItem,
  });
}

@immutable
class GetMealsForUserMealsMealIngredientsOnMealFoodItem {
  final String id;
  final String name;
  final double caloriesPerServing;
  final double carbsPerServing;
  final double fatPerServing;
  final double proteinPerServing;
  GetMealsForUserMealsMealIngredientsOnMealFoodItem.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
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

    final GetMealsForUserMealsMealIngredientsOnMealFoodItem otherTyped = other as GetMealsForUserMealsMealIngredientsOnMealFoodItem;
    return id == otherTyped.id && 
    name == otherTyped.name && 
    caloriesPerServing == otherTyped.caloriesPerServing && 
    carbsPerServing == otherTyped.carbsPerServing && 
    fatPerServing == otherTyped.fatPerServing && 
    proteinPerServing == otherTyped.proteinPerServing;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, name.hashCode, caloriesPerServing.hashCode, carbsPerServing.hashCode, fatPerServing.hashCode, proteinPerServing.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['name'] = nativeToJson<String>(name);
    json['caloriesPerServing'] = nativeToJson<double>(caloriesPerServing);
    json['carbsPerServing'] = nativeToJson<double>(carbsPerServing);
    json['fatPerServing'] = nativeToJson<double>(fatPerServing);
    json['proteinPerServing'] = nativeToJson<double>(proteinPerServing);
    return json;
  }

  GetMealsForUserMealsMealIngredientsOnMealFoodItem({
    required this.id,
    required this.name,
    required this.caloriesPerServing,
    required this.carbsPerServing,
    required this.fatPerServing,
    required this.proteinPerServing,
  });
}

@immutable
class GetMealsForUserData {
  final List<GetMealsForUserMeals> meals;
  GetMealsForUserData.fromJson(dynamic json):
  
  meals = (json['meals'] as List<dynamic>)
        .map((e) => GetMealsForUserMeals.fromJson(e))
        .toList();
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetMealsForUserData otherTyped = other as GetMealsForUserData;
    return meals == otherTyped.meals;
    
  }
  @override
  int get hashCode => meals.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['meals'] = meals.map((e) => e.toJson()).toList();
    return json;
  }

  GetMealsForUserData({
    required this.meals,
  });
}

@immutable
class GetMealsForUserVariables {
  final String userId;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  GetMealsForUserVariables.fromJson(Map<String, dynamic> json):
  
  userId = nativeFromJson<String>(json['userId']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetMealsForUserVariables otherTyped = other as GetMealsForUserVariables;
    return userId == otherTyped.userId;
    
  }
  @override
  int get hashCode => userId.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['userId'] = nativeToJson<String>(userId);
    return json;
  }

  GetMealsForUserVariables({
    required this.userId,
  });
}


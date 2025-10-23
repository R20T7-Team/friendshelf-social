library dataconnect_generated;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

part 'add_food_item.dart';

part 'get_meals_for_user.dart';

part 'create_meal.dart';

part 'create_user.dart';







class ExampleConnector {
  
  
  AddFoodItemVariablesBuilder addFoodItem ({required String name, required double caloriesPerServing, required double carbsPerServing, required double fatPerServing, required double proteinPerServing, }) {
    return AddFoodItemVariablesBuilder(dataConnect, name: name,caloriesPerServing: caloriesPerServing,carbsPerServing: carbsPerServing,fatPerServing: fatPerServing,proteinPerServing: proteinPerServing,);
  }
  
  
  GetMealsForUserVariablesBuilder getMealsForUser ({required String userId, }) {
    return GetMealsForUserVariablesBuilder(dataConnect, userId: userId,);
  }
  
  
  CreateMealVariablesBuilder createMeal ({required String userId, required DateTime logDate, required String mealType, }) {
    return CreateMealVariablesBuilder(dataConnect, userId: userId,logDate: logDate,mealType: mealType,);
  }
  
  
  CreateUserVariablesBuilder createUser ({required String displayName, }) {
    return CreateUserVariablesBuilder(dataConnect, displayName: displayName,);
  }
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'southamerica-east1',
    'example',
    'friendshelfsocialmediaapptemplate',
  );

  ExampleConnector({required this.dataConnect});
  static ExampleConnector get instance {
    return ExampleConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}


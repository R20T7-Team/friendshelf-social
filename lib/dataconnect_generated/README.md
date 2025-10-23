# dataconnect_generated SDK

## Installation
```sh
flutter pub get firebase_data_connect
flutterfire configure
```
For more information, see [Flutter for Firebase installation documentation](https://firebase.google.com/docs/data-connect/flutter-sdk#use-core).

## Data Connect instance
Each connector creates a static class, with an instance of the `DataConnect` class that can be used to connect to your Data Connect backend and call operations.

### Connecting to the emulator

```dart
String host = 'localhost'; // or your host name
int port = 9399; // or your port number
ExampleConnector.instance.dataConnect.useDataConnectEmulator(host, port);
```

You can also call queries and mutations by using the connector class.
## Queries

### GetMealsForUser
#### Required Arguments
```dart
String userId = ...;
ExampleConnector.instance.getMealsForUser(
  userId: userId,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<GetMealsForUserData, GetMealsForUserVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await ExampleConnector.instance.getMealsForUser(
  userId: userId,
);
GetMealsForUserData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String userId = ...;

final ref = ExampleConnector.instance.getMealsForUser(
  userId: userId,
).ref();
ref.execute();

ref.subscribe(...);
```

## Mutations

### AddFoodItem
#### Required Arguments
```dart
String name = ...;
double caloriesPerServing = ...;
double carbsPerServing = ...;
double fatPerServing = ...;
double proteinPerServing = ...;
ExampleConnector.instance.addFoodItem(
  name: name,
  caloriesPerServing: caloriesPerServing,
  carbsPerServing: carbsPerServing,
  fatPerServing: fatPerServing,
  proteinPerServing: proteinPerServing,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<AddFoodItemData, AddFoodItemVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await ExampleConnector.instance.addFoodItem(
  name: name,
  caloriesPerServing: caloriesPerServing,
  carbsPerServing: carbsPerServing,
  fatPerServing: fatPerServing,
  proteinPerServing: proteinPerServing,
);
AddFoodItemData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String name = ...;
double caloriesPerServing = ...;
double carbsPerServing = ...;
double fatPerServing = ...;
double proteinPerServing = ...;

final ref = ExampleConnector.instance.addFoodItem(
  name: name,
  caloriesPerServing: caloriesPerServing,
  carbsPerServing: carbsPerServing,
  fatPerServing: fatPerServing,
  proteinPerServing: proteinPerServing,
).ref();
ref.execute();
```


### CreateMeal
#### Required Arguments
```dart
String userId = ...;
DateTime logDate = ...;
String mealType = ...;
ExampleConnector.instance.createMeal(
  userId: userId,
  logDate: logDate,
  mealType: mealType,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateMeal, we created `CreateMealBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateMealVariablesBuilder {
  ...
   CreateMealVariablesBuilder photoUrl(String? t) {
   _photoUrl.value = t;
   return this;
  }

  ...
}
ExampleConnector.instance.createMeal(
  userId: userId,
  logDate: logDate,
  mealType: mealType,
)
.photoUrl(photoUrl)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateMealData, CreateMealVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await ExampleConnector.instance.createMeal(
  userId: userId,
  logDate: logDate,
  mealType: mealType,
);
CreateMealData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String userId = ...;
DateTime logDate = ...;
String mealType = ...;

final ref = ExampleConnector.instance.createMeal(
  userId: userId,
  logDate: logDate,
  mealType: mealType,
).ref();
ref.execute();
```


### CreateUser
#### Required Arguments
```dart
String displayName = ...;
ExampleConnector.instance.createUser(
  displayName: displayName,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<CreateUserData, CreateUserVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await ExampleConnector.instance.createUser(
  displayName: displayName,
);
CreateUserData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String displayName = ...;

final ref = ExampleConnector.instance.createUser(
  displayName: displayName,
).ref();
ref.execute();
```


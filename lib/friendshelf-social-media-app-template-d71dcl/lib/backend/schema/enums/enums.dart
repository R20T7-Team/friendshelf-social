import 'package:collection/collection.dart';

enum PublicVsCollaborative {
  Public,
  Collaborative,
}

enum ShelfViewTabs {
  About,
  Discussion,
}

enum BottomTab {
  Home,
  Shelf,
  Messages,
  Profile,
  CreateShelf,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (PublicVsCollaborative):
      return PublicVsCollaborative.values.deserialize(value) as T?;
    case (ShelfViewTabs):
      return ShelfViewTabs.values.deserialize(value) as T?;
    case (BottomTab):
      return BottomTab.values.deserialize(value) as T?;
    default:
      return null;
  }
}

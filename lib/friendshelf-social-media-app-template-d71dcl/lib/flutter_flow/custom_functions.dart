import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<ShelfRecord>? allShelfs(
  String? searchText,
  List<DocumentReference>? listedcategories,
  List<ShelfRecord>? shelfss,
) {
  if (shelfss == null) return null;

  var filteredShelfs = shelfss.where((shelf) {
    var matchesSearchText = searchText == null ||
        shelf.name.toLowerCase().contains(searchText.toLowerCase()) ||
        shelf.aboutShelf.toLowerCase().contains(searchText.toLowerCase());

    var matchesCategories = listedcategories == null ||
        listedcategories.isEmpty ||
        listedcategories
            .any((category) => shelf.listOfCategories.contains(category));

    return matchesSearchText && matchesCategories;
  }).toList();

  return filteredShelfs;

  // get records from Shelf
}

List<RecommendationRecord>? recommendations(
  List<RecommendationRecord>? providerecommendations,
  DocumentReference? category,
  String? searchText,
  String? typee,
) {
  if (providerecommendations == null) return null;

  var filteredRecommendations = providerecommendations.where((rec) {
    var matchesSearchText = searchText == null ||
        rec.name.toLowerCase().contains(searchText.toLowerCase()) ||
        rec.description.toLowerCase().contains(searchText.toLowerCase());

    var matchesCategories = category == null || rec.mainCategory == category;

    var matchesType = typee == null || rec.type == typee;

    return matchesSearchText && matchesCategories && matchesType;
  }).toList();
  return filteredRecommendations;
}

List<RecommendationRecord>? relevantRecommendations(
  List<RecommendationRecord>? providerecommendations,
  RecommendationRecord? notrecommended,
) {
  if (providerecommendations == null) return null;

  return providerecommendations
      .where((rec) => notrecommended == null || rec != notrecommended)
      .toList();
}

List<MessagesRecord>? returnMessages(
  List<MessagesRecord>? allMessages,
  DocumentReference? providedRecommendation,
) {
  if (allMessages == null) return null;

  var filteredMessages = allMessages.where((msg) {
    return (providedRecommendation == null ||
            msg.relatedRecommendation == providedRecommendation) &&
        msg.repliedTo == null;
  }).toList();
  return filteredMessages;
}

List<MessagesRecord>? repliedMsgList(
  List<MessagesRecord>? providedMessages,
  DocumentReference? currentMsg,
) {
  if (providedMessages == null) return null;

  // This line attempts to store a list of messages in a variable named count, which is incorrect.
  var count =
      providedMessages.where((msg) => msg.repliedTo == currentMsg).toList();

  // This line attempts to return an integer where a List<MessagesRecord> is expected, leading to a type mismatch error.
  return count;
}

int? repliedMsgCount(
  List<MessagesRecord>? providedMessages,
  DocumentReference? currentMsg,
) {
  if (providedMessages == null) return null;

  int count =
      providedMessages.where((msg) => msg.repliedTo == currentMsg).length;

  return count;
}

int? relevantrRecommendationsCount(
  List<RecommendationRecord>? providedRecommendations,
  DocumentReference? notRecommended,
) {
  if (providedRecommendations == null) return null;

  int count = providedRecommendations
      .where((rec) => notRecommended == null || rec != notRecommended)
      .length;
  return count;
}

RecommendationRecord? singleRecommendation(
  DocumentReference? providedRecommendation,
  List<RecommendationRecord>? providedRecommendationss,
) {
  if (providedRecommendation == null || providedRecommendationss == null)
    return null;

  for (RecommendationRecord recommendation in providedRecommendationss) {
    if (recommendation.reference == providedRecommendation) {
      return recommendation;
    }
  }

  return null;
}

String? capitlizedWord(String? providedName) {
  // capitzalized the provided string like umar amjad into Umar Amjad
  if (providedName == null || providedName.isEmpty) {
    return null;
  }
  final List<String> words = providedName.split(' ');
  final List<String> capitalizedWords = words.map((word) {
    if (word.isEmpty) {
      return '';
    }
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).toList();
  return capitalizedWords.join(' ');
}

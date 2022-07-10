import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';

class Post {
  static const KEY = "key";
  static const DATE = "date";
  static const TITLE = "title";
  static const BODY = "body";

  int date;
  String? key;
  String title;
  String body;

  Post(this.key, this.date, this.title, this.body);

  Post.fromSnapshot(DataSnapshot snap)
      : date = (snap.value as dynamic)[DATE],
        key = snap.key,
        body = (snap.value as dynamic)[BODY],
        title = (snap.value as dynamic)[TITLE];

  Map toMap() {
    return {BODY: body, TITLE: title, DATE: date};
  }
}

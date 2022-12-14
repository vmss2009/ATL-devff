import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String convertbooltostring(bool? text) {
  return ("$text");
}

String returnTeamMembersInStringFormat(List<String> teamMembers) {
  return teamMembers.join(",");
}

DocumentReference returnDocumentRefrence(
    List<DocumentReference> documentRefrenceList) {
  return documentRefrenceList[
      math.Random().nextInt(documentRefrenceList.length)];
}

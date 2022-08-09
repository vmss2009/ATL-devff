import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teamdata_record.g.dart';

abstract class TeamdataRecord
    implements Built<TeamdataRecord, TeamdataRecordBuilder> {
  static Serializer<TeamdataRecord> get serializer =>
      _$teamdataRecordSerializer;

  String? get experiment;

  String? get teamLeader;

  BuiltList<String>? get teamMember;

  String? get teamName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeamdataRecordBuilder builder) => builder
    ..experiment = ''
    ..teamLeader = ''
    ..teamMember = ListBuilder()
    ..teamName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teamdata');

  static Stream<TeamdataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeamdataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeamdataRecord._();
  factory TeamdataRecord([void Function(TeamdataRecordBuilder) updates]) =
      _$TeamdataRecord;

  static TeamdataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeamdataRecordData({
  String? experiment,
  String? teamLeader,
  String? teamName,
}) {
  final firestoreData = serializers.toFirestore(
    TeamdataRecord.serializer,
    TeamdataRecord(
      (t) => t
        ..experiment = experiment
        ..teamLeader = teamLeader
        ..teamMember = null
        ..teamName = teamName,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'team_data_record.g.dart';

abstract class TeamDataRecord
    implements Built<TeamDataRecord, TeamDataRecordBuilder> {
  static Serializer<TeamDataRecord> get serializer =>
      _$teamDataRecordSerializer;

  String? get experiment;

  String? get teamLeader;

  BuiltList<String>? get teamMember;

  String? get teamName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeamDataRecordBuilder builder) => builder
    ..experiment = ''
    ..teamLeader = ''
    ..teamMember = ListBuilder()
    ..teamName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teamData');

  static Stream<TeamDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeamDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeamDataRecord._();
  factory TeamDataRecord([void Function(TeamDataRecordBuilder) updates]) =
      _$TeamDataRecord;

  static TeamDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeamDataRecordData({
  String? experiment,
  String? teamLeader,
  String? teamName,
}) {
  final firestoreData = serializers.toFirestore(
    TeamDataRecord.serializer,
    TeamDataRecord(
      (t) => t
        ..experiment = experiment
        ..teamLeader = teamLeader
        ..teamMember = null
        ..teamName = teamName,
    ),
  );

  return firestoreData;
}

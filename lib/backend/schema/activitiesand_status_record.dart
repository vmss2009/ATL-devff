import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'activitiesand_status_record.g.dart';

abstract class ActivitiesandStatusRecord
    implements
        Built<ActivitiesandStatusRecord, ActivitiesandStatusRecordBuilder> {
  static Serializer<ActivitiesandStatusRecord> get serializer =>
      _$activitiesandStatusRecordSerializer;

  DateTime? get toDoDate;

  String? get toDoName;

  String? get toDoDescription;

  bool? get toDoState;

  DateTime? get completedDate;

  DocumentReference? get user;

  BuiltList<String>? get role;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ActivitiesandStatusRecordBuilder builder) =>
      builder
        ..toDoName = ''
        ..toDoDescription = ''
        ..toDoState = false
        ..role = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ActivitiesandStatus');

  static Stream<ActivitiesandStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActivitiesandStatusRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActivitiesandStatusRecord._();
  factory ActivitiesandStatusRecord(
          [void Function(ActivitiesandStatusRecordBuilder) updates]) =
      _$ActivitiesandStatusRecord;

  static ActivitiesandStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActivitiesandStatusRecordData({
  DateTime? toDoDate,
  String? toDoName,
  String? toDoDescription,
  bool? toDoState,
  DateTime? completedDate,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    ActivitiesandStatusRecord.serializer,
    ActivitiesandStatusRecord(
      (a) => a
        ..toDoDate = toDoDate
        ..toDoName = toDoName
        ..toDoDescription = toDoDescription
        ..toDoState = toDoState
        ..completedDate = completedDate
        ..user = user
        ..role = null,
    ),
  );

  return firestoreData;
}

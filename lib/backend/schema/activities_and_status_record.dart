import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'activities_and_status_record.g.dart';

abstract class ActivitiesAndStatusRecord
    implements
        Built<ActivitiesAndStatusRecord, ActivitiesAndStatusRecordBuilder> {
  static Serializer<ActivitiesAndStatusRecord> get serializer =>
      _$activitiesAndStatusRecordSerializer;

  DateTime? get toDoDate;

  String? get toDoName;

  String? get toDoDescription;

  bool? get toDoState;

  DateTime? get completedDate;

  BuiltList<String>? get role;

  DocumentReference? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ActivitiesAndStatusRecordBuilder builder) =>
      builder
        ..toDoName = ''
        ..toDoDescription = ''
        ..toDoState = false
        ..role = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activitiesAndStatus');

  static Stream<ActivitiesAndStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActivitiesAndStatusRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActivitiesAndStatusRecord._();
  factory ActivitiesAndStatusRecord(
          [void Function(ActivitiesAndStatusRecordBuilder) updates]) =
      _$ActivitiesAndStatusRecord;

  static ActivitiesAndStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActivitiesAndStatusRecordData({
  DateTime? toDoDate,
  String? toDoName,
  String? toDoDescription,
  bool? toDoState,
  DateTime? completedDate,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    ActivitiesAndStatusRecord.serializer,
    ActivitiesAndStatusRecord(
      (a) => a
        ..toDoDate = toDoDate
        ..toDoName = toDoName
        ..toDoDescription = toDoDescription
        ..toDoState = toDoState
        ..completedDate = completedDate
        ..role = null
        ..user = user,
    ),
  );

  return firestoreData;
}

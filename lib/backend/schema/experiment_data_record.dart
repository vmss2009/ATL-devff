import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'experiment_data_record.g.dart';

abstract class ExperimentDataRecord
    implements Built<ExperimentDataRecord, ExperimentDataRecordBuilder> {
  static Serializer<ExperimentDataRecord> get serializer =>
      _$experimentDataRecordSerializer;

  String? get experimentName;

  String? get aim;

  String? get procedure;

  String? get observation;

  String? get result;

  BuiltList<String>? get appartus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExperimentDataRecordBuilder builder) => builder
    ..experimentName = ''
    ..aim = ''
    ..procedure = ''
    ..observation = ''
    ..result = ''
    ..appartus = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('experimentData');

  static Stream<ExperimentDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExperimentDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExperimentDataRecord._();
  factory ExperimentDataRecord(
          [void Function(ExperimentDataRecordBuilder) updates]) =
      _$ExperimentDataRecord;

  static ExperimentDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExperimentDataRecordData({
  String? experimentName,
  String? aim,
  String? procedure,
  String? observation,
  String? result,
}) {
  final firestoreData = serializers.toFirestore(
    ExperimentDataRecord.serializer,
    ExperimentDataRecord(
      (e) => e
        ..experimentName = experimentName
        ..aim = aim
        ..procedure = procedure
        ..observation = observation
        ..result = result
        ..appartus = null,
    ),
  );

  return firestoreData;
}

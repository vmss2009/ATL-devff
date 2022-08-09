import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'young_mentor_data_record.g.dart';

abstract class YoungMentorDataRecord
    implements Built<YoungMentorDataRecord, YoungMentorDataRecordBuilder> {
  static Serializer<YoungMentorDataRecord> get serializer =>
      _$youngMentorDataRecordSerializer;

  String? get youngMentorCollege;

  String? get youngMentorFirstName;

  String? get youngMentorLastName;

  String? get youngMentorDepartment;

  String? get youngMentorStudy;

  String? get youngMentorYear;

  String? get youngMentorEmail;

  String? get youngMentorWhatsappContact;

  String? get youngMentorCurrentExperiment;

  String? get youngMentorCompetitionMapped;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(YoungMentorDataRecordBuilder builder) =>
      builder
        ..youngMentorCollege = ''
        ..youngMentorFirstName = ''
        ..youngMentorLastName = ''
        ..youngMentorDepartment = ''
        ..youngMentorStudy = ''
        ..youngMentorYear = ''
        ..youngMentorEmail = ''
        ..youngMentorWhatsappContact = ''
        ..youngMentorCurrentExperiment = ''
        ..youngMentorCompetitionMapped = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('youngMentorData');

  static Stream<YoungMentorDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<YoungMentorDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  YoungMentorDataRecord._();
  factory YoungMentorDataRecord(
          [void Function(YoungMentorDataRecordBuilder) updates]) =
      _$YoungMentorDataRecord;

  static YoungMentorDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createYoungMentorDataRecordData({
  String? youngMentorCollege,
  String? youngMentorFirstName,
  String? youngMentorLastName,
  String? youngMentorDepartment,
  String? youngMentorStudy,
  String? youngMentorYear,
  String? youngMentorEmail,
  String? youngMentorWhatsappContact,
  String? youngMentorCurrentExperiment,
  String? youngMentorCompetitionMapped,
}) {
  final firestoreData = serializers.toFirestore(
    YoungMentorDataRecord.serializer,
    YoungMentorDataRecord(
      (y) => y
        ..youngMentorCollege = youngMentorCollege
        ..youngMentorFirstName = youngMentorFirstName
        ..youngMentorLastName = youngMentorLastName
        ..youngMentorDepartment = youngMentorDepartment
        ..youngMentorStudy = youngMentorStudy
        ..youngMentorYear = youngMentorYear
        ..youngMentorEmail = youngMentorEmail
        ..youngMentorWhatsappContact = youngMentorWhatsappContact
        ..youngMentorCurrentExperiment = youngMentorCurrentExperiment
        ..youngMentorCompetitionMapped = youngMentorCompetitionMapped,
    ),
  );

  return firestoreData;
}

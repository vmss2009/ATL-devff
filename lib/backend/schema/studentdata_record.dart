import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'studentdata_record.g.dart';

abstract class StudentdataRecord
    implements Built<StudentdataRecord, StudentdataRecordBuilder> {
  static Serializer<StudentdataRecord> get serializer =>
      _$studentdataRecordSerializer;

  String? get schoolName;

  String? get firstName;

  String? get lastName;

  String? get studentClass;

  String? get email;

  String? get whatsappContact;

  String? get aspiration;

  bool? get teamLeader;

  String? get currentTinkeringActivity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentdataRecordBuilder builder) => builder
    ..schoolName = ''
    ..firstName = ''
    ..lastName = ''
    ..studentClass = ''
    ..email = ''
    ..whatsappContact = ''
    ..aspiration = ''
    ..teamLeader = false
    ..currentTinkeringActivity = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studentdata');

  static Stream<StudentdataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentdataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentdataRecord._();
  factory StudentdataRecord([void Function(StudentdataRecordBuilder) updates]) =
      _$StudentdataRecord;

  static StudentdataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentdataRecordData({
  String? schoolName,
  String? firstName,
  String? lastName,
  String? studentClass,
  String? email,
  String? whatsappContact,
  String? aspiration,
  bool? teamLeader,
  String? currentTinkeringActivity,
}) {
  final firestoreData = serializers.toFirestore(
    StudentdataRecord.serializer,
    StudentdataRecord(
      (s) => s
        ..schoolName = schoolName
        ..firstName = firstName
        ..lastName = lastName
        ..studentClass = studentClass
        ..email = email
        ..whatsappContact = whatsappContact
        ..aspiration = aspiration
        ..teamLeader = teamLeader
        ..currentTinkeringActivity = currentTinkeringActivity,
    ),
  );

  return firestoreData;
}

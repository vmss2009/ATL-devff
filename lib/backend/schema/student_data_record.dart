import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'student_data_record.g.dart';

abstract class StudentDataRecord
    implements Built<StudentDataRecord, StudentDataRecordBuilder> {
  static Serializer<StudentDataRecord> get serializer =>
      _$studentDataRecordSerializer;

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

  static void _initializeBuilder(StudentDataRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('studentData');

  static Stream<StudentDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentDataRecord._();
  factory StudentDataRecord([void Function(StudentDataRecordBuilder) updates]) =
      _$StudentDataRecord;

  static StudentDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentDataRecordData({
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
    StudentDataRecord.serializer,
    StudentDataRecord(
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

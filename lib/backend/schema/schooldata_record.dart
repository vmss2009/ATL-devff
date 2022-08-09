import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'schooldata_record.g.dart';

abstract class SchooldataRecord
    implements Built<SchooldataRecord, SchooldataRecordBuilder> {
  static Serializer<SchooldataRecord> get serializer =>
      _$schooldataRecordSerializer;

  String? get schoolName;

  String? get inchargeEmail;

  String? get principalEmail;

  String? get inchargeWhatsappContact;

  String? get principalWhatsappContact;

  String? get principalFirstName;

  String? get principalLastName;

  String? get inchargeFirstName;

  @BuiltValueField(wireName: 'InchargeLastName')
  String? get inchargeLastName;

  String? get addressLine1;

  String? get cityordistrict;

  String? get stateorprovince;

  String? get postalcode;

  String? get country;

  bool? get atlschool;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SchooldataRecordBuilder builder) => builder
    ..schoolName = ''
    ..inchargeEmail = ''
    ..principalEmail = ''
    ..inchargeWhatsappContact = ''
    ..principalWhatsappContact = ''
    ..principalFirstName = ''
    ..principalLastName = ''
    ..inchargeFirstName = ''
    ..inchargeLastName = ''
    ..addressLine1 = ''
    ..cityordistrict = ''
    ..stateorprovince = ''
    ..postalcode = ''
    ..country = ''
    ..atlschool = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schooldata');

  static Stream<SchooldataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SchooldataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SchooldataRecord._();
  factory SchooldataRecord([void Function(SchooldataRecordBuilder) updates]) =
      _$SchooldataRecord;

  static SchooldataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSchooldataRecordData({
  String? schoolName,
  String? inchargeEmail,
  String? principalEmail,
  String? inchargeWhatsappContact,
  String? principalWhatsappContact,
  String? principalFirstName,
  String? principalLastName,
  String? inchargeFirstName,
  String? inchargeLastName,
  String? addressLine1,
  String? cityordistrict,
  String? stateorprovince,
  String? postalcode,
  String? country,
  bool? atlschool,
}) {
  final firestoreData = serializers.toFirestore(
    SchooldataRecord.serializer,
    SchooldataRecord(
      (s) => s
        ..schoolName = schoolName
        ..inchargeEmail = inchargeEmail
        ..principalEmail = principalEmail
        ..inchargeWhatsappContact = inchargeWhatsappContact
        ..principalWhatsappContact = principalWhatsappContact
        ..principalFirstName = principalFirstName
        ..principalLastName = principalLastName
        ..inchargeFirstName = inchargeFirstName
        ..inchargeLastName = inchargeLastName
        ..addressLine1 = addressLine1
        ..cityordistrict = cityordistrict
        ..stateorprovince = stateorprovince
        ..postalcode = postalcode
        ..country = country
        ..atlschool = atlschool,
    ),
  );

  return firestoreData;
}

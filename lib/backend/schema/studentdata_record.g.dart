// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studentdata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentdataRecord> _$studentdataRecordSerializer =
    new _$StudentdataRecordSerializer();

class _$StudentdataRecordSerializer
    implements StructuredSerializer<StudentdataRecord> {
  @override
  final Iterable<Type> types = const [StudentdataRecord, _$StudentdataRecord];
  @override
  final String wireName = 'StudentdataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StudentdataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.schoolName;
    if (value != null) {
      result
        ..add('schoolName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studentClass;
    if (value != null) {
      result
        ..add('studentClass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whatsappContact;
    if (value != null) {
      result
        ..add('whatsappContact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aspiration;
    if (value != null) {
      result
        ..add('aspiration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamLeader;
    if (value != null) {
      result
        ..add('teamLeader')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.currentTinkeringActivity;
    if (value != null) {
      result
        ..add('currentTinkeringActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  StudentdataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentdataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'schoolName':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'studentClass':
          result.studentClass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'whatsappContact':
          result.whatsappContact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aspiration':
          result.aspiration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamLeader':
          result.teamLeader = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'currentTinkeringActivity':
          result.currentTinkeringActivity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$StudentdataRecord extends StudentdataRecord {
  @override
  final String? schoolName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? studentClass;
  @override
  final String? email;
  @override
  final String? whatsappContact;
  @override
  final String? aspiration;
  @override
  final bool? teamLeader;
  @override
  final String? currentTinkeringActivity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentdataRecord(
          [void Function(StudentdataRecordBuilder)? updates]) =>
      (new StudentdataRecordBuilder()..update(updates))._build();

  _$StudentdataRecord._(
      {this.schoolName,
      this.firstName,
      this.lastName,
      this.studentClass,
      this.email,
      this.whatsappContact,
      this.aspiration,
      this.teamLeader,
      this.currentTinkeringActivity,
      this.ffRef})
      : super._();

  @override
  StudentdataRecord rebuild(void Function(StudentdataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentdataRecordBuilder toBuilder() =>
      new StudentdataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentdataRecord &&
        schoolName == other.schoolName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        studentClass == other.studentClass &&
        email == other.email &&
        whatsappContact == other.whatsappContact &&
        aspiration == other.aspiration &&
        teamLeader == other.teamLeader &&
        currentTinkeringActivity == other.currentTinkeringActivity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, schoolName.hashCode),
                                        firstName.hashCode),
                                    lastName.hashCode),
                                studentClass.hashCode),
                            email.hashCode),
                        whatsappContact.hashCode),
                    aspiration.hashCode),
                teamLeader.hashCode),
            currentTinkeringActivity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentdataRecord')
          ..add('schoolName', schoolName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('studentClass', studentClass)
          ..add('email', email)
          ..add('whatsappContact', whatsappContact)
          ..add('aspiration', aspiration)
          ..add('teamLeader', teamLeader)
          ..add('currentTinkeringActivity', currentTinkeringActivity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentdataRecordBuilder
    implements Builder<StudentdataRecord, StudentdataRecordBuilder> {
  _$StudentdataRecord? _$v;

  String? _schoolName;
  String? get schoolName => _$this._schoolName;
  set schoolName(String? schoolName) => _$this._schoolName = schoolName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _studentClass;
  String? get studentClass => _$this._studentClass;
  set studentClass(String? studentClass) => _$this._studentClass = studentClass;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _whatsappContact;
  String? get whatsappContact => _$this._whatsappContact;
  set whatsappContact(String? whatsappContact) =>
      _$this._whatsappContact = whatsappContact;

  String? _aspiration;
  String? get aspiration => _$this._aspiration;
  set aspiration(String? aspiration) => _$this._aspiration = aspiration;

  bool? _teamLeader;
  bool? get teamLeader => _$this._teamLeader;
  set teamLeader(bool? teamLeader) => _$this._teamLeader = teamLeader;

  String? _currentTinkeringActivity;
  String? get currentTinkeringActivity => _$this._currentTinkeringActivity;
  set currentTinkeringActivity(String? currentTinkeringActivity) =>
      _$this._currentTinkeringActivity = currentTinkeringActivity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudentdataRecordBuilder() {
    StudentdataRecord._initializeBuilder(this);
  }

  StudentdataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schoolName = $v.schoolName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _studentClass = $v.studentClass;
      _email = $v.email;
      _whatsappContact = $v.whatsappContact;
      _aspiration = $v.aspiration;
      _teamLeader = $v.teamLeader;
      _currentTinkeringActivity = $v.currentTinkeringActivity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentdataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentdataRecord;
  }

  @override
  void update(void Function(StudentdataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentdataRecord build() => _build();

  _$StudentdataRecord _build() {
    final _$result = _$v ??
        new _$StudentdataRecord._(
            schoolName: schoolName,
            firstName: firstName,
            lastName: lastName,
            studentClass: studentClass,
            email: email,
            whatsappContact: whatsappContact,
            aspiration: aspiration,
            teamLeader: teamLeader,
            currentTinkeringActivity: currentTinkeringActivity,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schooldata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchooldataRecord> _$schooldataRecordSerializer =
    new _$SchooldataRecordSerializer();

class _$SchooldataRecordSerializer
    implements StructuredSerializer<SchooldataRecord> {
  @override
  final Iterable<Type> types = const [SchooldataRecord, _$SchooldataRecord];
  @override
  final String wireName = 'SchooldataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SchooldataRecord object,
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
    value = object.inchargeEmail;
    if (value != null) {
      result
        ..add('inchargeEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.principalEmail;
    if (value != null) {
      result
        ..add('principalEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inchargeWhatsappContact;
    if (value != null) {
      result
        ..add('inchargeWhatsappContact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.principalWhatsappContact;
    if (value != null) {
      result
        ..add('principalWhatsappContact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.principalFirstName;
    if (value != null) {
      result
        ..add('principalFirstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.principalLastName;
    if (value != null) {
      result
        ..add('principalLastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inchargeFirstName;
    if (value != null) {
      result
        ..add('inchargeFirstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inchargeLastName;
    if (value != null) {
      result
        ..add('InchargeLastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLine1;
    if (value != null) {
      result
        ..add('addressLine1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityordistrict;
    if (value != null) {
      result
        ..add('cityordistrict')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateorprovince;
    if (value != null) {
      result
        ..add('stateorprovince')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalcode;
    if (value != null) {
      result
        ..add('postalcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.atlschool;
    if (value != null) {
      result
        ..add('atlschool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  SchooldataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SchooldataRecordBuilder();

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
        case 'inchargeEmail':
          result.inchargeEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'principalEmail':
          result.principalEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inchargeWhatsappContact':
          result.inchargeWhatsappContact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'principalWhatsappContact':
          result.principalWhatsappContact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'principalFirstName':
          result.principalFirstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'principalLastName':
          result.principalLastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inchargeFirstName':
          result.inchargeFirstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'InchargeLastName':
          result.inchargeLastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addressLine1':
          result.addressLine1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityordistrict':
          result.cityordistrict = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stateorprovince':
          result.stateorprovince = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalcode':
          result.postalcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'atlschool':
          result.atlschool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$SchooldataRecord extends SchooldataRecord {
  @override
  final String? schoolName;
  @override
  final String? inchargeEmail;
  @override
  final String? principalEmail;
  @override
  final String? inchargeWhatsappContact;
  @override
  final String? principalWhatsappContact;
  @override
  final String? principalFirstName;
  @override
  final String? principalLastName;
  @override
  final String? inchargeFirstName;
  @override
  final String? inchargeLastName;
  @override
  final String? addressLine1;
  @override
  final String? cityordistrict;
  @override
  final String? stateorprovince;
  @override
  final String? postalcode;
  @override
  final String? country;
  @override
  final bool? atlschool;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SchooldataRecord(
          [void Function(SchooldataRecordBuilder)? updates]) =>
      (new SchooldataRecordBuilder()..update(updates))._build();

  _$SchooldataRecord._(
      {this.schoolName,
      this.inchargeEmail,
      this.principalEmail,
      this.inchargeWhatsappContact,
      this.principalWhatsappContact,
      this.principalFirstName,
      this.principalLastName,
      this.inchargeFirstName,
      this.inchargeLastName,
      this.addressLine1,
      this.cityordistrict,
      this.stateorprovince,
      this.postalcode,
      this.country,
      this.atlschool,
      this.ffRef})
      : super._();

  @override
  SchooldataRecord rebuild(void Function(SchooldataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchooldataRecordBuilder toBuilder() =>
      new SchooldataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchooldataRecord &&
        schoolName == other.schoolName &&
        inchargeEmail == other.inchargeEmail &&
        principalEmail == other.principalEmail &&
        inchargeWhatsappContact == other.inchargeWhatsappContact &&
        principalWhatsappContact == other.principalWhatsappContact &&
        principalFirstName == other.principalFirstName &&
        principalLastName == other.principalLastName &&
        inchargeFirstName == other.inchargeFirstName &&
        inchargeLastName == other.inchargeLastName &&
        addressLine1 == other.addressLine1 &&
        cityordistrict == other.cityordistrict &&
        stateorprovince == other.stateorprovince &&
        postalcode == other.postalcode &&
        country == other.country &&
        atlschool == other.atlschool &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    schoolName
                                                                        .hashCode),
                                                                inchargeEmail
                                                                    .hashCode),
                                                            principalEmail
                                                                .hashCode),
                                                        inchargeWhatsappContact
                                                            .hashCode),
                                                    principalWhatsappContact
                                                        .hashCode),
                                                principalFirstName.hashCode),
                                            principalLastName.hashCode),
                                        inchargeFirstName.hashCode),
                                    inchargeLastName.hashCode),
                                addressLine1.hashCode),
                            cityordistrict.hashCode),
                        stateorprovince.hashCode),
                    postalcode.hashCode),
                country.hashCode),
            atlschool.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchooldataRecord')
          ..add('schoolName', schoolName)
          ..add('inchargeEmail', inchargeEmail)
          ..add('principalEmail', principalEmail)
          ..add('inchargeWhatsappContact', inchargeWhatsappContact)
          ..add('principalWhatsappContact', principalWhatsappContact)
          ..add('principalFirstName', principalFirstName)
          ..add('principalLastName', principalLastName)
          ..add('inchargeFirstName', inchargeFirstName)
          ..add('inchargeLastName', inchargeLastName)
          ..add('addressLine1', addressLine1)
          ..add('cityordistrict', cityordistrict)
          ..add('stateorprovince', stateorprovince)
          ..add('postalcode', postalcode)
          ..add('country', country)
          ..add('atlschool', atlschool)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SchooldataRecordBuilder
    implements Builder<SchooldataRecord, SchooldataRecordBuilder> {
  _$SchooldataRecord? _$v;

  String? _schoolName;
  String? get schoolName => _$this._schoolName;
  set schoolName(String? schoolName) => _$this._schoolName = schoolName;

  String? _inchargeEmail;
  String? get inchargeEmail => _$this._inchargeEmail;
  set inchargeEmail(String? inchargeEmail) =>
      _$this._inchargeEmail = inchargeEmail;

  String? _principalEmail;
  String? get principalEmail => _$this._principalEmail;
  set principalEmail(String? principalEmail) =>
      _$this._principalEmail = principalEmail;

  String? _inchargeWhatsappContact;
  String? get inchargeWhatsappContact => _$this._inchargeWhatsappContact;
  set inchargeWhatsappContact(String? inchargeWhatsappContact) =>
      _$this._inchargeWhatsappContact = inchargeWhatsappContact;

  String? _principalWhatsappContact;
  String? get principalWhatsappContact => _$this._principalWhatsappContact;
  set principalWhatsappContact(String? principalWhatsappContact) =>
      _$this._principalWhatsappContact = principalWhatsappContact;

  String? _principalFirstName;
  String? get principalFirstName => _$this._principalFirstName;
  set principalFirstName(String? principalFirstName) =>
      _$this._principalFirstName = principalFirstName;

  String? _principalLastName;
  String? get principalLastName => _$this._principalLastName;
  set principalLastName(String? principalLastName) =>
      _$this._principalLastName = principalLastName;

  String? _inchargeFirstName;
  String? get inchargeFirstName => _$this._inchargeFirstName;
  set inchargeFirstName(String? inchargeFirstName) =>
      _$this._inchargeFirstName = inchargeFirstName;

  String? _inchargeLastName;
  String? get inchargeLastName => _$this._inchargeLastName;
  set inchargeLastName(String? inchargeLastName) =>
      _$this._inchargeLastName = inchargeLastName;

  String? _addressLine1;
  String? get addressLine1 => _$this._addressLine1;
  set addressLine1(String? addressLine1) => _$this._addressLine1 = addressLine1;

  String? _cityordistrict;
  String? get cityordistrict => _$this._cityordistrict;
  set cityordistrict(String? cityordistrict) =>
      _$this._cityordistrict = cityordistrict;

  String? _stateorprovince;
  String? get stateorprovince => _$this._stateorprovince;
  set stateorprovince(String? stateorprovince) =>
      _$this._stateorprovince = stateorprovince;

  String? _postalcode;
  String? get postalcode => _$this._postalcode;
  set postalcode(String? postalcode) => _$this._postalcode = postalcode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  bool? _atlschool;
  bool? get atlschool => _$this._atlschool;
  set atlschool(bool? atlschool) => _$this._atlschool = atlschool;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SchooldataRecordBuilder() {
    SchooldataRecord._initializeBuilder(this);
  }

  SchooldataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schoolName = $v.schoolName;
      _inchargeEmail = $v.inchargeEmail;
      _principalEmail = $v.principalEmail;
      _inchargeWhatsappContact = $v.inchargeWhatsappContact;
      _principalWhatsappContact = $v.principalWhatsappContact;
      _principalFirstName = $v.principalFirstName;
      _principalLastName = $v.principalLastName;
      _inchargeFirstName = $v.inchargeFirstName;
      _inchargeLastName = $v.inchargeLastName;
      _addressLine1 = $v.addressLine1;
      _cityordistrict = $v.cityordistrict;
      _stateorprovince = $v.stateorprovince;
      _postalcode = $v.postalcode;
      _country = $v.country;
      _atlschool = $v.atlschool;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchooldataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SchooldataRecord;
  }

  @override
  void update(void Function(SchooldataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchooldataRecord build() => _build();

  _$SchooldataRecord _build() {
    final _$result = _$v ??
        new _$SchooldataRecord._(
            schoolName: schoolName,
            inchargeEmail: inchargeEmail,
            principalEmail: principalEmail,
            inchargeWhatsappContact: inchargeWhatsappContact,
            principalWhatsappContact: principalWhatsappContact,
            principalFirstName: principalFirstName,
            principalLastName: principalLastName,
            inchargeFirstName: inchargeFirstName,
            inchargeLastName: inchargeLastName,
            addressLine1: addressLine1,
            cityordistrict: cityordistrict,
            stateorprovince: stateorprovince,
            postalcode: postalcode,
            country: country,
            atlschool: atlschool,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

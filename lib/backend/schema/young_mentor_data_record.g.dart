// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'young_mentor_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoungMentorDataRecord> _$youngMentorDataRecordSerializer =
    new _$YoungMentorDataRecordSerializer();

class _$YoungMentorDataRecordSerializer
    implements StructuredSerializer<YoungMentorDataRecord> {
  @override
  final Iterable<Type> types = const [
    YoungMentorDataRecord,
    _$YoungMentorDataRecord
  ];
  @override
  final String wireName = 'YoungMentorDataRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, YoungMentorDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.youngMentorCollege;
    if (value != null) {
      result
        ..add('youngMentorCollege')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorFirstName;
    if (value != null) {
      result
        ..add('youngMentorFirstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorLastName;
    if (value != null) {
      result
        ..add('youngMentorLastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorDepartment;
    if (value != null) {
      result
        ..add('youngMentorDepartment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorStudy;
    if (value != null) {
      result
        ..add('youngMentorStudy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorYear;
    if (value != null) {
      result
        ..add('youngMentorYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorEmail;
    if (value != null) {
      result
        ..add('youngMentorEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorWhatsappContact;
    if (value != null) {
      result
        ..add('youngMentorWhatsappContact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorCurrentExperiment;
    if (value != null) {
      result
        ..add('youngMentorCurrentExperiment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youngMentorCompetitionMapped;
    if (value != null) {
      result
        ..add('youngMentorCompetitionMapped')
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
  YoungMentorDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoungMentorDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'youngMentorCollege':
          result.youngMentorCollege = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorFirstName':
          result.youngMentorFirstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorLastName':
          result.youngMentorLastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorDepartment':
          result.youngMentorDepartment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorStudy':
          result.youngMentorStudy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorYear':
          result.youngMentorYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorEmail':
          result.youngMentorEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorWhatsappContact':
          result.youngMentorWhatsappContact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorCurrentExperiment':
          result.youngMentorCurrentExperiment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youngMentorCompetitionMapped':
          result.youngMentorCompetitionMapped = serializers.deserialize(value,
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

class _$YoungMentorDataRecord extends YoungMentorDataRecord {
  @override
  final String? youngMentorCollege;
  @override
  final String? youngMentorFirstName;
  @override
  final String? youngMentorLastName;
  @override
  final String? youngMentorDepartment;
  @override
  final String? youngMentorStudy;
  @override
  final String? youngMentorYear;
  @override
  final String? youngMentorEmail;
  @override
  final String? youngMentorWhatsappContact;
  @override
  final String? youngMentorCurrentExperiment;
  @override
  final String? youngMentorCompetitionMapped;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$YoungMentorDataRecord(
          [void Function(YoungMentorDataRecordBuilder)? updates]) =>
      (new YoungMentorDataRecordBuilder()..update(updates))._build();

  _$YoungMentorDataRecord._(
      {this.youngMentorCollege,
      this.youngMentorFirstName,
      this.youngMentorLastName,
      this.youngMentorDepartment,
      this.youngMentorStudy,
      this.youngMentorYear,
      this.youngMentorEmail,
      this.youngMentorWhatsappContact,
      this.youngMentorCurrentExperiment,
      this.youngMentorCompetitionMapped,
      this.ffRef})
      : super._();

  @override
  YoungMentorDataRecord rebuild(
          void Function(YoungMentorDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoungMentorDataRecordBuilder toBuilder() =>
      new YoungMentorDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoungMentorDataRecord &&
        youngMentorCollege == other.youngMentorCollege &&
        youngMentorFirstName == other.youngMentorFirstName &&
        youngMentorLastName == other.youngMentorLastName &&
        youngMentorDepartment == other.youngMentorDepartment &&
        youngMentorStudy == other.youngMentorStudy &&
        youngMentorYear == other.youngMentorYear &&
        youngMentorEmail == other.youngMentorEmail &&
        youngMentorWhatsappContact == other.youngMentorWhatsappContact &&
        youngMentorCurrentExperiment == other.youngMentorCurrentExperiment &&
        youngMentorCompetitionMapped == other.youngMentorCompetitionMapped &&
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
                                        $jc($jc(0, youngMentorCollege.hashCode),
                                            youngMentorFirstName.hashCode),
                                        youngMentorLastName.hashCode),
                                    youngMentorDepartment.hashCode),
                                youngMentorStudy.hashCode),
                            youngMentorYear.hashCode),
                        youngMentorEmail.hashCode),
                    youngMentorWhatsappContact.hashCode),
                youngMentorCurrentExperiment.hashCode),
            youngMentorCompetitionMapped.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YoungMentorDataRecord')
          ..add('youngMentorCollege', youngMentorCollege)
          ..add('youngMentorFirstName', youngMentorFirstName)
          ..add('youngMentorLastName', youngMentorLastName)
          ..add('youngMentorDepartment', youngMentorDepartment)
          ..add('youngMentorStudy', youngMentorStudy)
          ..add('youngMentorYear', youngMentorYear)
          ..add('youngMentorEmail', youngMentorEmail)
          ..add('youngMentorWhatsappContact', youngMentorWhatsappContact)
          ..add('youngMentorCurrentExperiment', youngMentorCurrentExperiment)
          ..add('youngMentorCompetitionMapped', youngMentorCompetitionMapped)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class YoungMentorDataRecordBuilder
    implements Builder<YoungMentorDataRecord, YoungMentorDataRecordBuilder> {
  _$YoungMentorDataRecord? _$v;

  String? _youngMentorCollege;
  String? get youngMentorCollege => _$this._youngMentorCollege;
  set youngMentorCollege(String? youngMentorCollege) =>
      _$this._youngMentorCollege = youngMentorCollege;

  String? _youngMentorFirstName;
  String? get youngMentorFirstName => _$this._youngMentorFirstName;
  set youngMentorFirstName(String? youngMentorFirstName) =>
      _$this._youngMentorFirstName = youngMentorFirstName;

  String? _youngMentorLastName;
  String? get youngMentorLastName => _$this._youngMentorLastName;
  set youngMentorLastName(String? youngMentorLastName) =>
      _$this._youngMentorLastName = youngMentorLastName;

  String? _youngMentorDepartment;
  String? get youngMentorDepartment => _$this._youngMentorDepartment;
  set youngMentorDepartment(String? youngMentorDepartment) =>
      _$this._youngMentorDepartment = youngMentorDepartment;

  String? _youngMentorStudy;
  String? get youngMentorStudy => _$this._youngMentorStudy;
  set youngMentorStudy(String? youngMentorStudy) =>
      _$this._youngMentorStudy = youngMentorStudy;

  String? _youngMentorYear;
  String? get youngMentorYear => _$this._youngMentorYear;
  set youngMentorYear(String? youngMentorYear) =>
      _$this._youngMentorYear = youngMentorYear;

  String? _youngMentorEmail;
  String? get youngMentorEmail => _$this._youngMentorEmail;
  set youngMentorEmail(String? youngMentorEmail) =>
      _$this._youngMentorEmail = youngMentorEmail;

  String? _youngMentorWhatsappContact;
  String? get youngMentorWhatsappContact => _$this._youngMentorWhatsappContact;
  set youngMentorWhatsappContact(String? youngMentorWhatsappContact) =>
      _$this._youngMentorWhatsappContact = youngMentorWhatsappContact;

  String? _youngMentorCurrentExperiment;
  String? get youngMentorCurrentExperiment =>
      _$this._youngMentorCurrentExperiment;
  set youngMentorCurrentExperiment(String? youngMentorCurrentExperiment) =>
      _$this._youngMentorCurrentExperiment = youngMentorCurrentExperiment;

  String? _youngMentorCompetitionMapped;
  String? get youngMentorCompetitionMapped =>
      _$this._youngMentorCompetitionMapped;
  set youngMentorCompetitionMapped(String? youngMentorCompetitionMapped) =>
      _$this._youngMentorCompetitionMapped = youngMentorCompetitionMapped;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  YoungMentorDataRecordBuilder() {
    YoungMentorDataRecord._initializeBuilder(this);
  }

  YoungMentorDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _youngMentorCollege = $v.youngMentorCollege;
      _youngMentorFirstName = $v.youngMentorFirstName;
      _youngMentorLastName = $v.youngMentorLastName;
      _youngMentorDepartment = $v.youngMentorDepartment;
      _youngMentorStudy = $v.youngMentorStudy;
      _youngMentorYear = $v.youngMentorYear;
      _youngMentorEmail = $v.youngMentorEmail;
      _youngMentorWhatsappContact = $v.youngMentorWhatsappContact;
      _youngMentorCurrentExperiment = $v.youngMentorCurrentExperiment;
      _youngMentorCompetitionMapped = $v.youngMentorCompetitionMapped;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoungMentorDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YoungMentorDataRecord;
  }

  @override
  void update(void Function(YoungMentorDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YoungMentorDataRecord build() => _build();

  _$YoungMentorDataRecord _build() {
    final _$result = _$v ??
        new _$YoungMentorDataRecord._(
            youngMentorCollege: youngMentorCollege,
            youngMentorFirstName: youngMentorFirstName,
            youngMentorLastName: youngMentorLastName,
            youngMentorDepartment: youngMentorDepartment,
            youngMentorStudy: youngMentorStudy,
            youngMentorYear: youngMentorYear,
            youngMentorEmail: youngMentorEmail,
            youngMentorWhatsappContact: youngMentorWhatsappContact,
            youngMentorCurrentExperiment: youngMentorCurrentExperiment,
            youngMentorCompetitionMapped: youngMentorCompetitionMapped,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

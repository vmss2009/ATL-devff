// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamdata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamdataRecord> _$teamdataRecordSerializer =
    new _$TeamdataRecordSerializer();

class _$TeamdataRecordSerializer
    implements StructuredSerializer<TeamdataRecord> {
  @override
  final Iterable<Type> types = const [TeamdataRecord, _$TeamdataRecord];
  @override
  final String wireName = 'TeamdataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamdataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.experiment;
    if (value != null) {
      result
        ..add('experiment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamLeader;
    if (value != null) {
      result
        ..add('teamLeader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamMember;
    if (value != null) {
      result
        ..add('teamMember')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.teamName;
    if (value != null) {
      result
        ..add('teamName')
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
  TeamdataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamdataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'experiment':
          result.experiment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamLeader':
          result.teamLeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamMember':
          result.teamMember.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'teamName':
          result.teamName = serializers.deserialize(value,
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

class _$TeamdataRecord extends TeamdataRecord {
  @override
  final String? experiment;
  @override
  final String? teamLeader;
  @override
  final BuiltList<String>? teamMember;
  @override
  final String? teamName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TeamdataRecord([void Function(TeamdataRecordBuilder)? updates]) =>
      (new TeamdataRecordBuilder()..update(updates))._build();

  _$TeamdataRecord._(
      {this.experiment,
      this.teamLeader,
      this.teamMember,
      this.teamName,
      this.ffRef})
      : super._();

  @override
  TeamdataRecord rebuild(void Function(TeamdataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamdataRecordBuilder toBuilder() =>
      new TeamdataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamdataRecord &&
        experiment == other.experiment &&
        teamLeader == other.teamLeader &&
        teamMember == other.teamMember &&
        teamName == other.teamName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, experiment.hashCode), teamLeader.hashCode),
                teamMember.hashCode),
            teamName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamdataRecord')
          ..add('experiment', experiment)
          ..add('teamLeader', teamLeader)
          ..add('teamMember', teamMember)
          ..add('teamName', teamName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TeamdataRecordBuilder
    implements Builder<TeamdataRecord, TeamdataRecordBuilder> {
  _$TeamdataRecord? _$v;

  String? _experiment;
  String? get experiment => _$this._experiment;
  set experiment(String? experiment) => _$this._experiment = experiment;

  String? _teamLeader;
  String? get teamLeader => _$this._teamLeader;
  set teamLeader(String? teamLeader) => _$this._teamLeader = teamLeader;

  ListBuilder<String>? _teamMember;
  ListBuilder<String> get teamMember =>
      _$this._teamMember ??= new ListBuilder<String>();
  set teamMember(ListBuilder<String>? teamMember) =>
      _$this._teamMember = teamMember;

  String? _teamName;
  String? get teamName => _$this._teamName;
  set teamName(String? teamName) => _$this._teamName = teamName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TeamdataRecordBuilder() {
    TeamdataRecord._initializeBuilder(this);
  }

  TeamdataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _experiment = $v.experiment;
      _teamLeader = $v.teamLeader;
      _teamMember = $v.teamMember?.toBuilder();
      _teamName = $v.teamName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamdataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamdataRecord;
  }

  @override
  void update(void Function(TeamdataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamdataRecord build() => _build();

  _$TeamdataRecord _build() {
    _$TeamdataRecord _$result;
    try {
      _$result = _$v ??
          new _$TeamdataRecord._(
              experiment: experiment,
              teamLeader: teamLeader,
              teamMember: _teamMember?.build(),
              teamName: teamName,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'teamMember';
        _teamMember?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TeamdataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

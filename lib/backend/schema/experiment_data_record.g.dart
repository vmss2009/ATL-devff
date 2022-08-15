// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiment_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExperimentDataRecord> _$experimentDataRecordSerializer =
    new _$ExperimentDataRecordSerializer();

class _$ExperimentDataRecordSerializer
    implements StructuredSerializer<ExperimentDataRecord> {
  @override
  final Iterable<Type> types = const [
    ExperimentDataRecord,
    _$ExperimentDataRecord
  ];
  @override
  final String wireName = 'ExperimentDataRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExperimentDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.experimentName;
    if (value != null) {
      result
        ..add('experimentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aim;
    if (value != null) {
      result
        ..add('aim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.procedure;
    if (value != null) {
      result
        ..add('procedure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observation;
    if (value != null) {
      result
        ..add('observation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appartus;
    if (value != null) {
      result
        ..add('appartus')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ExperimentDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExperimentDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'experimentName':
          result.experimentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aim':
          result.aim = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'procedure':
          result.procedure = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'observation':
          result.observation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appartus':
          result.appartus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ExperimentDataRecord extends ExperimentDataRecord {
  @override
  final String? experimentName;
  @override
  final String? aim;
  @override
  final String? procedure;
  @override
  final String? observation;
  @override
  final String? result;
  @override
  final BuiltList<String>? appartus;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExperimentDataRecord(
          [void Function(ExperimentDataRecordBuilder)? updates]) =>
      (new ExperimentDataRecordBuilder()..update(updates))._build();

  _$ExperimentDataRecord._(
      {this.experimentName,
      this.aim,
      this.procedure,
      this.observation,
      this.result,
      this.appartus,
      this.ffRef})
      : super._();

  @override
  ExperimentDataRecord rebuild(
          void Function(ExperimentDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExperimentDataRecordBuilder toBuilder() =>
      new ExperimentDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExperimentDataRecord &&
        experimentName == other.experimentName &&
        aim == other.aim &&
        procedure == other.procedure &&
        observation == other.observation &&
        result == other.result &&
        appartus == other.appartus &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, experimentName.hashCode), aim.hashCode),
                        procedure.hashCode),
                    observation.hashCode),
                result.hashCode),
            appartus.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExperimentDataRecord')
          ..add('experimentName', experimentName)
          ..add('aim', aim)
          ..add('procedure', procedure)
          ..add('observation', observation)
          ..add('result', result)
          ..add('appartus', appartus)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExperimentDataRecordBuilder
    implements Builder<ExperimentDataRecord, ExperimentDataRecordBuilder> {
  _$ExperimentDataRecord? _$v;

  String? _experimentName;
  String? get experimentName => _$this._experimentName;
  set experimentName(String? experimentName) =>
      _$this._experimentName = experimentName;

  String? _aim;
  String? get aim => _$this._aim;
  set aim(String? aim) => _$this._aim = aim;

  String? _procedure;
  String? get procedure => _$this._procedure;
  set procedure(String? procedure) => _$this._procedure = procedure;

  String? _observation;
  String? get observation => _$this._observation;
  set observation(String? observation) => _$this._observation = observation;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  ListBuilder<String>? _appartus;
  ListBuilder<String> get appartus =>
      _$this._appartus ??= new ListBuilder<String>();
  set appartus(ListBuilder<String>? appartus) => _$this._appartus = appartus;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExperimentDataRecordBuilder() {
    ExperimentDataRecord._initializeBuilder(this);
  }

  ExperimentDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _experimentName = $v.experimentName;
      _aim = $v.aim;
      _procedure = $v.procedure;
      _observation = $v.observation;
      _result = $v.result;
      _appartus = $v.appartus?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExperimentDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExperimentDataRecord;
  }

  @override
  void update(void Function(ExperimentDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExperimentDataRecord build() => _build();

  _$ExperimentDataRecord _build() {
    _$ExperimentDataRecord _$result;
    try {
      _$result = _$v ??
          new _$ExperimentDataRecord._(
              experimentName: experimentName,
              aim: aim,
              procedure: procedure,
              observation: observation,
              result: result,
              appartus: _appartus?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appartus';
        _appartus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExperimentDataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

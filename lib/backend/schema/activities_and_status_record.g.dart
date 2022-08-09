// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_and_status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivitiesAndStatusRecord> _$activitiesAndStatusRecordSerializer =
    new _$ActivitiesAndStatusRecordSerializer();

class _$ActivitiesAndStatusRecordSerializer
    implements StructuredSerializer<ActivitiesAndStatusRecord> {
  @override
  final Iterable<Type> types = const [
    ActivitiesAndStatusRecord,
    _$ActivitiesAndStatusRecord
  ];
  @override
  final String wireName = 'ActivitiesAndStatusRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ActivitiesAndStatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.toDoDate;
    if (value != null) {
      result
        ..add('toDoDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.toDoName;
    if (value != null) {
      result
        ..add('toDoName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoDescription;
    if (value != null) {
      result
        ..add('toDoDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoState;
    if (value != null) {
      result
        ..add('toDoState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.completedDate;
    if (value != null) {
      result
        ..add('completedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ActivitiesAndStatusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivitiesAndStatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'toDoDate':
          result.toDoDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'toDoName':
          result.toDoName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toDoDescription':
          result.toDoDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toDoState':
          result.toDoState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'completedDate':
          result.completedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'role':
          result.role.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ActivitiesAndStatusRecord extends ActivitiesAndStatusRecord {
  @override
  final DateTime? toDoDate;
  @override
  final String? toDoName;
  @override
  final String? toDoDescription;
  @override
  final bool? toDoState;
  @override
  final DateTime? completedDate;
  @override
  final BuiltList<String>? role;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActivitiesAndStatusRecord(
          [void Function(ActivitiesAndStatusRecordBuilder)? updates]) =>
      (new ActivitiesAndStatusRecordBuilder()..update(updates))._build();

  _$ActivitiesAndStatusRecord._(
      {this.toDoDate,
      this.toDoName,
      this.toDoDescription,
      this.toDoState,
      this.completedDate,
      this.role,
      this.user,
      this.ffRef})
      : super._();

  @override
  ActivitiesAndStatusRecord rebuild(
          void Function(ActivitiesAndStatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivitiesAndStatusRecordBuilder toBuilder() =>
      new ActivitiesAndStatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivitiesAndStatusRecord &&
        toDoDate == other.toDoDate &&
        toDoName == other.toDoName &&
        toDoDescription == other.toDoDescription &&
        toDoState == other.toDoState &&
        completedDate == other.completedDate &&
        role == other.role &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, toDoDate.hashCode), toDoName.hashCode),
                            toDoDescription.hashCode),
                        toDoState.hashCode),
                    completedDate.hashCode),
                role.hashCode),
            user.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivitiesAndStatusRecord')
          ..add('toDoDate', toDoDate)
          ..add('toDoName', toDoName)
          ..add('toDoDescription', toDoDescription)
          ..add('toDoState', toDoState)
          ..add('completedDate', completedDate)
          ..add('role', role)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActivitiesAndStatusRecordBuilder
    implements
        Builder<ActivitiesAndStatusRecord, ActivitiesAndStatusRecordBuilder> {
  _$ActivitiesAndStatusRecord? _$v;

  DateTime? _toDoDate;
  DateTime? get toDoDate => _$this._toDoDate;
  set toDoDate(DateTime? toDoDate) => _$this._toDoDate = toDoDate;

  String? _toDoName;
  String? get toDoName => _$this._toDoName;
  set toDoName(String? toDoName) => _$this._toDoName = toDoName;

  String? _toDoDescription;
  String? get toDoDescription => _$this._toDoDescription;
  set toDoDescription(String? toDoDescription) =>
      _$this._toDoDescription = toDoDescription;

  bool? _toDoState;
  bool? get toDoState => _$this._toDoState;
  set toDoState(bool? toDoState) => _$this._toDoState = toDoState;

  DateTime? _completedDate;
  DateTime? get completedDate => _$this._completedDate;
  set completedDate(DateTime? completedDate) =>
      _$this._completedDate = completedDate;

  ListBuilder<String>? _role;
  ListBuilder<String> get role => _$this._role ??= new ListBuilder<String>();
  set role(ListBuilder<String>? role) => _$this._role = role;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActivitiesAndStatusRecordBuilder() {
    ActivitiesAndStatusRecord._initializeBuilder(this);
  }

  ActivitiesAndStatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toDoDate = $v.toDoDate;
      _toDoName = $v.toDoName;
      _toDoDescription = $v.toDoDescription;
      _toDoState = $v.toDoState;
      _completedDate = $v.completedDate;
      _role = $v.role?.toBuilder();
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivitiesAndStatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivitiesAndStatusRecord;
  }

  @override
  void update(void Function(ActivitiesAndStatusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivitiesAndStatusRecord build() => _build();

  _$ActivitiesAndStatusRecord _build() {
    _$ActivitiesAndStatusRecord _$result;
    try {
      _$result = _$v ??
          new _$ActivitiesAndStatusRecord._(
              toDoDate: toDoDate,
              toDoName: toDoName,
              toDoDescription: toDoDescription,
              toDoState: toDoState,
              completedDate: completedDate,
              role: _role?.build(),
              user: user,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActivitiesAndStatusRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

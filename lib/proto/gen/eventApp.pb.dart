///
//  Generated code. Do not modify.
//  source: eventApp.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

class infoId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infoId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idEvento', $pb.PbFieldType.O3, protoName: 'idEvento')
    ..hasRequiredFields = false
  ;

  infoId._() : super();
  factory infoId({
    $core.int? idEvento,
  }) {
    final _result = create();
    if (idEvento != null) {
      _result.idEvento = idEvento;
    }
    return _result;
  }
  factory infoId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory infoId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  infoId clone() => infoId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  infoId copyWith(void Function(infoId) updates) => super.copyWith((message) => updates(message as infoId)) as infoId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static infoId create() => infoId._();
  infoId createEmptyInstance() => create();
  static $pb.PbList<infoId> createRepeated() => $pb.PbList<infoId>();
  @$core.pragma('dart2js:noInline')
  static infoId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<infoId>(create);
  static infoId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idEvento => $_getIZ(0);
  @$pb.TagNumber(1)
  set idEvento($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdEvento() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdEvento() => clearField(1);
}

class eventStateMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'eventStateMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..hasRequiredFields = false
  ;

  eventStateMsg._() : super();
  factory eventStateMsg({
    $core.bool? state,
    $core.int? id,
    $core.String? statusMsg,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (id != null) {
      _result.id = id;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    return _result;
  }
  factory eventStateMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory eventStateMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  eventStateMsg clone() => eventStateMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  eventStateMsg copyWith(void Function(eventStateMsg) updates) => super.copyWith((message) => updates(message as eventStateMsg)) as eventStateMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static eventStateMsg create() => eventStateMsg._();
  eventStateMsg createEmptyInstance() => create();
  static $pb.PbList<eventStateMsg> createRepeated() => $pb.PbList<eventStateMsg>();
  @$core.pragma('dart2js:noInline')
  static eventStateMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<eventStateMsg>(create);
  static eventStateMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get statusMsg => $_getSZ(2);
  @$pb.TagNumber(3)
  set statusMsg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatusMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatusMsg() => clearField(3);
}

class eventUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'eventUserInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imgUrl', protoName: 'imgUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventPlace', $pb.PbFieldType.O3, protoName: 'eventPlace')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.O3, protoName: 'eventType')
    ..aOM<$1.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statisticsDate', protoName: 'statisticsDate', subBuilder: $1.Timestamp.create)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ocupationPercentage', $pb.PbFieldType.OF, protoName: 'ocupationPercentage')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ageRestriction', $pb.PbFieldType.O3, protoName: 'ageRestriction')
    ..aOM<$1.Timestamp>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', protoName: 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', protoName: 'endDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  eventUserInfo._() : super();
  factory eventUserInfo({
    $core.bool? state,
    $core.String? name,
    $core.String? imgUrl,
    $core.String? description,
    $core.String? latitude,
    $core.String? longitude,
    $core.int? eventPlace,
    $core.int? eventType,
    $1.Timestamp? statisticsDate,
    $core.double? ocupationPercentage,
    $core.String? statusMsg,
    $core.int? eventId,
    $core.int? ageRestriction,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (name != null) {
      _result.name = name;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (eventPlace != null) {
      _result.eventPlace = eventPlace;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (statisticsDate != null) {
      _result.statisticsDate = statisticsDate;
    }
    if (ocupationPercentage != null) {
      _result.ocupationPercentage = ocupationPercentage;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (ageRestriction != null) {
      _result.ageRestriction = ageRestriction;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    return _result;
  }
  factory eventUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory eventUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  eventUserInfo clone() => eventUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  eventUserInfo copyWith(void Function(eventUserInfo) updates) => super.copyWith((message) => updates(message as eventUserInfo)) as eventUserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static eventUserInfo create() => eventUserInfo._();
  eventUserInfo createEmptyInstance() => create();
  static $pb.PbList<eventUserInfo> createRepeated() => $pb.PbList<eventUserInfo>();
  @$core.pragma('dart2js:noInline')
  static eventUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<eventUserInfo>(create);
  static eventUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imgUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imgUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get latitude => $_getSZ(4);
  @$pb.TagNumber(5)
  set latitude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get longitude => $_getSZ(5);
  @$pb.TagNumber(6)
  set longitude($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLongitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearLongitude() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get eventPlace => $_getIZ(6);
  @$pb.TagNumber(7)
  set eventPlace($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventPlace() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventPlace() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get eventType => $_getIZ(7);
  @$pb.TagNumber(8)
  set eventType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEventType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEventType() => clearField(8);

  @$pb.TagNumber(9)
  $1.Timestamp get statisticsDate => $_getN(8);
  @$pb.TagNumber(9)
  set statisticsDate($1.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatisticsDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatisticsDate() => clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureStatisticsDate() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.double get ocupationPercentage => $_getN(9);
  @$pb.TagNumber(10)
  set ocupationPercentage($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOcupationPercentage() => $_has(9);
  @$pb.TagNumber(10)
  void clearOcupationPercentage() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get statusMsg => $_getSZ(10);
  @$pb.TagNumber(11)
  set statusMsg($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStatusMsg() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatusMsg() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get eventId => $_getIZ(11);
  @$pb.TagNumber(12)
  set eventId($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEventId() => $_has(11);
  @$pb.TagNumber(12)
  void clearEventId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get ageRestriction => $_getIZ(12);
  @$pb.TagNumber(13)
  set ageRestriction($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAgeRestriction() => $_has(12);
  @$pb.TagNumber(13)
  void clearAgeRestriction() => clearField(13);

  @$pb.TagNumber(14)
  $1.Timestamp get startDate => $_getN(13);
  @$pb.TagNumber(14)
  set startDate($1.Timestamp v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasStartDate() => $_has(13);
  @$pb.TagNumber(14)
  void clearStartDate() => clearField(14);
  @$pb.TagNumber(14)
  $1.Timestamp ensureStartDate() => $_ensure(13);

  @$pb.TagNumber(15)
  $1.Timestamp get endDate => $_getN(14);
  @$pb.TagNumber(15)
  set endDate($1.Timestamp v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasEndDate() => $_has(14);
  @$pb.TagNumber(15)
  void clearEndDate() => clearField(15);
  @$pb.TagNumber(15)
  $1.Timestamp ensureEndDate() => $_ensure(14);
}

class eventAdminInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'eventAdminInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imgUrl', protoName: 'imgUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventPlace', $pb.PbFieldType.O3, protoName: 'eventPlace')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.O3, protoName: 'eventType')
    ..pc<user>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: user.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nGuests', $pb.PbFieldType.O3, protoName: 'nGuests')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nParticipants', $pb.PbFieldType.O3, protoName: 'nParticipants')
    ..aOM<$1.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statisticsDate', protoName: 'statisticsDate', subBuilder: $1.Timestamp.create)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ocupationPercentage', $pb.PbFieldType.OF, protoName: 'ocupationPercentage')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ageRestriction', $pb.PbFieldType.O3, protoName: 'ageRestriction')
    ..aOM<$1.Timestamp>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', protoName: 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', protoName: 'endDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  eventAdminInfo._() : super();
  factory eventAdminInfo({
    $core.bool? state,
    $core.String? name,
    $core.String? imgUrl,
    $core.String? description,
    $core.String? latitude,
    $core.String? longitude,
    $core.int? eventPlace,
    $core.int? eventType,
    $core.Iterable<user>? participants,
    $core.int? nGuests,
    $core.int? nParticipants,
    $1.Timestamp? statisticsDate,
    $core.double? ocupationPercentage,
    $core.String? statusMsg,
    $core.int? eventId,
    $core.int? ageRestriction,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (name != null) {
      _result.name = name;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (eventPlace != null) {
      _result.eventPlace = eventPlace;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (participants != null) {
      _result.participants.addAll(participants);
    }
    if (nGuests != null) {
      _result.nGuests = nGuests;
    }
    if (nParticipants != null) {
      _result.nParticipants = nParticipants;
    }
    if (statisticsDate != null) {
      _result.statisticsDate = statisticsDate;
    }
    if (ocupationPercentage != null) {
      _result.ocupationPercentage = ocupationPercentage;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (ageRestriction != null) {
      _result.ageRestriction = ageRestriction;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    return _result;
  }
  factory eventAdminInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory eventAdminInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  eventAdminInfo clone() => eventAdminInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  eventAdminInfo copyWith(void Function(eventAdminInfo) updates) => super.copyWith((message) => updates(message as eventAdminInfo)) as eventAdminInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static eventAdminInfo create() => eventAdminInfo._();
  eventAdminInfo createEmptyInstance() => create();
  static $pb.PbList<eventAdminInfo> createRepeated() => $pb.PbList<eventAdminInfo>();
  @$core.pragma('dart2js:noInline')
  static eventAdminInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<eventAdminInfo>(create);
  static eventAdminInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imgUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imgUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get latitude => $_getSZ(4);
  @$pb.TagNumber(5)
  set latitude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get longitude => $_getSZ(5);
  @$pb.TagNumber(6)
  set longitude($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLongitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearLongitude() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get eventPlace => $_getIZ(6);
  @$pb.TagNumber(7)
  set eventPlace($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventPlace() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventPlace() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get eventType => $_getIZ(7);
  @$pb.TagNumber(8)
  set eventType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEventType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEventType() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<user> get participants => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get nGuests => $_getIZ(9);
  @$pb.TagNumber(10)
  set nGuests($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNGuests() => $_has(9);
  @$pb.TagNumber(10)
  void clearNGuests() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get nParticipants => $_getIZ(10);
  @$pb.TagNumber(11)
  set nParticipants($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNParticipants() => $_has(10);
  @$pb.TagNumber(11)
  void clearNParticipants() => clearField(11);

  @$pb.TagNumber(12)
  $1.Timestamp get statisticsDate => $_getN(11);
  @$pb.TagNumber(12)
  set statisticsDate($1.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasStatisticsDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearStatisticsDate() => clearField(12);
  @$pb.TagNumber(12)
  $1.Timestamp ensureStatisticsDate() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get ocupationPercentage => $_getN(12);
  @$pb.TagNumber(13)
  set ocupationPercentage($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasOcupationPercentage() => $_has(12);
  @$pb.TagNumber(13)
  void clearOcupationPercentage() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get statusMsg => $_getSZ(13);
  @$pb.TagNumber(14)
  set statusMsg($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStatusMsg() => $_has(13);
  @$pb.TagNumber(14)
  void clearStatusMsg() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get eventId => $_getIZ(14);
  @$pb.TagNumber(15)
  set eventId($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasEventId() => $_has(14);
  @$pb.TagNumber(15)
  void clearEventId() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get ageRestriction => $_getIZ(15);
  @$pb.TagNumber(16)
  set ageRestriction($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAgeRestriction() => $_has(15);
  @$pb.TagNumber(16)
  void clearAgeRestriction() => clearField(16);

  @$pb.TagNumber(17)
  $1.Timestamp get startDate => $_getN(16);
  @$pb.TagNumber(17)
  set startDate($1.Timestamp v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasStartDate() => $_has(16);
  @$pb.TagNumber(17)
  void clearStartDate() => clearField(17);
  @$pb.TagNumber(17)
  $1.Timestamp ensureStartDate() => $_ensure(16);

  @$pb.TagNumber(18)
  $1.Timestamp get endDate => $_getN(17);
  @$pb.TagNumber(18)
  set endDate($1.Timestamp v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasEndDate() => $_has(17);
  @$pb.TagNumber(18)
  void clearEndDate() => clearField(18);
  @$pb.TagNumber(18)
  $1.Timestamp ensureEndDate() => $_ensure(17);
}

class createEventInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'createEventInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imgUrl', protoName: 'imgUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventPlace', $pb.PbFieldType.O3, protoName: 'eventPlace')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.O3, protoName: 'eventType')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ageRestriction', $pb.PbFieldType.O3, protoName: 'ageRestriction')
    ..aOM<$1.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', protoName: 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', protoName: 'endDate', subBuilder: $1.Timestamp.create)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  createEventInfo._() : super();
  factory createEventInfo({
    $core.String? name,
    $core.String? imgUrl,
    $core.String? description,
    $core.String? latitude,
    $core.String? longitude,
    $core.int? eventPlace,
    $core.int? eventType,
    $core.int? ageRestriction,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $core.int? userId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (eventPlace != null) {
      _result.eventPlace = eventPlace;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (ageRestriction != null) {
      _result.ageRestriction = ageRestriction;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory createEventInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory createEventInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  createEventInfo clone() => createEventInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  createEventInfo copyWith(void Function(createEventInfo) updates) => super.copyWith((message) => updates(message as createEventInfo)) as createEventInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static createEventInfo create() => createEventInfo._();
  createEventInfo createEmptyInstance() => create();
  static $pb.PbList<createEventInfo> createRepeated() => $pb.PbList<createEventInfo>();
  @$core.pragma('dart2js:noInline')
  static createEventInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<createEventInfo>(create);
  static createEventInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imgUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imgUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImgUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get latitude => $_getSZ(3);
  @$pb.TagNumber(4)
  set latitude($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLatitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatitude() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get longitude => $_getSZ(4);
  @$pb.TagNumber(5)
  set longitude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLongitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLongitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get eventPlace => $_getIZ(5);
  @$pb.TagNumber(6)
  set eventPlace($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventPlace() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventPlace() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get eventType => $_getIZ(6);
  @$pb.TagNumber(7)
  set eventType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventType() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventType() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ageRestriction => $_getIZ(7);
  @$pb.TagNumber(8)
  set ageRestriction($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAgeRestriction() => $_has(7);
  @$pb.TagNumber(8)
  void clearAgeRestriction() => clearField(8);

  @$pb.TagNumber(9)
  $1.Timestamp get startDate => $_getN(8);
  @$pb.TagNumber(9)
  set startDate($1.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStartDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearStartDate() => clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureStartDate() => $_ensure(8);

  @$pb.TagNumber(10)
  $1.Timestamp get endDate => $_getN(9);
  @$pb.TagNumber(10)
  set endDate($1.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasEndDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearEndDate() => clearField(10);
  @$pb.TagNumber(10)
  $1.Timestamp ensureEndDate() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.int get userId => $_getIZ(10);
  @$pb.TagNumber(11)
  set userId($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUserId() => $_has(10);
  @$pb.TagNumber(11)
  void clearUserId() => clearField(11);
}

class updateEventInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'updateEventInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imgUrl', protoName: 'imgUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventPlace', $pb.PbFieldType.O3, protoName: 'eventPlace')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.O3, protoName: 'eventType')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ageRestriction', $pb.PbFieldType.O3, protoName: 'ageRestriction')
    ..aOM<$1.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', protoName: 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', protoName: 'endDate', subBuilder: $1.Timestamp.create)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  updateEventInfo._() : super();
  factory updateEventInfo({
    $core.int? id,
    $core.String? name,
    $core.String? imgUrl,
    $core.String? description,
    $core.String? latitude,
    $core.String? longitude,
    $core.int? eventPlace,
    $core.int? eventType,
    $core.int? ageRestriction,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $core.int? userId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (eventPlace != null) {
      _result.eventPlace = eventPlace;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (ageRestriction != null) {
      _result.ageRestriction = ageRestriction;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory updateEventInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory updateEventInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  updateEventInfo clone() => updateEventInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  updateEventInfo copyWith(void Function(updateEventInfo) updates) => super.copyWith((message) => updates(message as updateEventInfo)) as updateEventInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static updateEventInfo create() => updateEventInfo._();
  updateEventInfo createEmptyInstance() => create();
  static $pb.PbList<updateEventInfo> createRepeated() => $pb.PbList<updateEventInfo>();
  @$core.pragma('dart2js:noInline')
  static updateEventInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<updateEventInfo>(create);
  static updateEventInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imgUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imgUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get latitude => $_getSZ(4);
  @$pb.TagNumber(5)
  set latitude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get longitude => $_getSZ(5);
  @$pb.TagNumber(6)
  set longitude($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLongitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearLongitude() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get eventPlace => $_getIZ(6);
  @$pb.TagNumber(7)
  set eventPlace($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventPlace() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventPlace() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get eventType => $_getIZ(7);
  @$pb.TagNumber(8)
  set eventType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEventType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEventType() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get ageRestriction => $_getIZ(8);
  @$pb.TagNumber(9)
  set ageRestriction($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAgeRestriction() => $_has(8);
  @$pb.TagNumber(9)
  void clearAgeRestriction() => clearField(9);

  @$pb.TagNumber(10)
  $1.Timestamp get startDate => $_getN(9);
  @$pb.TagNumber(10)
  set startDate($1.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStartDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearStartDate() => clearField(10);
  @$pb.TagNumber(10)
  $1.Timestamp ensureStartDate() => $_ensure(9);

  @$pb.TagNumber(11)
  $1.Timestamp get endDate => $_getN(10);
  @$pb.TagNumber(11)
  set endDate($1.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndDate() => clearField(11);
  @$pb.TagNumber(11)
  $1.Timestamp ensureEndDate() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.int get userId => $_getIZ(11);
  @$pb.TagNumber(12)
  set userId($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserId() => clearField(12);
}

class user extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imgUrl', protoName: 'imgUrl')
    ..hasRequiredFields = false
  ;

  user._() : super();
  factory user({
    $core.int? id,
    $core.String? username,
    $core.String? name,
    $core.String? imgUrl,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (username != null) {
      _result.username = username;
    }
    if (name != null) {
      _result.name = name;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    return _result;
  }
  factory user.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory user.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  user clone() => user()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  user copyWith(void Function(user) updates) => super.copyWith((message) => updates(message as user)) as user; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static user create() => user._();
  user createEmptyInstance() => create();
  static $pb.PbList<user> createRepeated() => $pb.PbList<user>();
  @$core.pragma('dart2js:noInline')
  static user getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<user>(create);
  static user? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imgUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imgUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImgUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImgUrl() => clearField(4);
}

class ocupation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ocupation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statisticsDate', protoName: 'statisticsDate', subBuilder: $1.Timestamp.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ocupationPercentage', $pb.PbFieldType.OF, protoName: 'ocupationPercentage')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nParticipants', $pb.PbFieldType.O3, protoName: 'nParticipants')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nActiveParticipants', $pb.PbFieldType.O3, protoName: 'nActiveParticipants')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nInvites', $pb.PbFieldType.O3, protoName: 'nInvites')
    ..hasRequiredFields = false
  ;

  ocupation._() : super();
  factory ocupation({
    $1.Timestamp? statisticsDate,
    $core.double? ocupationPercentage,
    $core.int? nParticipants,
    $core.int? nActiveParticipants,
    $core.int? nInvites,
  }) {
    final _result = create();
    if (statisticsDate != null) {
      _result.statisticsDate = statisticsDate;
    }
    if (ocupationPercentage != null) {
      _result.ocupationPercentage = ocupationPercentage;
    }
    if (nParticipants != null) {
      _result.nParticipants = nParticipants;
    }
    if (nActiveParticipants != null) {
      _result.nActiveParticipants = nActiveParticipants;
    }
    if (nInvites != null) {
      _result.nInvites = nInvites;
    }
    return _result;
  }
  factory ocupation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ocupation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ocupation clone() => ocupation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ocupation copyWith(void Function(ocupation) updates) => super.copyWith((message) => updates(message as ocupation)) as ocupation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ocupation create() => ocupation._();
  ocupation createEmptyInstance() => create();
  static $pb.PbList<ocupation> createRepeated() => $pb.PbList<ocupation>();
  @$core.pragma('dart2js:noInline')
  static ocupation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ocupation>(create);
  static ocupation? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get statisticsDate => $_getN(0);
  @$pb.TagNumber(1)
  set statisticsDate($1.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatisticsDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatisticsDate() => clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureStatisticsDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get ocupationPercentage => $_getN(1);
  @$pb.TagNumber(2)
  set ocupationPercentage($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOcupationPercentage() => $_has(1);
  @$pb.TagNumber(2)
  void clearOcupationPercentage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nParticipants => $_getIZ(2);
  @$pb.TagNumber(3)
  set nParticipants($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNParticipants() => $_has(2);
  @$pb.TagNumber(3)
  void clearNParticipants() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get nActiveParticipants => $_getIZ(3);
  @$pb.TagNumber(4)
  set nActiveParticipants($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNActiveParticipants() => $_has(3);
  @$pb.TagNumber(4)
  void clearNActiveParticipants() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get nInvites => $_getIZ(4);
  @$pb.TagNumber(5)
  set nInvites($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNInvites() => $_has(4);
  @$pb.TagNumber(5)
  void clearNInvites() => clearField(5);
}

class ocupationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ocupationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..pc<ocupation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ocupationStats', $pb.PbFieldType.PM, protoName: 'ocupationStats', subBuilder: ocupation.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..hasRequiredFields = false
  ;

  ocupationResponse._() : super();
  factory ocupationResponse({
    $core.bool? state,
    $core.Iterable<ocupation>? ocupationStats,
    $core.String? statusMsg,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (ocupationStats != null) {
      _result.ocupationStats.addAll(ocupationStats);
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    return _result;
  }
  factory ocupationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ocupationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ocupationResponse clone() => ocupationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ocupationResponse copyWith(void Function(ocupationResponse) updates) => super.copyWith((message) => updates(message as ocupationResponse)) as ocupationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ocupationResponse create() => ocupationResponse._();
  ocupationResponse createEmptyInstance() => create();
  static $pb.PbList<ocupationResponse> createRepeated() => $pb.PbList<ocupationResponse>();
  @$core.pragma('dart2js:noInline')
  static ocupationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ocupationResponse>(create);
  static ocupationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ocupation> get ocupationStats => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get statusMsg => $_getSZ(2);
  @$pb.TagNumber(3)
  set statusMsg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatusMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatusMsg() => clearField(3);
}

class createUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'createUserInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'job')
    ..hasRequiredFields = false
  ;

  createUserInfo._() : super();
  factory createUserInfo({
    $core.String? username,
    $core.String? name,
    $core.int? age,
    $core.String? imageUrl,
    $core.String? organization,
    $core.String? job,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (organization != null) {
      _result.organization = organization;
    }
    if (job != null) {
      _result.job = job;
    }
    return _result;
  }
  factory createUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory createUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  createUserInfo clone() => createUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  createUserInfo copyWith(void Function(createUserInfo) updates) => super.copyWith((message) => updates(message as createUserInfo)) as createUserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static createUserInfo create() => createUserInfo._();
  createUserInfo createEmptyInstance() => create();
  static $pb.PbList<createUserInfo> createRepeated() => $pb.PbList<createUserInfo>();
  @$core.pragma('dart2js:noInline')
  static createUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<createUserInfo>(create);
  static createUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get age => $_getIZ(2);
  @$pb.TagNumber(3)
  set age($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearAge() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get organization => $_getSZ(4);
  @$pb.TagNumber(5)
  set organization($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrganization() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrganization() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get job => $_getSZ(5);
  @$pb.TagNumber(6)
  set job($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasJob() => $_has(5);
  @$pb.TagNumber(6)
  void clearJob() => clearField(6);
}

class updateUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'updateUserInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'job')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  updateUserInfo._() : super();
  factory updateUserInfo({
    $core.String? username,
    $core.String? name,
    $core.int? age,
    $core.String? imageUrl,
    $core.String? organization,
    $core.String? job,
    $core.int? id,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (organization != null) {
      _result.organization = organization;
    }
    if (job != null) {
      _result.job = job;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory updateUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory updateUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  updateUserInfo clone() => updateUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  updateUserInfo copyWith(void Function(updateUserInfo) updates) => super.copyWith((message) => updates(message as updateUserInfo)) as updateUserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static updateUserInfo create() => updateUserInfo._();
  updateUserInfo createEmptyInstance() => create();
  static $pb.PbList<updateUserInfo> createRepeated() => $pb.PbList<updateUserInfo>();
  @$core.pragma('dart2js:noInline')
  static updateUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<updateUserInfo>(create);
  static updateUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get age => $_getIZ(2);
  @$pb.TagNumber(3)
  set age($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearAge() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get organization => $_getSZ(4);
  @$pb.TagNumber(5)
  set organization($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrganization() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrganization() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get job => $_getSZ(5);
  @$pb.TagNumber(6)
  set job($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasJob() => $_has(5);
  @$pb.TagNumber(6)
  void clearJob() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get id => $_getIZ(6);
  @$pb.TagNumber(7)
  set id($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasId() => $_has(6);
  @$pb.TagNumber(7)
  void clearId() => clearField(7);
}

class userStateMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'userStateMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..hasRequiredFields = false
  ;

  userStateMsg._() : super();
  factory userStateMsg({
    $core.bool? state,
    $core.int? id,
    $core.String? statusMsg,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (id != null) {
      _result.id = id;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    return _result;
  }
  factory userStateMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory userStateMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  userStateMsg clone() => userStateMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  userStateMsg copyWith(void Function(userStateMsg) updates) => super.copyWith((message) => updates(message as userStateMsg)) as userStateMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static userStateMsg create() => userStateMsg._();
  userStateMsg createEmptyInstance() => create();
  static $pb.PbList<userStateMsg> createRepeated() => $pb.PbList<userStateMsg>();
  @$core.pragma('dart2js:noInline')
  static userStateMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<userStateMsg>(create);
  static userStateMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get statusMsg => $_getSZ(2);
  @$pb.TagNumber(3)
  set statusMsg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatusMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatusMsg() => clearField(3);
}

class entryInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyCode', protoName: 'keyCode')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guestId', $pb.PbFieldType.O3, protoName: 'guestId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..hasRequiredFields = false
  ;

  entryInfoRequest._() : super();
  factory entryInfoRequest({
    $core.String? keyCode,
    $core.int? userId,
    $core.int? guestId,
    $core.int? eventId,
  }) {
    final _result = create();
    if (keyCode != null) {
      _result.keyCode = keyCode;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (guestId != null) {
      _result.guestId = guestId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    return _result;
  }
  factory entryInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryInfoRequest clone() => entryInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryInfoRequest copyWith(void Function(entryInfoRequest) updates) => super.copyWith((message) => updates(message as entryInfoRequest)) as entryInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryInfoRequest create() => entryInfoRequest._();
  entryInfoRequest createEmptyInstance() => create();
  static $pb.PbList<entryInfoRequest> createRepeated() => $pb.PbList<entryInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static entryInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryInfoRequest>(create);
  static entryInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get guestId => $_getIZ(2);
  @$pb.TagNumber(3)
  set guestId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGuestId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get eventId => $_getIZ(3);
  @$pb.TagNumber(4)
  set eventId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEventId() => $_has(3);
  @$pb.TagNumber(4)
  void clearEventId() => clearField(4);
}

class entryValidation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryValidation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validating')
    ..hasRequiredFields = false
  ;

  entryValidation._() : super();
  factory entryValidation({
    $core.bool? status,
    $core.String? statusMsg,
    $core.bool? validating,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    if (validating != null) {
      _result.validating = validating;
    }
    return _result;
  }
  factory entryValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryValidation clone() => entryValidation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryValidation copyWith(void Function(entryValidation) updates) => super.copyWith((message) => updates(message as entryValidation)) as entryValidation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryValidation create() => entryValidation._();
  entryValidation createEmptyInstance() => create();
  static $pb.PbList<entryValidation> createRepeated() => $pb.PbList<entryValidation>();
  @$core.pragma('dart2js:noInline')
  static entryValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryValidation>(create);
  static entryValidation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get statusMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set statusMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatusMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get validating => $_getBF(2);
  @$pb.TagNumber(3)
  set validating($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidating() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidating() => clearField(3);
}

class entryAddUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryAddUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guestId', $pb.PbFieldType.O3, protoName: 'guestId')
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireDate', protoName: 'expireDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  entryAddUser._() : super();
  factory entryAddUser({
    $core.int? userId,
    $core.int? eventId,
    $core.int? guestId,
    $1.Timestamp? expireDate,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (guestId != null) {
      _result.guestId = guestId;
    }
    if (expireDate != null) {
      _result.expireDate = expireDate;
    }
    return _result;
  }
  factory entryAddUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryAddUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryAddUser clone() => entryAddUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryAddUser copyWith(void Function(entryAddUser) updates) => super.copyWith((message) => updates(message as entryAddUser)) as entryAddUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryAddUser create() => entryAddUser._();
  entryAddUser createEmptyInstance() => create();
  static $pb.PbList<entryAddUser> createRepeated() => $pb.PbList<entryAddUser>();
  @$core.pragma('dart2js:noInline')
  static entryAddUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryAddUser>(create);
  static entryAddUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get guestId => $_getIZ(2);
  @$pb.TagNumber(3)
  set guestId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGuestId() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get expireDate => $_getN(3);
  @$pb.TagNumber(4)
  set expireDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpireDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpireDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureExpireDate() => $_ensure(3);
}

class entryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..hasRequiredFields = false
  ;

  entryResponse._() : super();
  factory entryResponse({
    $core.bool? status,
    $core.String? statusMsg,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    return _result;
  }
  factory entryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryResponse clone() => entryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryResponse copyWith(void Function(entryResponse) updates) => super.copyWith((message) => updates(message as entryResponse)) as entryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryResponse create() => entryResponse._();
  entryResponse createEmptyInstance() => create();
  static $pb.PbList<entryResponse> createRepeated() => $pb.PbList<entryResponse>();
  @$core.pragma('dart2js:noInline')
  static entryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryResponse>(create);
  static entryResponse? _defaultInstance;

  @$pb.TagNumber(3)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(3)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get statusMsg => $_getSZ(1);
  @$pb.TagNumber(4)
  set statusMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatusMsg() => $_has(1);
  @$pb.TagNumber(4)
  void clearStatusMsg() => clearField(4);
}

class entryParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..hasRequiredFields = false
  ;

  entryParam._() : super();
  factory entryParam({
    $core.int? userId,
    $core.int? eventId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    return _result;
  }
  factory entryParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryParam clone() => entryParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryParam copyWith(void Function(entryParam) updates) => super.copyWith((message) => updates(message as entryParam)) as entryParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryParam create() => entryParam._();
  entryParam createEmptyInstance() => create();
  static $pb.PbList<entryParam> createRepeated() => $pb.PbList<entryParam>();
  @$core.pragma('dart2js:noInline')
  static entryParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryParam>(create);
  static entryParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);
}

class entryGuestParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryGuestParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guestId', $pb.PbFieldType.O3, protoName: 'guestId')
    ..hasRequiredFields = false
  ;

  entryGuestParam._() : super();
  factory entryGuestParam({
    $core.int? userId,
    $core.int? eventId,
    $core.int? guestId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (guestId != null) {
      _result.guestId = guestId;
    }
    return _result;
  }
  factory entryGuestParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryGuestParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryGuestParam clone() => entryGuestParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryGuestParam copyWith(void Function(entryGuestParam) updates) => super.copyWith((message) => updates(message as entryGuestParam)) as entryGuestParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryGuestParam create() => entryGuestParam._();
  entryGuestParam createEmptyInstance() => create();
  static $pb.PbList<entryGuestParam> createRepeated() => $pb.PbList<entryGuestParam>();
  @$core.pragma('dart2js:noInline')
  static entryGuestParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryGuestParam>(create);
  static entryGuestParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get guestId => $_getIZ(2);
  @$pb.TagNumber(3)
  set guestId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGuestId() => clearField(3);
}

class entryGlobalParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryGlobalParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3, protoName: 'eventId')
    ..hasRequiredFields = false
  ;

  entryGlobalParam._() : super();
  factory entryGlobalParam({
    $core.int? userId,
    $core.int? eventId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    return _result;
  }
  factory entryGlobalParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryGlobalParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryGlobalParam clone() => entryGlobalParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryGlobalParam copyWith(void Function(entryGlobalParam) updates) => super.copyWith((message) => updates(message as entryGlobalParam)) as entryGlobalParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryGlobalParam create() => entryGlobalParam._();
  entryGlobalParam createEmptyInstance() => create();
  static $pb.PbList<entryGlobalParam> createRepeated() => $pb.PbList<entryGlobalParam>();
  @$core.pragma('dart2js:noInline')
  static entryGlobalParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryGlobalParam>(create);
  static entryGlobalParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);
}

class entryInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'entryInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyCode', protoName: 'keyCode')
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireDate', protoName: 'expireDate', subBuilder: $1.Timestamp.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusMsg', protoName: 'statusMsg')
    ..hasRequiredFields = false
  ;

  entryInfo._() : super();
  factory entryInfo({
    $core.String? keyCode,
    $1.Timestamp? expireDate,
    $core.bool? status,
    $core.String? statusMsg,
  }) {
    final _result = create();
    if (keyCode != null) {
      _result.keyCode = keyCode;
    }
    if (expireDate != null) {
      _result.expireDate = expireDate;
    }
    if (status != null) {
      _result.status = status;
    }
    if (statusMsg != null) {
      _result.statusMsg = statusMsg;
    }
    return _result;
  }
  factory entryInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory entryInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  entryInfo clone() => entryInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  entryInfo copyWith(void Function(entryInfo) updates) => super.copyWith((message) => updates(message as entryInfo)) as entryInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static entryInfo create() => entryInfo._();
  entryInfo createEmptyInstance() => create();
  static $pb.PbList<entryInfo> createRepeated() => $pb.PbList<entryInfo>();
  @$core.pragma('dart2js:noInline')
  static entryInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<entryInfo>(create);
  static entryInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyCode() => clearField(1);

  @$pb.TagNumber(2)
  $1.Timestamp get expireDate => $_getN(1);
  @$pb.TagNumber(2)
  set expireDate($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpireDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpireDate() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureExpireDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get status => $_getBF(2);
  @$pb.TagNumber(3)
  set status($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get statusMsg => $_getSZ(3);
  @$pb.TagNumber(4)
  set statusMsg($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatusMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatusMsg() => clearField(4);
}

enum fileUploadRequest_Data {
  name, 
  chunk, 
  notSet
}

class fileUploadRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, fileUploadRequest_Data> _fileUploadRequest_DataByTag = {
    1 : fileUploadRequest_Data.name,
    2 : fileUploadRequest_Data.chunk,
    0 : fileUploadRequest_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fileUploadRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  fileUploadRequest._() : super();
  factory fileUploadRequest({
    $core.String? name,
    $core.List<$core.int>? chunk,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    return _result;
  }
  factory fileUploadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory fileUploadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  fileUploadRequest clone() => fileUploadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  fileUploadRequest copyWith(void Function(fileUploadRequest) updates) => super.copyWith((message) => updates(message as fileUploadRequest)) as fileUploadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static fileUploadRequest create() => fileUploadRequest._();
  fileUploadRequest createEmptyInstance() => create();
  static $pb.PbList<fileUploadRequest> createRepeated() => $pb.PbList<fileUploadRequest>();
  @$core.pragma('dart2js:noInline')
  static fileUploadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<fileUploadRequest>(create);
  static fileUploadRequest? _defaultInstance;

  fileUploadRequest_Data whichData() => _fileUploadRequest_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

class fileUploadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'fileUploadResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  fileUploadResponse._() : super();
  factory fileUploadResponse({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory fileUploadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory fileUploadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  fileUploadResponse clone() => fileUploadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  fileUploadResponse copyWith(void Function(fileUploadResponse) updates) => super.copyWith((message) => updates(message as fileUploadResponse)) as fileUploadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static fileUploadResponse create() => fileUploadResponse._();
  fileUploadResponse createEmptyInstance() => create();
  static $pb.PbList<fileUploadResponse> createRepeated() => $pb.PbList<fileUploadResponse>();
  @$core.pragma('dart2js:noInline')
  static fileUploadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<fileUploadResponse>(create);
  static fileUploadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}


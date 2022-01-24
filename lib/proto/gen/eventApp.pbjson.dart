///
//  Generated code. Do not modify.
//  source: eventApp.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use infoUserIdDescriptor instead')
const infoUserId$json = const {
  '1': 'infoUserId',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `infoUserId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoUserIdDescriptor = $convert.base64Decode('CgppbmZvVXNlcklkEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use infoIdDescriptor instead')
const infoId$json = const {
  '1': 'infoId',
  '2': const [
    const {'1': 'idEvento', '3': 1, '4': 1, '5': 5, '10': 'idEvento'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `infoId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoIdDescriptor = $convert.base64Decode('CgZpbmZvSWQSGgoIaWRFdmVudG8YASABKAVSCGlkRXZlbnRvEhQKBXRva2VuGAIgASgJUgV0b2tlbg==');
@$core.Deprecated('Use upcomingReturnDescriptor instead')
const upcomingReturn$json = const {
  '1': 'upcomingReturn',
  '2': const [
    const {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.file.eventOverview', '10': 'events'},
    const {'1': 'state', '3': 2, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'statusMsg', '3': 3, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `upcomingReturn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upcomingReturnDescriptor = $convert.base64Decode('Cg51cGNvbWluZ1JldHVybhIrCgZldmVudHMYASADKAsyEy5maWxlLmV2ZW50T3ZlcnZpZXdSBmV2ZW50cxIUCgVzdGF0ZRgCIAEoCFIFc3RhdGUSHAoJc3RhdHVzTXNnGAMgASgJUglzdGF0dXNNc2c=');
@$core.Deprecated('Use eventOverviewDescriptor instead')
const eventOverview$json = const {
  '1': 'eventOverview',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 2, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'eventId', '3': 3, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'startDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'eventPlace', '3': 5, '4': 1, '5': 5, '10': 'eventPlace'},
    const {'1': 'eventType', '3': 6, '4': 1, '5': 5, '10': 'eventType'},
  ],
};

/// Descriptor for `eventOverview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventOverviewDescriptor = $convert.base64Decode('Cg1ldmVudE92ZXJ2aWV3EhIKBG5hbWUYASABKAlSBG5hbWUSFgoGaW1nVXJsGAIgASgJUgZpbWdVcmwSGAoHZXZlbnRJZBgDIAEoBVIHZXZlbnRJZBI4CglzdGFydERhdGUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydERhdGUSHgoKZXZlbnRQbGFjZRgFIAEoBVIKZXZlbnRQbGFjZRIcCglldmVudFR5cGUYBiABKAVSCWV2ZW50VHlwZQ==');
@$core.Deprecated('Use eventStateMsgDescriptor instead')
const eventStateMsg$json = const {
  '1': 'eventStateMsg',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'statusMsg', '3': 3, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `eventStateMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventStateMsgDescriptor = $convert.base64Decode('Cg1ldmVudFN0YXRlTXNnEhQKBXN0YXRlGAEgASgIUgVzdGF0ZRIOCgJpZBgCIAEoBVICaWQSHAoJc3RhdHVzTXNnGAMgASgJUglzdGF0dXNNc2c=');
@$core.Deprecated('Use eventUserInfoDescriptor instead')
const eventUserInfo$json = const {
  '1': 'eventUserInfo',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 3, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'latitude', '3': 5, '4': 1, '5': 9, '10': 'latitude'},
    const {'1': 'longitude', '3': 6, '4': 1, '5': 9, '10': 'longitude'},
    const {'1': 'eventPlace', '3': 7, '4': 1, '5': 5, '10': 'eventPlace'},
    const {'1': 'eventType', '3': 8, '4': 1, '5': 5, '10': 'eventType'},
    const {'1': 'statisticsDate', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'statisticsDate'},
    const {'1': 'ocupationPercentage', '3': 10, '4': 1, '5': 2, '10': 'ocupationPercentage'},
    const {'1': 'statusMsg', '3': 11, '4': 1, '5': 9, '10': 'statusMsg'},
    const {'1': 'eventId', '3': 12, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'ageRestriction', '3': 13, '4': 1, '5': 5, '10': 'ageRestriction'},
    const {'1': 'startDate', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'endDate', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
  ],
};

/// Descriptor for `eventUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventUserInfoDescriptor = $convert.base64Decode('Cg1ldmVudFVzZXJJbmZvEhQKBXN0YXRlGAEgASgIUgVzdGF0ZRISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmltZ1VybBgDIAEoCVIGaW1nVXJsEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIaCghsYXRpdHVkZRgFIAEoCVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAYgASgJUglsb25naXR1ZGUSHgoKZXZlbnRQbGFjZRgHIAEoBVIKZXZlbnRQbGFjZRIcCglldmVudFR5cGUYCCABKAVSCWV2ZW50VHlwZRJCCg5zdGF0aXN0aWNzRGF0ZRgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDnN0YXRpc3RpY3NEYXRlEjAKE29jdXBhdGlvblBlcmNlbnRhZ2UYCiABKAJSE29jdXBhdGlvblBlcmNlbnRhZ2USHAoJc3RhdHVzTXNnGAsgASgJUglzdGF0dXNNc2cSGAoHZXZlbnRJZBgMIAEoBVIHZXZlbnRJZBImCg5hZ2VSZXN0cmljdGlvbhgNIAEoBVIOYWdlUmVzdHJpY3Rpb24SOAoJc3RhcnREYXRlGA4gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJc3RhcnREYXRlEjQKB2VuZERhdGUYDyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgdlbmREYXRl');
@$core.Deprecated('Use eventAdminInfoDescriptor instead')
const eventAdminInfo$json = const {
  '1': 'eventAdminInfo',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 3, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'latitude', '3': 5, '4': 1, '5': 9, '10': 'latitude'},
    const {'1': 'longitude', '3': 6, '4': 1, '5': 9, '10': 'longitude'},
    const {'1': 'eventPlace', '3': 7, '4': 1, '5': 5, '10': 'eventPlace'},
    const {'1': 'eventType', '3': 8, '4': 1, '5': 5, '10': 'eventType'},
    const {'1': 'participants', '3': 9, '4': 3, '5': 11, '6': '.file.user', '10': 'participants'},
    const {'1': 'nGuests', '3': 10, '4': 1, '5': 5, '10': 'nGuests'},
    const {'1': 'nParticipants', '3': 11, '4': 1, '5': 5, '10': 'nParticipants'},
    const {'1': 'statisticsDate', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'statisticsDate'},
    const {'1': 'ocupationPercentage', '3': 13, '4': 1, '5': 2, '10': 'ocupationPercentage'},
    const {'1': 'statusMsg', '3': 14, '4': 1, '5': 9, '10': 'statusMsg'},
    const {'1': 'eventId', '3': 15, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'ageRestriction', '3': 16, '4': 1, '5': 5, '10': 'ageRestriction'},
    const {'1': 'startDate', '3': 17, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'endDate', '3': 18, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
  ],
};

/// Descriptor for `eventAdminInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventAdminInfoDescriptor = $convert.base64Decode('Cg5ldmVudEFkbWluSW5mbxIUCgVzdGF0ZRgBIAEoCFIFc3RhdGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZpbWdVcmwYAyABKAlSBmltZ1VybBIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24SGgoIbGF0aXR1ZGUYBSABKAlSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgGIAEoCVIJbG9uZ2l0dWRlEh4KCmV2ZW50UGxhY2UYByABKAVSCmV2ZW50UGxhY2USHAoJZXZlbnRUeXBlGAggASgFUglldmVudFR5cGUSLgoMcGFydGljaXBhbnRzGAkgAygLMgouZmlsZS51c2VyUgxwYXJ0aWNpcGFudHMSGAoHbkd1ZXN0cxgKIAEoBVIHbkd1ZXN0cxIkCg1uUGFydGljaXBhbnRzGAsgASgFUg1uUGFydGljaXBhbnRzEkIKDnN0YXRpc3RpY3NEYXRlGAwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOc3RhdGlzdGljc0RhdGUSMAoTb2N1cGF0aW9uUGVyY2VudGFnZRgNIAEoAlITb2N1cGF0aW9uUGVyY2VudGFnZRIcCglzdGF0dXNNc2cYDiABKAlSCXN0YXR1c01zZxIYCgdldmVudElkGA8gASgFUgdldmVudElkEiYKDmFnZVJlc3RyaWN0aW9uGBAgASgFUg5hZ2VSZXN0cmljdGlvbhI4CglzdGFydERhdGUYESABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydERhdGUSNAoHZW5kRGF0ZRgSIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2VuZERhdGU=');
@$core.Deprecated('Use createEventInfoDescriptor instead')
const createEventInfo$json = const {
  '1': 'createEventInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 2, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'latitude', '3': 4, '4': 1, '5': 9, '10': 'latitude'},
    const {'1': 'longitude', '3': 5, '4': 1, '5': 9, '10': 'longitude'},
    const {'1': 'eventPlace', '3': 6, '4': 1, '5': 5, '10': 'eventPlace'},
    const {'1': 'eventType', '3': 7, '4': 1, '5': 5, '10': 'eventType'},
    const {'1': 'ageRestriction', '3': 8, '4': 1, '5': 5, '10': 'ageRestriction'},
    const {'1': 'startDate', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'endDate', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'username', '3': 11, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'token', '3': 12, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `createEventInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEventInfoDescriptor = $convert.base64Decode('Cg9jcmVhdGVFdmVudEluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZpbWdVcmwYAiABKAlSBmltZ1VybBIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SGgoIbGF0aXR1ZGUYBCABKAlSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgFIAEoCVIJbG9uZ2l0dWRlEh4KCmV2ZW50UGxhY2UYBiABKAVSCmV2ZW50UGxhY2USHAoJZXZlbnRUeXBlGAcgASgFUglldmVudFR5cGUSJgoOYWdlUmVzdHJpY3Rpb24YCCABKAVSDmFnZVJlc3RyaWN0aW9uEjgKCXN0YXJ0RGF0ZRgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0RGF0ZRI0CgdlbmREYXRlGAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIHZW5kRGF0ZRIaCgh1c2VybmFtZRgLIAEoCVIIdXNlcm5hbWUSFAoFdG9rZW4YDCABKAlSBXRva2Vu');
@$core.Deprecated('Use updateEventInfoDescriptor instead')
const updateEventInfo$json = const {
  '1': 'updateEventInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 3, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'latitude', '3': 5, '4': 1, '5': 9, '10': 'latitude'},
    const {'1': 'longitude', '3': 6, '4': 1, '5': 9, '10': 'longitude'},
    const {'1': 'eventPlace', '3': 7, '4': 1, '5': 5, '10': 'eventPlace'},
    const {'1': 'eventType', '3': 8, '4': 1, '5': 5, '10': 'eventType'},
    const {'1': 'ageRestriction', '3': 9, '4': 1, '5': 5, '10': 'ageRestriction'},
    const {'1': 'startDate', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'endDate', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'username', '3': 12, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'token', '3': 13, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `updateEventInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEventInfoDescriptor = $convert.base64Decode('Cg91cGRhdGVFdmVudEluZm8SDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGaW1nVXJsGAMgASgJUgZpbWdVcmwSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEhoKCGxhdGl0dWRlGAUgASgJUghsYXRpdHVkZRIcCglsb25naXR1ZGUYBiABKAlSCWxvbmdpdHVkZRIeCgpldmVudFBsYWNlGAcgASgFUgpldmVudFBsYWNlEhwKCWV2ZW50VHlwZRgIIAEoBVIJZXZlbnRUeXBlEiYKDmFnZVJlc3RyaWN0aW9uGAkgASgFUg5hZ2VSZXN0cmljdGlvbhI4CglzdGFydERhdGUYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydERhdGUSNAoHZW5kRGF0ZRgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2VuZERhdGUSGgoIdXNlcm5hbWUYDCABKAlSCHVzZXJuYW1lEhQKBXRva2VuGA0gASgJUgV0b2tlbg==');
@$core.Deprecated('Use userDescriptor instead')
const user$json = const {
  '1': 'user',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgUrl', '3': 4, '4': 1, '5': 9, '10': 'imgUrl'},
  ],
};

/// Descriptor for `user`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgR1c2VyEg4KAmlkGAEgASgFUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSEgoEbmFtZRgDIAEoCVIEbmFtZRIWCgZpbWdVcmwYBCABKAlSBmltZ1VybA==');
@$core.Deprecated('Use ocupationDescriptor instead')
const ocupation$json = const {
  '1': 'ocupation',
  '2': const [
    const {'1': 'statisticsDate', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'statisticsDate'},
    const {'1': 'ocupationPercentage', '3': 2, '4': 1, '5': 2, '10': 'ocupationPercentage'},
    const {'1': 'nParticipants', '3': 3, '4': 1, '5': 5, '10': 'nParticipants'},
    const {'1': 'nActiveParticipants', '3': 4, '4': 1, '5': 5, '10': 'nActiveParticipants'},
    const {'1': 'nInvites', '3': 5, '4': 1, '5': 5, '10': 'nInvites'},
  ],
};

/// Descriptor for `ocupation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ocupationDescriptor = $convert.base64Decode('CglvY3VwYXRpb24SQgoOc3RhdGlzdGljc0RhdGUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg5zdGF0aXN0aWNzRGF0ZRIwChNvY3VwYXRpb25QZXJjZW50YWdlGAIgASgCUhNvY3VwYXRpb25QZXJjZW50YWdlEiQKDW5QYXJ0aWNpcGFudHMYAyABKAVSDW5QYXJ0aWNpcGFudHMSMAoTbkFjdGl2ZVBhcnRpY2lwYW50cxgEIAEoBVITbkFjdGl2ZVBhcnRpY2lwYW50cxIaCghuSW52aXRlcxgFIAEoBVIIbkludml0ZXM=');
@$core.Deprecated('Use ocupationResponseDescriptor instead')
const ocupationResponse$json = const {
  '1': 'ocupationResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'ocupationStats', '3': 2, '4': 3, '5': 11, '6': '.file.ocupation', '10': 'ocupationStats'},
    const {'1': 'statusMsg', '3': 3, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `ocupationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ocupationResponseDescriptor = $convert.base64Decode('ChFvY3VwYXRpb25SZXNwb25zZRIUCgVzdGF0ZRgBIAEoCFIFc3RhdGUSNwoOb2N1cGF0aW9uU3RhdHMYAiADKAsyDy5maWxlLm9jdXBhdGlvblIOb2N1cGF0aW9uU3RhdHMSHAoJc3RhdHVzTXNnGAMgASgJUglzdGF0dXNNc2c=');
@$core.Deprecated('Use loginInfoDescriptor instead')
const loginInfo$json = const {
  '1': 'loginInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `loginInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginInfoDescriptor = $convert.base64Decode('Cglsb2dpbkluZm8SGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use authResponseDescriptor instead')
const authResponse$json = const {
  '1': 'authResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'statusMsg', '3': 3, '4': 1, '5': 9, '10': 'statusMsg'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imgurl', '3': 5, '4': 1, '5': 9, '10': 'imgurl'},
  ],
};

/// Descriptor for `authResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode('CgxhdXRoUmVzcG9uc2USFAoFc3RhdGUYASABKAhSBXN0YXRlEhQKBXRva2VuGAIgASgJUgV0b2tlbhIcCglzdGF0dXNNc2cYAyABKAlSCXN0YXR1c01zZxISCgRuYW1lGAQgASgJUgRuYW1lEhYKBmltZ3VybBgFIAEoCVIGaW1ndXJs');
@$core.Deprecated('Use createUserInfoDescriptor instead')
const createUserInfo$json = const {
  '1': 'createUserInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'imageUrl', '3': 5, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'organization', '3': 6, '4': 1, '5': 9, '10': 'organization'},
    const {'1': 'job', '3': 7, '4': 1, '5': 9, '10': 'job'},
    const {'1': 'password', '3': 8, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `createUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserInfoDescriptor = $convert.base64Decode('Cg5jcmVhdGVVc2VySW5mbxIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSEAoDYWdlGAQgASgFUgNhZ2USGgoIaW1hZ2VVcmwYBSABKAlSCGltYWdlVXJsEiIKDG9yZ2FuaXphdGlvbhgGIAEoCVIMb3JnYW5pemF0aW9uEhAKA2pvYhgHIAEoCVIDam9iEhoKCHBhc3N3b3JkGAggASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use updateUserInfoDescriptor instead')
const updateUserInfo$json = const {
  '1': 'updateUserInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'imageUrl', '3': 4, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'organization', '3': 5, '4': 1, '5': 9, '10': 'organization'},
    const {'1': 'job', '3': 6, '4': 1, '5': 9, '10': 'job'},
    const {'1': 'id', '3': 7, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `updateUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserInfoDescriptor = $convert.base64Decode('Cg51cGRhdGVVc2VySW5mbxIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSEgoEbmFtZRgCIAEoCVIEbmFtZRIQCgNhZ2UYAyABKAVSA2FnZRIaCghpbWFnZVVybBgEIAEoCVIIaW1hZ2VVcmwSIgoMb3JnYW5pemF0aW9uGAUgASgJUgxvcmdhbml6YXRpb24SEAoDam9iGAYgASgJUgNqb2ISDgoCaWQYByABKAVSAmlk');
@$core.Deprecated('Use userStateMsgDescriptor instead')
const userStateMsg$json = const {
  '1': 'userStateMsg',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'statusMsg', '3': 3, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `userStateMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStateMsgDescriptor = $convert.base64Decode('Cgx1c2VyU3RhdGVNc2cSFAoFc3RhdGUYASABKAhSBXN0YXRlEg4KAmlkGAIgASgFUgJpZBIcCglzdGF0dXNNc2cYAyABKAlSCXN0YXR1c01zZw==');
@$core.Deprecated('Use qRentryDescriptor instead')
const QRentry$json = const {
  '1': 'QRentry',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'keycode', '3': 3, '4': 1, '5': 9, '10': 'keycode'},
  ],
};

/// Descriptor for `QRentry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qRentryDescriptor = $convert.base64Decode('CgdRUmVudHJ5EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIUCgV0b2tlbhgCIAEoCVIFdG9rZW4SGAoHa2V5Y29kZRgDIAEoCVIHa2V5Y29kZQ==');
@$core.Deprecated('Use publicInviteInfoDescriptor instead')
const publicInviteInfo$json = const {
  '1': 'publicInviteInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'accept', '3': 4, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `publicInviteInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicInviteInfoDescriptor = $convert.base64Decode('ChBwdWJsaWNJbnZpdGVJbmZvEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIYCgdldmVudElkGAIgASgFUgdldmVudElkEhQKBXRva2VuGAMgASgJUgV0b2tlbhIWCgZhY2NlcHQYBCABKAhSBmFjY2VwdA==');
@$core.Deprecated('Use publicRegisterInfoDescriptor instead')
const publicRegisterInfo$json = const {
  '1': 'publicRegisterInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `publicRegisterInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicRegisterInfoDescriptor = $convert.base64Decode('ChJwdWJsaWNSZWdpc3RlckluZm8SGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhgKB2V2ZW50SWQYAiABKAVSB2V2ZW50SWQSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use entryInfoRequestDescriptor instead')
const entryInfoRequest$json = const {
  '1': 'entryInfoRequest',
  '2': const [
    const {'1': 'keyCode', '3': 1, '4': 1, '5': 9, '10': 'keyCode'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 4, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'token', '3': 5, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `entryInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryInfoRequestDescriptor = $convert.base64Decode('ChBlbnRyeUluZm9SZXF1ZXN0EhgKB2tleUNvZGUYASABKAlSB2tleUNvZGUSGgoIdXNlcm5hbWUYAiABKAlSCHVzZXJuYW1lEhgKB2V2ZW50SWQYBCABKAVSB2V2ZW50SWQSFAoFdG9rZW4YBSABKAlSBXRva2Vu');
@$core.Deprecated('Use entryValidationDescriptor instead')
const entryValidation$json = const {
  '1': 'entryValidation',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'statusMsg', '3': 2, '4': 1, '5': 9, '10': 'statusMsg'},
    const {'1': 'validating', '3': 3, '4': 1, '5': 8, '10': 'validating'},
  ],
};

/// Descriptor for `entryValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryValidationDescriptor = $convert.base64Decode('Cg9lbnRyeVZhbGlkYXRpb24SFgoGc3RhdHVzGAEgASgIUgZzdGF0dXMSHAoJc3RhdHVzTXNnGAIgASgJUglzdGF0dXNNc2cSHgoKdmFsaWRhdGluZxgDIAEoCFIKdmFsaWRhdGluZw==');
@$core.Deprecated('Use entryAddUserDescriptor instead')
const entryAddUser$json = const {
  '1': 'entryAddUser',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'guestUsername', '3': 3, '4': 1, '5': 9, '10': 'guestUsername'},
  ],
};

/// Descriptor for `entryAddUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryAddUserDescriptor = $convert.base64Decode('CgxlbnRyeUFkZFVzZXISGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhgKB2V2ZW50SWQYAiABKAVSB2V2ZW50SWQSJAoNZ3Vlc3RVc2VybmFtZRgDIAEoCVINZ3Vlc3RVc2VybmFtZQ==');
@$core.Deprecated('Use entryResponseDescriptor instead')
const entryResponse$json = const {
  '1': 'entryResponse',
  '2': const [
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'statusMsg', '3': 4, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `entryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryResponseDescriptor = $convert.base64Decode('Cg1lbnRyeVJlc3BvbnNlEhYKBnN0YXR1cxgDIAEoCFIGc3RhdHVzEhwKCXN0YXR1c01zZxgEIAEoCVIJc3RhdHVzTXNn');
@$core.Deprecated('Use entryParamDescriptor instead')
const entryParam$json = const {
  '1': 'entryParam',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `entryParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryParamDescriptor = $convert.base64Decode('CgplbnRyeVBhcmFtEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIYCgdldmVudElkGAIgASgFUgdldmVudElkEhQKBXRva2VuGAMgASgJUgV0b2tlbg==');
@$core.Deprecated('Use entryGuestParamDescriptor instead')
const entryGuestParam$json = const {
  '1': 'entryGuestParam',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'guestId', '3': 3, '4': 1, '5': 5, '10': 'guestId'},
  ],
};

/// Descriptor for `entryGuestParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryGuestParamDescriptor = $convert.base64Decode('Cg9lbnRyeUd1ZXN0UGFyYW0SFgoGdXNlcklkGAEgASgFUgZ1c2VySWQSGAoHZXZlbnRJZBgCIAEoBVIHZXZlbnRJZBIYCgdndWVzdElkGAMgASgFUgdndWVzdElk');
@$core.Deprecated('Use entryGlobalParamDescriptor instead')
const entryGlobalParam$json = const {
  '1': 'entryGlobalParam',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'eventId', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `entryGlobalParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryGlobalParamDescriptor = $convert.base64Decode('ChBlbnRyeUdsb2JhbFBhcmFtEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIYCgdldmVudElkGAIgASgFUgdldmVudElkEhQKBXRva2VuGAMgASgJUgV0b2tlbg==');
@$core.Deprecated('Use entryInfoDescriptor instead')
const entryInfo$json = const {
  '1': 'entryInfo',
  '2': const [
    const {'1': 'keyCode', '3': 1, '4': 1, '5': 9, '10': 'keyCode'},
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'statusMsg', '3': 4, '4': 1, '5': 9, '10': 'statusMsg'},
  ],
};

/// Descriptor for `entryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryInfoDescriptor = $convert.base64Decode('CgllbnRyeUluZm8SGAoHa2V5Q29kZRgBIAEoCVIHa2V5Q29kZRIWCgZzdGF0dXMYAyABKAhSBnN0YXR1cxIcCglzdGF0dXNNc2cYBCABKAlSCXN0YXR1c01zZw==');
@$core.Deprecated('Use fileUploadRequestDescriptor instead')
const fileUploadRequest$json = const {
  '1': 'fileUploadRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunk'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `fileUploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileUploadRequestDescriptor = $convert.base64Decode('ChFmaWxlVXBsb2FkUmVxdWVzdBIUCgRuYW1lGAEgASgJSABSBG5hbWUSFgoFY2h1bmsYAiABKAxIAFIFY2h1bmtCBgoEZGF0YQ==');
@$core.Deprecated('Use fileUploadResponseDescriptor instead')
const fileUploadResponse$json = const {
  '1': 'fileUploadResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `fileUploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileUploadResponseDescriptor = $convert.base64Decode('ChJmaWxlVXBsb2FkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

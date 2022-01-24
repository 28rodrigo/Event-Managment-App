///
//  Generated code. Do not modify.
//  source: eventApp.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'eventApp.pb.dart' as $0;
export 'eventApp.pb.dart';

class EventServiceClient extends $grpc.Client {
  static final _$getUserEventInfo =
      $grpc.ClientMethod<$0.infoId, $0.eventUserInfo>(
          '/file.EventService/getUserEventInfo',
          ($0.infoId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.eventUserInfo.fromBuffer(value));
  static final _$getAdminEventInfo =
      $grpc.ClientMethod<$0.infoId, $0.eventAdminInfo>(
          '/file.EventService/getAdminEventInfo',
          ($0.infoId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.eventAdminInfo.fromBuffer(value));
  static final _$getStatisticsInfo =
      $grpc.ClientMethod<$0.infoId, $0.ocupationResponse>(
          '/file.EventService/getStatisticsInfo',
          ($0.infoId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ocupationResponse.fromBuffer(value));
  static final _$createEvent =
      $grpc.ClientMethod<$0.createEventInfo, $0.eventStateMsg>(
          '/file.EventService/createEvent',
          ($0.createEventInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.eventStateMsg.fromBuffer(value));
  static final _$updateEvent =
      $grpc.ClientMethod<$0.updateEventInfo, $0.eventStateMsg>(
          '/file.EventService/updateEvent',
          ($0.updateEventInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.eventStateMsg.fromBuffer(value));
  static final _$getUpcomingEvents =
      $grpc.ClientMethod<$0.infoUserId, $0.upcomingReturn>(
          '/file.EventService/getUpcomingEvents',
          ($0.infoUserId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.upcomingReturn.fromBuffer(value));
  static final _$getMyEvents =
      $grpc.ClientMethod<$0.infoUserId, $0.upcomingReturn>(
          '/file.EventService/getMyEvents',
          ($0.infoUserId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.upcomingReturn.fromBuffer(value));
  static final _$getOtherEvents =
      $grpc.ClientMethod<$0.infoUserId, $0.upcomingReturn>(
          '/file.EventService/getOtherEvents',
          ($0.infoUserId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.upcomingReturn.fromBuffer(value));
  static final _$getExploreEvents =
      $grpc.ClientMethod<$0.infoUserId, $0.upcomingReturn>(
          '/file.EventService/getExploreEvents',
          ($0.infoUserId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.upcomingReturn.fromBuffer(value));
  static final _$getInviteEvents =
      $grpc.ClientMethod<$0.infoUserId, $0.upcomingReturn>(
          '/file.EventService/getInviteEvents',
          ($0.infoUserId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.upcomingReturn.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.eventUserInfo> getUserEventInfo($0.infoId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserEventInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.eventAdminInfo> getAdminEventInfo($0.infoId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAdminEventInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.ocupationResponse> getStatisticsInfo(
      $0.infoId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStatisticsInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.eventStateMsg> createEvent($0.createEventInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.eventStateMsg> updateEvent($0.updateEventInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.upcomingReturn> getUpcomingEvents(
      $0.infoUserId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUpcomingEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.upcomingReturn> getMyEvents($0.infoUserId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.upcomingReturn> getOtherEvents($0.infoUserId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOtherEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.upcomingReturn> getExploreEvents(
      $0.infoUserId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getExploreEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.upcomingReturn> getInviteEvents($0.infoUserId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInviteEvents, request, options: options);
  }
}

abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'file.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.infoId, $0.eventUserInfo>(
        'getUserEventInfo',
        getUserEventInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoId.fromBuffer(value),
        ($0.eventUserInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoId, $0.eventAdminInfo>(
        'getAdminEventInfo',
        getAdminEventInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoId.fromBuffer(value),
        ($0.eventAdminInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoId, $0.ocupationResponse>(
        'getStatisticsInfo',
        getStatisticsInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoId.fromBuffer(value),
        ($0.ocupationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.createEventInfo, $0.eventStateMsg>(
        'createEvent',
        createEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.createEventInfo.fromBuffer(value),
        ($0.eventStateMsg value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.updateEventInfo, $0.eventStateMsg>(
        'updateEvent',
        updateEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.updateEventInfo.fromBuffer(value),
        ($0.eventStateMsg value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoUserId, $0.upcomingReturn>(
        'getUpcomingEvents',
        getUpcomingEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoUserId.fromBuffer(value),
        ($0.upcomingReturn value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoUserId, $0.upcomingReturn>(
        'getMyEvents',
        getMyEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoUserId.fromBuffer(value),
        ($0.upcomingReturn value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoUserId, $0.upcomingReturn>(
        'getOtherEvents',
        getOtherEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoUserId.fromBuffer(value),
        ($0.upcomingReturn value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoUserId, $0.upcomingReturn>(
        'getExploreEvents',
        getExploreEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoUserId.fromBuffer(value),
        ($0.upcomingReturn value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.infoUserId, $0.upcomingReturn>(
        'getInviteEvents',
        getInviteEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.infoUserId.fromBuffer(value),
        ($0.upcomingReturn value) => value.writeToBuffer()));
  }

  $async.Future<$0.eventUserInfo> getUserEventInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoId> request) async {
    return getUserEventInfo(call, await request);
  }

  $async.Future<$0.eventAdminInfo> getAdminEventInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoId> request) async {
    return getAdminEventInfo(call, await request);
  }

  $async.Future<$0.ocupationResponse> getStatisticsInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoId> request) async {
    return getStatisticsInfo(call, await request);
  }

  $async.Future<$0.eventStateMsg> createEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.createEventInfo> request) async {
    return createEvent(call, await request);
  }

  $async.Future<$0.eventStateMsg> updateEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.updateEventInfo> request) async {
    return updateEvent(call, await request);
  }

  $async.Future<$0.upcomingReturn> getUpcomingEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoUserId> request) async {
    return getUpcomingEvents(call, await request);
  }

  $async.Future<$0.upcomingReturn> getMyEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoUserId> request) async {
    return getMyEvents(call, await request);
  }

  $async.Future<$0.upcomingReturn> getOtherEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoUserId> request) async {
    return getOtherEvents(call, await request);
  }

  $async.Future<$0.upcomingReturn> getExploreEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoUserId> request) async {
    return getExploreEvents(call, await request);
  }

  $async.Future<$0.upcomingReturn> getInviteEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.infoUserId> request) async {
    return getInviteEvents(call, await request);
  }

  $async.Future<$0.eventUserInfo> getUserEventInfo(
      $grpc.ServiceCall call, $0.infoId request);
  $async.Future<$0.eventAdminInfo> getAdminEventInfo(
      $grpc.ServiceCall call, $0.infoId request);
  $async.Future<$0.ocupationResponse> getStatisticsInfo(
      $grpc.ServiceCall call, $0.infoId request);
  $async.Future<$0.eventStateMsg> createEvent(
      $grpc.ServiceCall call, $0.createEventInfo request);
  $async.Future<$0.eventStateMsg> updateEvent(
      $grpc.ServiceCall call, $0.updateEventInfo request);
  $async.Future<$0.upcomingReturn> getUpcomingEvents(
      $grpc.ServiceCall call, $0.infoUserId request);
  $async.Future<$0.upcomingReturn> getMyEvents(
      $grpc.ServiceCall call, $0.infoUserId request);
  $async.Future<$0.upcomingReturn> getOtherEvents(
      $grpc.ServiceCall call, $0.infoUserId request);
  $async.Future<$0.upcomingReturn> getExploreEvents(
      $grpc.ServiceCall call, $0.infoUserId request);
  $async.Future<$0.upcomingReturn> getInviteEvents(
      $grpc.ServiceCall call, $0.infoUserId request);
}

class UserServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.loginInfo, $0.authResponse>(
      '/file.UserService/login',
      ($0.loginInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.authResponse.fromBuffer(value));
  static final _$createUser =
      $grpc.ClientMethod<$0.createUserInfo, $0.userStateMsg>(
          '/file.UserService/createUser',
          ($0.createUserInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.userStateMsg.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$0.updateUserInfo, $0.userStateMsg>(
          '/file.UserService/updateUser',
          ($0.updateUserInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.userStateMsg.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.authResponse> login($0.loginInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.userStateMsg> createUser($0.createUserInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.userStateMsg> updateUser($0.updateUserInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'file.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.loginInfo, $0.authResponse>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.loginInfo.fromBuffer(value),
        ($0.authResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.createUserInfo, $0.userStateMsg>(
        'createUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.createUserInfo.fromBuffer(value),
        ($0.userStateMsg value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.updateUserInfo, $0.userStateMsg>(
        'updateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.updateUserInfo.fromBuffer(value),
        ($0.userStateMsg value) => value.writeToBuffer()));
  }

  $async.Future<$0.authResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.loginInfo> request) async {
    return login(call, await request);
  }

  $async.Future<$0.userStateMsg> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.createUserInfo> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.userStateMsg> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.updateUserInfo> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.authResponse> login(
      $grpc.ServiceCall call, $0.loginInfo request);
  $async.Future<$0.userStateMsg> createUser(
      $grpc.ServiceCall call, $0.createUserInfo request);
  $async.Future<$0.userStateMsg> updateUser(
      $grpc.ServiceCall call, $0.updateUserInfo request);
}

class AccessEventServiceClient extends $grpc.Client {
  static final _$getEntryCode = $grpc.ClientMethod<$0.entryParam, $0.entryInfo>(
      '/file.AccessEventService/getEntryCode',
      ($0.entryParam value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.entryInfo.fromBuffer(value));
  static final _$getGlobalinviteLink =
      $grpc.ClientMethod<$0.entryGlobalParam, $0.entryInfo>(
          '/file.AccessEventService/getGlobalinviteLink',
          ($0.entryGlobalParam value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.entryInfo.fromBuffer(value));
  static final _$addUserToEvent =
      $grpc.ClientMethod<$0.entryAddUser, $0.entryResponse>(
          '/file.AccessEventService/addUserToEvent',
          ($0.entryAddUser value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.entryResponse.fromBuffer(value));
  static final _$validateKeycode =
      $grpc.ClientMethod<$0.entryInfoRequest, $0.entryValidation>(
          '/file.AccessEventService/validateKeycode',
          ($0.entryInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.entryValidation.fromBuffer(value));
  static final _$registerPublicEvent =
      $grpc.ClientMethod<$0.publicRegisterInfo, $0.entryResponse>(
          '/file.AccessEventService/registerPublicEvent',
          ($0.publicRegisterInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.entryResponse.fromBuffer(value));
  static final _$registerInviteEvent =
      $grpc.ClientMethod<$0.publicInviteInfo, $0.entryResponse>(
          '/file.AccessEventService/registerInviteEvent',
          ($0.publicInviteInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.entryResponse.fromBuffer(value));
  static final _$registerQREvent =
      $grpc.ClientMethod<$0.QRentry, $0.entryResponse>(
          '/file.AccessEventService/registerQREvent',
          ($0.QRentry value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.entryResponse.fromBuffer(value));

  AccessEventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.entryInfo> getEntryCode($0.entryParam request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEntryCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryInfo> getGlobalinviteLink(
      $0.entryGlobalParam request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGlobalinviteLink, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryResponse> addUserToEvent($0.entryAddUser request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUserToEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryValidation> validateKeycode(
      $0.entryInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateKeycode, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryResponse> registerPublicEvent(
      $0.publicRegisterInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerPublicEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryResponse> registerInviteEvent(
      $0.publicInviteInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerInviteEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.entryResponse> registerQREvent($0.QRentry request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerQREvent, request, options: options);
  }
}

abstract class AccessEventServiceBase extends $grpc.Service {
  $core.String get $name => 'file.AccessEventService';

  AccessEventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.entryParam, $0.entryInfo>(
        'getEntryCode',
        getEntryCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.entryParam.fromBuffer(value),
        ($0.entryInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.entryGlobalParam, $0.entryInfo>(
        'getGlobalinviteLink',
        getGlobalinviteLink_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.entryGlobalParam.fromBuffer(value),
        ($0.entryInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.entryAddUser, $0.entryResponse>(
        'addUserToEvent',
        addUserToEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.entryAddUser.fromBuffer(value),
        ($0.entryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.entryInfoRequest, $0.entryValidation>(
        'validateKeycode',
        validateKeycode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.entryInfoRequest.fromBuffer(value),
        ($0.entryValidation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.publicRegisterInfo, $0.entryResponse>(
        'registerPublicEvent',
        registerPublicEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.publicRegisterInfo.fromBuffer(value),
        ($0.entryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.publicInviteInfo, $0.entryResponse>(
        'registerInviteEvent',
        registerInviteEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.publicInviteInfo.fromBuffer(value),
        ($0.entryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QRentry, $0.entryResponse>(
        'registerQREvent',
        registerQREvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QRentry.fromBuffer(value),
        ($0.entryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.entryInfo> getEntryCode_Pre(
      $grpc.ServiceCall call, $async.Future<$0.entryParam> request) async {
    return getEntryCode(call, await request);
  }

  $async.Future<$0.entryInfo> getGlobalinviteLink_Pre($grpc.ServiceCall call,
      $async.Future<$0.entryGlobalParam> request) async {
    return getGlobalinviteLink(call, await request);
  }

  $async.Future<$0.entryResponse> addUserToEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.entryAddUser> request) async {
    return addUserToEvent(call, await request);
  }

  $async.Future<$0.entryValidation> validateKeycode_Pre($grpc.ServiceCall call,
      $async.Future<$0.entryInfoRequest> request) async {
    return validateKeycode(call, await request);
  }

  $async.Future<$0.entryResponse> registerPublicEvent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.publicRegisterInfo> request) async {
    return registerPublicEvent(call, await request);
  }

  $async.Future<$0.entryResponse> registerInviteEvent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.publicInviteInfo> request) async {
    return registerInviteEvent(call, await request);
  }

  $async.Future<$0.entryResponse> registerQREvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QRentry> request) async {
    return registerQREvent(call, await request);
  }

  $async.Future<$0.entryInfo> getEntryCode(
      $grpc.ServiceCall call, $0.entryParam request);
  $async.Future<$0.entryInfo> getGlobalinviteLink(
      $grpc.ServiceCall call, $0.entryGlobalParam request);
  $async.Future<$0.entryResponse> addUserToEvent(
      $grpc.ServiceCall call, $0.entryAddUser request);
  $async.Future<$0.entryValidation> validateKeycode(
      $grpc.ServiceCall call, $0.entryInfoRequest request);
  $async.Future<$0.entryResponse> registerPublicEvent(
      $grpc.ServiceCall call, $0.publicRegisterInfo request);
  $async.Future<$0.entryResponse> registerInviteEvent(
      $grpc.ServiceCall call, $0.publicInviteInfo request);
  $async.Future<$0.entryResponse> registerQREvent(
      $grpc.ServiceCall call, $0.QRentry request);
}

class FileUploaderServiceClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$0.fileUploadRequest, $0.fileUploadResponse>(
          '/file.FileUploaderService/uploadFile',
          ($0.fileUploadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.fileUploadResponse.fromBuffer(value));

  FileUploaderServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.fileUploadResponse> uploadFile(
      $async.Stream<$0.fileUploadRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadFile, request, options: options).single;
  }
}

abstract class FileUploaderServiceBase extends $grpc.Service {
  $core.String get $name => 'file.FileUploaderService';

  FileUploaderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.fileUploadRequest, $0.fileUploadResponse>(
        'uploadFile',
        uploadFile,
        true,
        false,
        ($core.List<$core.int> value) => $0.fileUploadRequest.fromBuffer(value),
        ($0.fileUploadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.fileUploadResponse> uploadFile(
      $grpc.ServiceCall call, $async.Stream<$0.fileUploadRequest> request);
}

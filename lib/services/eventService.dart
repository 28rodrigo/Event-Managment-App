import 'package:eventapp/common/grpc_commons.dart';
import 'package:eventapp/proto/gen/eventApp.pbgrpc.dart';
import 'package:eventapp/proto/gen/google/protobuf/timestamp.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';

class EventService {
  @override
  Future<eventStateMsg> createEvent(createEventInfo request) async {
    var client = EventServiceClient(GrpcClientSingleton().client);

    return await client.createEvent(request);
  }

  Future<eventAdminInfo> getAdminEventInfo(infoId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getAdminEventInfo(info);
    return response;
  }

  Future<eventUserInfo> getUserEventInfo(infoId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getUserEventInfo(info);
    return response;
  }

  // @override
  // Future<ocupationResponse> getStatisticsInfo(
  //     ServiceCall call, infoId request) {
  //   // TODO: implement getStatisticsInfo
  //   throw UnimplementedError();
  // }

  // @override
  // Future<eventUserInfo> getUserEventInfo(ServiceCall call, infoId request) {
  //   // TODO: implement getUserEventInfo
  //   throw UnimplementedError();
  // }

  // @override
  // Future<eventStateMsg> updateEvent(ServiceCall call, updateEventInfo request) {
  //   // TODO: implement updateEvent
  //   throw UnimplementedError();
  // }
  Future<upcomingReturn> getUpcomingEvents(infoUserId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getUpcomingEvents(info);
    return response;
  }

  Future<upcomingReturn> getMyEvents(infoUserId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getMyEvents(info);
    return response;
  }

  Future<upcomingReturn> getOtherEvents(infoUserId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getOtherEvents(info);
    return response;
  }

  Future<upcomingReturn> getExplorerEvents(infoUserId info) async {
    var client = EventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var response = await client.getExploreEvents(info);
    return response;
  }
}

import 'package:eventapp/common/grpc_commons.dart';
import 'package:eventapp/proto/gen/eventApp.pbgrpc.dart';
import 'package:eventapp/proto/gen/google/protobuf/timestamp.pb.dart';
import 'package:grpc/src/server/call.dart';

class EventService extends EventServiceBase {
  @override
  Future<eventStateMsg> createEvent(ServiceCall call, createEventInfo request) {
    var client = EventServiceClient(GrpcClientSingleton().client);

    return client.createEvent(createEventInfo(
        ageRestriction: 18,
        description: "ola",
        endDate: Timestamp.fromDateTime(DateTime.now()),
        startDate: Timestamp.fromDateTime(DateTime.now()),
        eventPlace: 1,
        eventType: 1,
        imgUrl: "hello.com",
        latitude: "1234",
        longitude: "4321",
        name: "evento flutter",
        userId: 2));
  }

  @override
  Future<eventAdminInfo> getAdminEventInfo(ServiceCall call, infoId request) {
    // TODO: implement getAdminEventInfo
    throw UnimplementedError();
  }

  @override
  Future<ocupationResponse> getStatisticsInfo(
      ServiceCall call, infoId request) {
    // TODO: implement getStatisticsInfo
    throw UnimplementedError();
  }

  @override
  Future<eventUserInfo> getUserEventInfo(ServiceCall call, infoId request) {
    // TODO: implement getUserEventInfo
    throw UnimplementedError();
  }

  @override
  Future<eventStateMsg> updateEvent(ServiceCall call, updateEventInfo request) {
    // TODO: implement updateEvent
    throw UnimplementedError();
  }
}

import 'package:eventapp/common/grpc_commons.dart';
import 'package:eventapp/proto/gen/eventApp.pbgrpc.dart';
import 'package:eventapp/proto/gen/google/protobuf/timestamp.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';

class AccessService {
  Future<entryResponse> registerPublicEven(publicRegisterInfo Info) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.registerPublicEvent(Info);

    return stmanagment;
  }

  Future<userStateMsg> createUser(createUserInfo userInfo) async {
    var client = UserServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.createUser(userInfo);

    return stmanagment;
  }
}

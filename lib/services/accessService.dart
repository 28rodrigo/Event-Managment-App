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

  Future<entryResponse> registerInviteEvent(publicInviteInfo Info) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.registerInviteEvent(Info);

    return stmanagment;
  }

  Future<entryResponse> addUserToEvent(entryAddUser Info) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.addUserToEvent(Info);

    return stmanagment;
  }

  Future<userStateMsg> createUser(createUserInfo userInfo) async {
    var client = UserServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.createUser(userInfo);

    return stmanagment;
  }

  Future<entryInfo> getEntry(entryParam userInfo) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.getEntryCode(userInfo);

    return stmanagment;
  }

  Future<entryValidation> validateKeyCode(entryInfoRequest userInfo) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.validateKeycode(userInfo);

    return stmanagment;
  }

  Future<entryInfo> getGlobalKey(entryGlobalParam userInfo) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.getGlobalinviteLink(userInfo);

    return stmanagment;
  }

  Future<entryResponse> registerQREvent(QRentry userInfo) async {
    var client = AccessEventServiceClient(GrpcClientSingleton().client,
        options: CallOptions(timeout: Duration(seconds: 30)));
    var stmanagment = await client.registerQREvent(userInfo);

    return stmanagment;
  }
}

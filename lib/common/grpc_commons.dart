// ignore_for_file: prefer_const_constructors

import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel client =
      ClientChannel("127.0.0.1", // Your IP here, localhost might not work.
          port: 8080,
          options: ChannelOptions(
            //TODO: Change to secure with server certificates

            credentials: ChannelCredentials.insecure(),
            idleTimeout: Duration(minutes: 1),
          ));
  static final GrpcClientSingleton _singleton = GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal();
}

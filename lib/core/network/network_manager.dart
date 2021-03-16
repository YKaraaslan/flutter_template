import 'package:vexana/vexana.dart';

class NetworkService {
  INetworkManager networkManager = NetworkManager(
    options: BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
    ),
    isEnableLogger: true,
  );

  void getPosts(){
    //
  }
}

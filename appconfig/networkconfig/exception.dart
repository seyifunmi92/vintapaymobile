import 'networkconstants.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';

//customized timeout exception
httpCustomException() {
  return http.Response(
      ExceptionClass.timeoutmessage, ExceptionClass.timeoutCustomCode);
}

///check if network is available
Future<bool> networkCheck() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult != ConnectivityResult.none;
}

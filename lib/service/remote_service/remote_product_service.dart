import 'package:grocery_app/const.dart';
import 'package:http/http.dart' as http;
class RemoteProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/products' ;

  Future<dynamic> get()async{
    var response = await client.get(
        Uri.parse('$remoteUrl?populate=images,tag'));
//    print("the result of RemoteProductService is ${response.body}");

    return response;
  }

  Future<dynamic> getByName({required String keyword}) async {
    var response = await client.get(
        Uri.parse('$remoteUrl?populate=images,tag&filters[name][\$contains]=$keyword')
    );

    return response;
  }
}
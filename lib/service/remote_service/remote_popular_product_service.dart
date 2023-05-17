import 'package:grocery_app/const.dart';
import 'package:http/http.dart' as http;



class RemotePopularProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/popular-poducts';

  Future<dynamic> get() async {
    var response = await client.get(
        Uri.parse('$remoteUrl?populate=product,product.images')
    );
    //print("the responce was in ${response.body}");
    return response;
  }
}
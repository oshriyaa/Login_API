import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:newapp/login_model.dart';

class APIService {
  static Future<LoginRequestModel?> login(
      {String? username, String? password}) async {
    var url = Uri.parse('https://api.ikreate.com.np/intern/login');
    var requestHeader = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'primary_auth' : 'api.ikreate.com.np',
    };
    var requestBody = {
      'email_address': 'manandharoshriya@gmail.com',
      'password': 'Login1234',
    };
    http.Response response = await http.post(
      url,
      headers: requestHeader,
      body: requestBody,
    );
    print(response.body);

    // var response = await http.post(url, body: requestModel.toJson());
    // if (response.statusCode == 200 || response.statusCode == 400) {
    // return LoginResponseModel.fromJson(json.decode(response.body));
    // print('Response status: ${response.statusCode}');
    // var data = Weather.fromJson(decoded);
    // print(data);
    // return data;
    // }
    // return null;
  }
}

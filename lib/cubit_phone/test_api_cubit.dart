

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

part 'test_api_state.dart';

class AuthPhoneCubit extends Cubit<TestState> {
  AuthPhoneCubit() : super(TestInitial());
  Future<void> fetchFutureTestApi() async {
      var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse('http://appydev-001-site2.atempurl.com/InvoiceDetail/'));
request.body = json.encode(
  {
  "lineNo": 0,
  "productName": "string",
  "unit": {
    "id": 0,
    "name": "string"
  },
  "unitNo": 0,
  "price": 0,
  "quantity": 0,
  "total": 0,
  "expiryDate": "2024-08-05T11:24:23.132Z"

});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

  }
}

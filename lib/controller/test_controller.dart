import 'dart:convert';

import 'package:assignment6/controller/base_conroller.dart';
import 'package:get/get.dart';
import 'package:assignment6/helper/dialog_helper.dart';
import 'package:assignment6/services/app_exceptions.dart';
import 'package:assignment6/services/base_client.dart';
import 'package:assignment6/services/dio_client.dart';

class TestController extends GetxController with BaseController {
  void getData() async {
    showLoading('Fetching data');
    var response = await BaseClient()
        .get('https://jsonplaceholder.typicode.com', '/todos/1')
        .catchError(handleError);
    if (response == null) return;
    hideLoading();
    print(response);
  }

  void postData() async {
    var request = {'message': 'CodeX sucks!!!'};
    showLoading('Posting data...');
    var response = await BaseClient()
        .post('https://jsonplaceholder.typicode.com', '/posts', request)
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        DialogHelper.showErroDialog(description: apiError["reason"]);
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    hideLoading();
    print(response);
  }
}

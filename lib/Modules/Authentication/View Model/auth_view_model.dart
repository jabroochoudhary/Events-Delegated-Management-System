import 'package:events_delegated_management_system/Modules/Authentication/Model/auth_model.dart';
import 'package:events_delegated_management_system/Network%20Services/app_urls.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:events_delegated_management_system/Utills/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Network Services/network/base_api_services.dart';
import '../../../Network Services/network/network_api_service.dart';

class AuthViewModel extends GetxController {
  Rx<TextEditingController> userNameController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;
  final BaseApiServices _apiService = NetworkApiService();
  RxBool isStayLogin = false.obs;

  userLogin() async {
    isLoading.value = true;
    if (userNameController.value.text.isEmpty ||
        passwordController.value.text.isEmpty) {
      AppNotification().hint(
          title: "Invalid Input",
          message: "User name and password is required.");
    } else {
      final data = {
        'email': userNameController.value.text.toString().trim(),
        'password': passwordController.value.text.toString().trim(),
      };
      try {
        await _apiService
            .getPostApiResponse(AppNetworkUrls.webLogInApiUrl, data)
            .then((value) {
          print(value.toString());
          // final authModel = AuthModel.fromJson(value as Map<String, dynamic>);
          // if (authModel.status.toString() == "success") {
          //   AppNotification().sucess(title: "Login", message: "Login sucess.");
          // } else {
          //   AppNotification()
          //       .error(title: "Login", message: authModel.messgage.toString());
          // }
        });
      } catch (e) {
        AppNotification().error(title: "Error AVM", message: e.toString());
      }
    }
    isLoading.value = false;
  }
}

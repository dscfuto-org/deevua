
import 'dart:convert';
import 'dart:io';
import 'package:deebus/Constants/API.dart';
import 'package:deebus/Data/ResponseData.dart';
import 'package:deebus/Models/DefaultResponse.dart';
import 'package:deebus/Models/LoginResponse.dart';
import 'package:deebus/User/dashboard.dart';
import 'package:deebus/Utils/AlertDialogs.dart';
import 'package:deebus/Utils/Navigators.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as Client;

class  LoginBackend{
  Future<void> loginFetch(BuildContext context,String email, String password)async{

    final url= http+baseURL+loginPath;
    print(url);
    print(json.encode({
      "email": email,
      "password": password
    }));

    try{
      final httpConnectionApi = await Client.post(
        url,
        headers: {HttpHeaders.contentTypeHeader:'application/json'},
        body: json.encode({
          "email": email,
          "password": password
        }),
      );

      print(httpConnectionApi.statusCode);
      print(httpConnectionApi.body);
      if(httpConnectionApi.statusCode==200){
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.defaultResponse = DefaultResponseModel.fromJson(resBody);
        if(ResponseData.defaultResponse.status==1){
          ResponseData.loginResponse = LoginResponse.fromJson(ResponseData.defaultResponse.data);
          navigateReplace(context, Dashboard());
        }else if(ResponseData.defaultResponse.status ==0){
          showErrorDialog(context, "An error occured");
        }else showErrorDialog(context, "A network Error Occured");
      }else showErrorDialog(context, "Validation Error");

    }on  Exception catch (e) {
      throw e;
    }


  }
}
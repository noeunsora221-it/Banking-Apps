import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'storage_service.dart';

class ApiProvider extends GetConnect{
      final StorageService _storageService = StorageService();

      @override
      void OnInit() {
        // 1. Set your API URL
        httpClient.baseUrl = 'https://api.yourdomain.com';

        // request Modifier to Data Token
        httpClient.addRequestModifier<dynamic>((respone)async{
          final token = await _storageService.getToken();
          if(token != null){
            respone.headers['Authorization'] = "bearer $token";
          }
          return respone;
        });

        // checking status code
        httpClient.addResponseModifier<dynamic>((request, respone)async{
          if(respone.statusCode == 401){
            // Token is invalid and expired
            await _storageService.DeleteToken();
            Get.offAllNamed('/login');

          }
          return respone;
        });
        
        
        
      }

      Future<Response> login() async{
        return post('/jwt_auth/lib', {
              'email' : Icons.email,
              'password' : Icons.password
        });
      }
}
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

// create storageService for store writing and reading from Storage
class StorageService{
    final _storage = FlutterSecureStorage();
    static const _token_key = 'jwt_token';

      // save Token -> for write
      Future<void> saveToken(String token) async{
        await _storage.write(key: _token_key, value: token);
      }

      // Retrive Token -> for read
      Future<String?> getToken()async{
          return _storage.read(key: _token_key);
      }

      // Delete Token -> FOR Token
      Future<String?> DeleteToken()async{
        await _storage.delete(key: _token_key);


      }
 }
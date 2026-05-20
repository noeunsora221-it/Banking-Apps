import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Secure Storage manage
class StorageSecure{
      final _storage = FlutterSecureStorage();
      static const token_key = 'jwt_token';

      // Save Token
      // Retrive Token
      // Delete Token

      Future<void> SaveToken(String token)async{
        await _storage.write(key:_storage.toString(), value: token);
      }


      Future<String?> RetriveToekn()async{
        return _storage.read(key: token_key);
      }


      Future<String?> DeleteToken()async{
        await _storage.delete(key: token_key);
      }



}
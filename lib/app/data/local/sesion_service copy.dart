

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _key = 'session_id';

class SesionService {
  final FlutterSecureStorage _secureStorage;

  SesionService({required FlutterSecureStorage secureStorage}) : _secureStorage = secureStorage;
  


  Future<String?> getSessionID() async{
    final sid = await _secureStorage.read(key: _key);
    return sid;
  }

  Future<void> writeSessionID(String sesionID){
    return _secureStorage.write(key: _key, value: sesionID);

  }

  Future deleteSessionID()  {
    return _secureStorage.delete(key: _key);
  }
}
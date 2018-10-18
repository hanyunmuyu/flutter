import 'package:shared_preferences/shared_preferences.dart';
class Store{
   add(String key,String value) async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }
  get(String key) async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    return sharedPreferences.get(key);
  }
  delete(String key) async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     sharedPreferences.remove(key);
  }
}
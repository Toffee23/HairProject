import 'package:get_storage/get_storage.dart';


abstract class AppStorage{
  static final mybox = GetStorage();

  static const String user_type = "usertype";
  static const String email = "email";

}
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4_namedroutes/LoginPage.dart';
import 'package:flutter_application_4_namedroutes/get_start.dart';
import 'package:flutter_application_4_namedroutes/signupsceen.dart';

import 'app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.getstart:(context) => GetStart(),
      AppRoutes.login:(context) => LoginPage(),
      AppRoutes.signup:(context) => SignUp(),
    };
  }
}

import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/loading_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/pages/users_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> appRoutes() {
  return <String, WidgetBuilder>{
    UsersPage.pageName: (_) => UsersPage(),
    ChatPage.pageName: (_) => ChatPage(),
    LoadingPage.pageName: (_) => LoadingPage(),
    LoginPage.pageName: (_) => LoginPage(),
    RegisterPage.pageName: (_) => RegisterPage(),
  };
}

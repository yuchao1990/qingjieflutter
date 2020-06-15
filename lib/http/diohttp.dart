import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'apiurls/apiurls.dart';

class DioHttp {

  static Dio dio = new Dio(BaseOptions(
    headers: {
      HttpHeaders.acceptHeader: "application/vnd.github.squirrel-girl-preview,"
          "application/vnd.github.symmetra-preview+json",
    },
  ));

  static void init() {
    // 添加缓存插件
    //dio.interceptors.add(Global.netCache);
    // 设置用户token（可能为null，代表未登录）
    //dio.options.headers[HttpHeaders.authorizationHeader] = Global.profile.token;
  }

  // 登录接口，登录成功后返回用户信息
  Future<String> login(String login, String pwd) async {

   var queryParameters= new Map<String, dynamic>();
   queryParameters["username"]=login;
   queryParameters["password"]=pwd;
    var r = await dio.post(ApiUrls.LOGIN,queryParameters:queryParameters);
    return "";
  }

//  //获取用户项目列表
//  Future<List<Repo>> getRepos(
//      {Map<String, dynamic> queryParameters, //query参数，用于接收分页信息
//        refresh = false}) async {
//    if (refresh) {
//      // 列表下拉刷新，需要删除缓存（拦截器中会读取这些信息）
//      _options.extra.addAll({"refresh": true, "list": true});
//    }
//    var r = await dio.get<List>(
//      "user/repos",
//      queryParameters: queryParameters,
//      options: _options,
//    );
//    return r.data.map((e) => Repo.fromJson(e)).toList();
//  }
}

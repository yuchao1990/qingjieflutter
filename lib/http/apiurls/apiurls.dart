class ApiUrls {

  static const bool isTest = false;
  /**
   * 基础环境接口
   */
  static const String APIBASE_URl = isTest ? "http://mozhe.p.day900.com/api/" : "http://139.219.188.148:13078/prod-api/";

  /*
  * 登录接口
  * */
  static const String LOGIN = APIBASE_URl+"login2";

  /*
  * 首页汇总
  * */
  static const String HOME = APIBASE_URl+"bus/infosub/selectInfoHomeSum";

}

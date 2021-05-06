import 'package:dio/dio.dart';

class HttpService{
  Dio _dio;

  //リクルートWEBサービス
  //  https://webservice.recruit.co.jp/doc/hotpepper/

  //API:baseURL　　https://webservice.recruit.co.jp/hotpepper/
  //①グルメサーチAPI
  // gourmet/v1/
  // ?key=e70a489f0c432b68
  // &middle_area=Y005
  // &format=json
  //②中エリアマスタ検索API
  // middle_area/v1/
  // ?key=e70a489f0c432b68
  // &large_area=Z011
  // &format=json


  final baseUrl = "https://webservice.recruit.co.jp/hotpepper/";

  HttpService(){
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,

    ));

    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async{
    Response response;


    try{
      response = await _dio.get(endPoint);

    } on DioError catch(e) {
      print(e.message);
      throw Exception(e.message);

    }

    return response;
  }
  

  initializeInterceptors(){
    _dio.interceptors.add(InterceptorsWrapper(

      onError: (error){
        print(error.message);
      },
      onRequest: (request){
        print("${request.method} ${request.path}");
      },
      onResponse: (response){
        print(response.data);
      }
    ));
  }

}
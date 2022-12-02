import 'package:dio/dio.dart';

import 'package:lesson_27/models/projuct_model.dart';
import 'package:retrofit/http.dart';
part 'post_service.g.dart';

@RestApi(baseUrl: "https://dummyjson.com")
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;
  @GET("/products")
  Future<ProductModel> getApi();
}

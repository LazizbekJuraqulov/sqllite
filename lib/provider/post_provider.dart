import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:lesson_27/services/post_service.dart';

import '../models/projuct_model.dart';

class HomeProvider with ChangeNotifier {
  ProductModel? post;

  HomeProvider() {
    getdata();
  }

  getdata() async {
    dynamic clent = PostApi(Dio(), baseUrl: "https://dummyjson.com");
    post = await clent.getApi();
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

import 'service_class.dart';
import 'data_model.dart';

class DataClass extends ChangeNotifier{
  DataModel? post;
  bool loading = false;

  getPostData() async{
    loading = true;
    post = (await getSinglePostData())!;
    loading = false;
    notifyListeners();
  }
}

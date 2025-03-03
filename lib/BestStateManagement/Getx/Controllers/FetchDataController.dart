import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vativetest/BestStateManagement/Getx/Constants/Constants.dart';
import 'package:vativetest/BestStateManagement/Getx/Models/SeamModel.dart';

class FetchDataController extends GetxController {
  var isLoading = false.obs;
  OpenseaModel? openseaModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.tryParse(
         apiUrl)!);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        openseaModel = OpenseaModel.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}
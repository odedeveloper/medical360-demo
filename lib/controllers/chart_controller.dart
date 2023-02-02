import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class ChartData{
  int x;
  int y;
  ChartData({required this.x, required this.y});
  // List<int> months = [];
  // List<Map<String, Map<String, int>>> newChartData;
}

class ChartController extends GetxController{

  var chartData = <ChartData>[].obs;
  var storage = GetStorage();

  var months = [].obs;
  var data_for_months = <Map<String, int>>[].obs;

  // convert the actual response to chartData array
  // ONLY WORKS FOR 1 DISEASE ---- WILL NEED TO CHANGE LOGIC FOR MORE DISEASES 
  void convertActualDataToChartData(){

      // chartData.value = [];
      // var actualData = storage.read("actualResponse");
      // print(actualData);
      // for(int i = 0; i < actualData.length; i++){
      //   for(var outerKey in actualData[0].keys){
      //     for(var innerKey in actualData[0]![outerKey]!.keys){
      //       chartData.value.add(ChartData(x: int.parse(actualData[0]!.keys.first), y: actualData[0][outerKey]![innerKey]));
      //     }
      //   }
      // }
      // print(chartData.value);
      // chartData.value = chartData.value;

      var actualData = storage.read("actualResponse");
      print(actualData);

      var months = [];
      List<Map<String, int>> data_for_months = [];
      for (dynamic object in actualData){
        months.add(object.keys);
        for(dynamic item in object.values){
          data_for_months.add(item);
        }
      }
  }
}
import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  num? selectedStockModelId;
  String? selectedCriterionId;
  String? selectedVariableSymbol;

  set setSelectedStockId(num? modelId) {
    selectedStockModelId = modelId;
    notifyListeners();
  }

  void selectedCriterionData({String? criterionId, String? variableSymbol}) {
    selectedCriterionId = criterionId;
    selectedVariableSymbol = variableSymbol;
    notifyListeners();
  }

  /// Initialized Data Service instance inside this function as there was only one api call, for multiple api calls better approach is to use a dependency injection like "get it"

  // void getStockMarketDataModelData() async {
  //   final dataServices = DataServices();
  //   try {
  //     apiStatus = ApiStatus.loading;
  //     notifyListeners();
  //     stockMarketDataModelDataList = await dataServices.getJsonData();
  //     apiStatus = ApiStatus.success;
  //     notifyListeners();
  //   } catch (e) {
  //     apiStatus = ApiStatus.failure;
  //     notifyListeners();
  //     throw (Exception(e));
  //   }
  // }
}

extension DataProviderX on DataProvider {
  // Variable? get getVariableData {
  //   Criterion? selectedCriterion = getSelectedStockDataCriterion;
  //   return selectedCriterion?.variable?.firstWhere((variableData) =>
  //       variableData.variableSymbol == selectedVariableSymbol);
  // }

  // StockMarketDataModel? get getSelectedStockData {
  //   return stockMarketDataModelDataList
  //       .firstWhere((stockData) => stockData.id == selectedStockModelId);
  // }

  // Criterion? get getSelectedStockDataCriterion {
  //   StockMarketDataModel? selectedData = getSelectedStockData;
  //   return selectedData?.criteria
  //       ?.firstWhere((element) => element.id == selectedCriterionId);
  // }
}
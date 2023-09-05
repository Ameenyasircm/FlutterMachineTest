import 'package:flutter/cupertino.dart';
import 'package:stockmarket/Models/TabBarModel.dart';
import 'package:stockmarket/Models/portfolioModel.dart';

class MainProvider extends ChangeNotifier{

  List<PortFolio> portfolioList=[];
  List<PortFolio> trendingList=[];
  List<TabBarModel> TabBarModelList=[];

  MainProvider(){
    addPortfolio();
    addTrendingList();
    addTableBarList();
  }
  void addPortfolio(){
    portfolioList.clear();
    portfolioList.add(PortFolio('Google', 'Alphabetic', 'assets/upStockIcon.png', 'assets/google 2.png', '123.51', '-0.09'));
    portfolioList.add(PortFolio('Meta', 'Meta Platform', 'assets/downStock.png', 'assets/fb.png', '281.51', '-20.2'));
    portfolioList.add(PortFolio('Microsoft', 'Microsoft Corporation', 'assets/upStockIcon.png', 'assets/google 2.png', '123.51', '-20.2'));
    notifyListeners();
  }

  void addTrendingList(){
    trendingList.clear();
    trendingList.add(PortFolio('NIKE', 'Nike inc', 'assets/upStockIcon.png', 'assets/google 2.png', '113.51', '-0.50'));
    trendingList.add(PortFolio('ADIDAS', 'Sporty Technology', 'assets/downStock.png', 'assets/adidas.png', '125.51', '-80.2'));
    trendingList.add(PortFolio('APPLE', 'Apple Inc', 'assets/upStockIcon.png', 'assets/apple.png', '452.51', '-99.2'));
    trendingList.add(PortFolio('TESLA', 'Tesla Motors', 'assets/downStock.png', 'assets/tesla.png', '300.51', '-125.2'));
    notifyListeners();
  }
  
  void addTableBarList(){
    TabBarModelList.clear();
    TabBarModelList.add(TabBarModel('Trending', true));
    TabBarModelList.add(TabBarModel('Gainers', false));
    TabBarModelList.add(TabBarModel('Losers', false));
    notifyListeners();
  }

  void selctionFun(int index,String name){
    if(TabBarModelList[index].value){
      TabBarModelList[index].value=false;
    }else{
      TabBarModelList[index].value=true;
    }

    for(var ee in TabBarModelList){
      if(ee.name!=name){
        ee.value=false;
      }
    }
    notifyListeners();
  }
}
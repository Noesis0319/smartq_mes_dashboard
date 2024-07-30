
import '../BaseProvider.dart';

class SearchableDialogProvider<T> extends BaseProvider{
  List<T>? items;

  void setItemList({required List<T> items}){
    this.items = items;
    notifyListeners();
  }
}
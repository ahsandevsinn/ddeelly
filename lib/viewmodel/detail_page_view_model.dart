import 'package:ddeelly/core/imports/imports.dart';

class DetailPageViewModel extends ChangeNotifier {
  final List<String> countries = [
    "Pakistan",
    "India",
    "Bangladesh",
    "Nepal",
    "Sri Lanka",
    "China",
    "Japan",
    "South Korea",
    "United States",
    "Canada",
    "United Kingdom",
    "Germany",
    "France",
    "Italy",
    "Spain",
    "Australia",
    "New Zealand",
    "Saudi Arabia",
    "United Arab Emirates",
    "Turkey",
  ];

  String? selectedValue;
  selectedDropDownValue(String? value) {
    selectedValue = value;
    notifyListeners();
  }

  int _quantity = 2;
  int get quantity => _quantity;
  double _itemPrice = 20.0;
  double get totalFee => _quantity * _itemPrice;

  increment() {
    _quantity++;
    notifyListeners();
  }

  decrement() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }
}

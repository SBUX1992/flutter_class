import '../models/product.dart';

class ProductListViewModel {
  // 샘플 데이터 --> view_model로 옮길 예정
  List<Product> _productList =
      List.generate(10, (index) => Product("p_${index}", "상품_${index}", 1000));

  List<Product> get products => _productList;
}

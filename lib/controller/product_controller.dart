import 'package:api2/controller/product_repository.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ProductRepository productRepository = ProductRepository();
  RxBool loading = false.obs;
  List products = [].obs;
  var showGrid = false.obs;

  ProductController() {
    loadProductsFromAPi();
  }

  loadProductsFromAPi() async {
    loading(true);
    products = await productRepository.loadProductFromApi();
    loading(false);
  }

  toggleGrid() {
    showGrid(!showGrid.value);
  }
}

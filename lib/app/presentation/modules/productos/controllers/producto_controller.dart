import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../states/state_notifier.dart';
import 'state/product_state.dart';

class ProductoController extends StateNotifier<ProductState> {
  ProductoController() : super(ProductState());

  // Método para cargar productos desde la API
  Future<void> loadProducts() async {
    try {
      print('Cargando productos... 😎');

      // 1. Actualizar el estado para reflejar que la carga está en progreso
      changeState(state.copyWith(isLoading: true));

      // 2. Realizar la solicitud a la API
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        print('Todo ok ✔✔✔');

        // 3. Parsear la respuesta JSON
        List<dynamic> jsonData = json.decode(response.body);

        // 4. Convertir la lista de JSON en una lista de ProductState
        List<ProductState> products = jsonData.map((item) {
          return ProductState.fromJson(item);
        }).toList();

        // 5. Actualizar el estado con los productos cargados
        notifica(state.copyWith(
          products: products,
          isLoading: false,
        ));
      } else {
        throw Exception('Error al cargar los productos');
      }
    } catch (e) {
      // 6. Manejar errores y actualizar el estado
      notifica(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/widgets/custom_app_bar.dart';
import '../../../global/widgets/drawer_widget.dart';
import '../../../mixin/controllers_mixin.dart';
import '../../../routes/route_path.dart';
import '../controllers/producto_controller.dart';

class ProductScreen extends StatelessWidget with ControllersMixin {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productoController = getProductoController(context);
    // Llamar a loadProducts para cargar los productos
    productoController.loadProducts();

    return Scaffold(
      appBar: const CustomAppBar(
        title: RoutePath.productos,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          // Esta parte de la UI se actualizará automáticamente cuando el estado cambie
          Consumer<ProductoController>(
            builder: (context, controller, child) {
              final productState = controller.state;

              if (productState.isLoading) {
                return const Text('Cargando productos... 😎');
              } else if (productState.errorMessage != null) {
                return Text('Error: ${productState.errorMessage}');
              } else {
                return Text(
                    'Productos cargados: ${productState.products.length}');
              }
            },
          ),
          Expanded(
            child: Consumer<ProductoController>(
              builder: (context, controller, child) {
                final productState = controller.state;

                if (productState.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (productState.errorMessage != null) {
                  return Center(child: Text(productState.errorMessage!));
                } else {
                  return ListView.builder(
                    itemCount: productState.products.length,
                    itemBuilder: (context, index) {
                      final product = productState.products[index];
                      return ListTile(
                        title: Text(product.title ?? 'Producto sin título'),
                        subtitle: Text(
                            'Precio: \$${product.price?.toStringAsFixed(2)}'),
                        leading: Image.network(product.image ?? ''),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

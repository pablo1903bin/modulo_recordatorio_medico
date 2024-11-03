class ProductoState {
  int? id;
  String? nombre;
  double? precio;
  String? categoria;

  ProductoState(
      {this.id, required this.nombre, required this.precio, this.categoria});
//Constructor nombrado
  ProductoState.create(
      {required this.nombre, required this.precio, this.categoria});

  @override
  String toString() {
    return 'nombre: $nombre, precio: $precio, categoria: $categoria';
  }
}

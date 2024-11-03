class ProductState {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  final List<ProductState> products;
  final bool isLoading;
  final String? errorMessage;

  ProductState({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
    this.products = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  factory ProductState.fromJson(Map<String, dynamic> json) {
    return ProductState(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating?.toJson(),
    };
  }

  ProductState copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
    List<ProductState>? products,
    bool? isLoading,
    String? errorMessage,
  }) {
    return ProductState(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    // Convertimos la lista de productos a un String legible
    final productsString =
        products.map((product) => product.toString()).join(', ');

    return 'ProductState(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating, isLoading: $isLoading, errorMessage: $errorMessage, products: [$productsString])';
  }
}

class Rating {
  final double? rate;
  final int? count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toDouble(),
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  @override
  String toString() {
    return 'Rating(rate: $rate, count: $count)';
  }
}

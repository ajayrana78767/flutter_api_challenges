class ProductModel {
  List<Product> products;
  int total;
  int skip;
  int limit;
  ProductModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      products:
          List<Product>.from(
            json["products"].map((e) => Product.fromJson(e)),
          ).toList(),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "products": List<dynamic>.from(products.map((e) => e.toJson())),
      "total": total,
      "skip": skip,
      "limit": limit,
    };
  }
}

class Product {
  int id;
  String title;
  String description;
  String category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<String> tags;
  String brand;
  String sku;
  int weight;
  Dimensions dimensions;
  String warrantyInformation;
  String shippingInformation;
  String availabilityStatus;
  List<Review> reviews;
  String returnPolicy;
  int minimumOrderQuantity;
  Meta meta;
  List<String> images;
  String thumbnail;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      discountPercentage: json['discountPercentage'],
      rating: json['rating'],
      stock: json['stock'],
      tags: List<String>.from(json['tags'].map((e) => e)),
      brand: json['brand'],
      sku: json['sku'],
      weight: json['weight'],
      dimensions: Dimensions.fromJson(json['dimensions']),
      warrantyInformation: json['warrantyInformation'],
      shippingInformation: json['shippingInformation'],
      availabilityStatus: json['availabilityStatus'],
      reviews: List<Review>.from(
        json["reviews"].map((e) => Review.fromJson(e)),
      ),

      returnPolicy: json['returnPolicy'],
      minimumOrderQuantity: json['minimumOrderQuantity'],
      meta: Meta.fromJson(json['meta']),
      images: List<String>.from(json['images'].map((e) => e)),
      thumbnail: json['thumbnail'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'tags': List<String>.from(tags.map((e) => e)),
      "brand": brand,
      "sku": sku,
      "weight": weight,
      'dimensions': Dimensions,
      "warrantyInformation": warrantyInformation,
      "shippingInformation": shippingInformation,
      "availabilityStatus": availabilityStatus,
      "reviews": List<String>.from(reviews.map((x) => x.toJson())),
      "returnPolicy": returnPolicy,
      "minimumOrderQuantity": minimumOrderQuantity,
      "meta": meta.toJson(),
      "images": List<StringBuffer>.from(images.map((x) => x)),
      "thumbnail": thumbnail,
    };
  }
}

class Dimensions {
  double width;
  double height;
  double depth;
  Dimensions({required this.width, required this.height, required this.depth});
  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      width: json['width'] ?? 0.0,
      height: json['height'] ?? 0.0,
      depth: json['depth'] ?? 0.0,
    );
  }
  Map<String, double> toJson() {
    return {'width': width, 'height': height, 'depth': depth};
  }
}

class Review {
  int rating;
  String comment;
  String date;
  String reviewerName;
  String reviewerEmail;
  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });
  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      rating: json['rating'],
      comment: json['comment'],
      date: json['date'],
      reviewerName: json['reviewerName'],
      reviewerEmail: json['reviewerEmail'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'rating': rating,
      'comment': comment,
      'date': date,
      'reviewerName': reviewerName,
      'reviewerEmail': reviewerEmail,
    };
  }
}

class Meta {
  String createdAt;
  String updatedAt;
  String barcode;
  String qrCode;
  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      barcode: json['barcode'],
      qrCode: json['qrCode'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'barcode': barcode,
      'qrCode': qrCode,
    };
  }
}

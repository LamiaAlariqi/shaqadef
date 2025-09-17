// import 'package:cloud_firestore/cloud_firestore.dart';

// class ProductModel {
//   final String? id; // معرف المنتج
//   final String? productName; // اسم المنتج
//   final String? productImage; // صورة المنتج
//   final List<String>? productMImages; // قائمة صور متعددة
//   final String? productDesc; // وصف المنتج
//   final String? duration; // مدة الصلاحية
//   final double? productPrice; // سعر المنتج
//   final String? location; // موقع المنتج
//   final String? productType; // نوع المنتج

//   ProductModel({
//     required this.id,
//     required this.productName,
//     required this.productImage,
//     required this.productMImages,
//     required this.productDesc,
//     required this.duration,
//     required this.productPrice,
//     required this.location,
//     required this.productType,
//   });

//   factory ProductModel.fromFirestore(DocumentSnapshot docs) {
//     Map<String, dynamic> data = docs.data() as Map<String, dynamic>;

//     return ProductModel(
//       id: docs.id,
//       productName: data['name'] ?? '',
//       productImage: data['imageUrl'] ?? '',
//       productMImages: List<String>.from(data['productMImages'] ?? []),
//       productDesc: data['description'] ?? '',
//       duration: data['duration'] ?? '',
//       productPrice: (data['price'] ?? 0).toDouble(),
//       location: data['location'] ?? '',
//       productType: data['productType'] ?? '',
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'name': productName,
//       'imageUrl': productImage,
//       'productMImages': productMImages,
//       'description': productDesc,
//       'duration': duration,
//       'price': productPrice,
//       'location': location,
//       'productType': productType,
//     };
//   }
// }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:shaqadef/models/product_Model.dart';
// class ProductService{
//   CollectionReference Products= FirebaseFirestore.instance.collection('Products');
// Future<String> addProduct({
//     required String? productName,
//     final String? productImage,
//     final List? productMImages,
//     final String? producrDesc,
//     final String? duration,
//     final double?  productprice ,
//     final String? location,
//     final String? producttype,
//   }) async {
//     try {
//       DocumentReference docRef = await Products.add({
//         'ProductName': productName,
//         'ProductImages': productImage,
//         'ProductMimages': productMImages,
//         'ProductDesc': producrDesc,
//         'Duration': duration,
//         'ProductPrice': productprice,
//         'Location': location,
//         'ProductType': producttype,
//       });

//       print("Product Added with ID: ${docRef.id}");
//       return docRef.id;
//     } catch (error) {
//       print("Failed to add product: $error");
//       return ''; 
//     }
//   }
//   //  Future<List<ProductModel>> getAllProducts() async {
//   //   List<QueryDocumentSnapshot> data = [];
//   //   List<ProductModel> productsList = [];
    
//   //   QuerySnapshot querySnapshot = await Products
//   //       .orderBy('ProductName', descending: true) 
//   //       .get();
    
//   //   data.addAll(querySnapshot.docs);
//   //   for (var element in data) {
//   //     productsList.add(ProductModel.fromFirestore(element));
//   //   }
//   //   return productsList;
//   // }
// }
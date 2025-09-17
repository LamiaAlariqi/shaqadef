class Product {
  final String productimage;       
  final String productdescription;
  final String productname;        
  final String productlocation;   
  final double productprice;     
  final String producttype;      
  final String pricetype;         
  final String duration;          
  final String status;           
  final String notes;             
  final int quantity;              
  final List<String> imagesPaths; 

  Product({
    required this.productimage,
    required this.productdescription,
    required this.productname,
    required this.productlocation,
    required this.productprice,
    required this.producttype,
    required this.pricetype,
    required this.duration,
    required this.status,
    required this.notes,
    required this.quantity,
    required this.imagesPaths,
  });
}

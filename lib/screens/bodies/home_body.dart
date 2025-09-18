import 'package:flutter/material.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/usedwidget/carosalSlider.dart';
import 'package:shaqadef/widget/usedwidget/gridviewbuilder.dart';
import 'package:shaqadef/widget/usedwidget/stack.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  

  @override
  Widget build(BuildContext context) {
  
  List<Product> products = [
 Product(
  productimage: Images.ref1,
  productname: "ثلاجة سامسونج",
  productprice: 1200.0,
  productdescription: "ثلاجة سامسونج سعة 18 قدم بحالة ممتازة وتبريد سريع.",
  productlocation: "اليمن - صنعاء",
  producttype: "أجهزة كهربائية",
  pricetype: "دولار",
  duration: "3 سنوات",
  status: "شغال",
  notes: "تعمل بكفاءة عالية وخالية من الأعطال.",
  quantity: 1,
  imagesPaths: [],
),

  Product(
    productimage: Images.modern,
    productname: "ماكينة خياطة",
    productprice: 150.0,
    productdescription: "ماكينة خياطة حديثة للخياطة المنزلية والمهنية.",
    productlocation: "اليمن - تعز",
    producttype: "أدوات منزلية",
    pricetype: "دولار",
    duration: "اقل من سنة",
    status: "شغال",
    notes: "مع جميع الملحقات الأصلية.",
    quantity: 2,
    imagesPaths: [],
  ),
  Product(
    productimage: Images.cream,
    productname: "ادوات تجميل",
    productprice: 300.0,
    productdescription: "غسالة أوتوماتيك سعة 7 كيلو بحالة ممتازة.",
    productlocation: "اليمن - عدن",
    producttype: "أجهزة كهربائية",
    pricetype: "ريال سعودي",
    duration: "سنتين",
    status: "شغال",
    notes: "تم استخدامها بعناية، شبه جديدة.",
    quantity: 1,
    imagesPaths: [],
  ),
  // ثلاجة كبيرة
Product(
  productimage: Images.ref2,
  productname: "ثلاجة Trumax" ,
  productprice: 2200.0,
  productdescription: "ثلاجة كبيرة سعة 20 قدم، تصميم حديث مع نظام تبريد متطور للحفاظ على الأطعمة طازجة لفترة أطول.",
  productlocation: "اليمن - صنعاء",
  producttype: "أجهزة كهربائية",
  pricetype: "ريال سعودي",
  duration: "5 سنوات",
  status: "شغال",
  notes: "شبه جديدة، لم تُستخدم إلا لفترة قصيرة.",
  quantity: 1,
  imagesPaths: [],
),
Product(
  productimage: Images.ref2,
  productname: "ثلاجة Trumax" ,
  productprice: 2200.0,
  productdescription: "ثلاجة كبيرة سعة 20 قدم، تصميم حديث مع نظام تبريد متطور للحفاظ على الأطعمة طازجة لفترة أطول.",
  productlocation: "اليمن - صنعاء",
  producttype: "أجهزة كهربائية",
  pricetype: "ريال سعودي",
  duration: "5 سنوات",
  status: "شغال",
  notes: "شبه جديدة، لم تُستخدم إلا لفترة قصيرة.",
  quantity: 1,
  imagesPaths: [],
),
// عطر
Product(
  productimage: Images.perf, 
  productname: "عطر فرنسي فاخر",
  productprice: 250.0,
  productdescription: "عطر فرنسي أصلي برائحة منعشة وثابتة تدوم طويلًا، مناسب لجميع الأوقات.",
  productlocation: "اليمن - تعز",
  producttype: "منتجات عناية شخصية",
  pricetype: "ريال سعودي",
  duration: "دائم",
  status: "جديد",
  notes: "سعة 100 مل، لم يُستخدم من قبل.",
  quantity: 1,
  imagesPaths: [],
),

  Product(
  productimage: Images.ref1,
  productname: "ثلاجة سامسونج",
  productprice: 1200.0,
  productdescription: "ثلاجة سامسونج سعة 18 قدم بحالة ممتازة وتبريد سريع.",
  productlocation: "اليمن - صنعاء",
  producttype: "أجهزة كهربائية",
  pricetype: "دولار",
  duration: "3 سنوات",
  status: "شغال",
  notes: "تعمل بكفاءة عالية وخالية من الأعطال.",
  quantity: 1,
  imagesPaths: [],
),

  Product(
    productimage: Images.modern,
    productname: "ماكينة خياطة",
    productprice: 150.0,
    productdescription: "ماكينة خياطة حديثة للخياطة المنزلية والمهنية.",
    productlocation: "اليمن - تعز",
    producttype: "أدوات منزلية",
    pricetype: "دولار",
    duration: "اقل من سنة",
    status: "شغال",
    notes: "مع جميع الملحقات الأصلية.",
    quantity: 2,
    imagesPaths: [],
  ),
  Product(
    productimage: Images.cream,
    productname: "ادوات تجميل",
    productprice: 300.0,
    productdescription: "غسالة أوتوماتيك سعة 7 كيلو بحالة ممتازة.",
    productlocation: "اليمن - عدن",
    producttype: "أجهزة كهربائية",
    pricetype: "ريال سعودي",
    duration: "سنتين",
    status: "شغال",
    notes: "تم استخدامها بعناية، شبه جديدة.",
    quantity: 1,
    imagesPaths: [],
  ),
];

                return ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: hScreen * 0.02, horizontal: wScreen * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          StackOrder(
                            image: Images.scrap,
                            text: "     الخردوات",
                            onTap: () {
                              Navigator.of(context).pushNamed(Routes.scrapsScreen);
                            },
                          ),
                          StackOrder(
                            image: Images.scrap,
                            text: "الادوات المستخدمة",
                            onTap: () {
                              Navigator.of(context).pushNamed(Routes.usedTools);
                            },
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " الإعلانات ",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textDirection: TextDirection.rtl,
                    ),
                    CarosalSlider(
                      images: const [Images.kurimi, Images.sellandbuy],
                      texts: const [
                        "خدمات البطاقة\n الذكية من بنك\n الكريمي",
                        "استمتع بتجربة \n بيع و شراء\n  وفريدة "
                      ],
                      onPressed: () {},
                      buttonheigt: hScreen * 0.04,
                      buttonwidth: wScreen * 0.3,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      " احدث المنتجات",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height:hScreen*0.01 ),
                    Padding(
                      padding:  EdgeInsets.all(hScreen*0.01),
                      child: CustomGridViewBuilder(
                        products: products, 
                        onTap: (product) {
                          print('تم الضغط على: ${product.productname}');
                          Navigator.of(context).pushNamed(Routes.productDetails, arguments: product);
                        },
                      ),
                    ),
                    const SizedBox(height: 50),
                    CarosalSlider(
                      images: [Images.modern, Images.scrap],
                      texts: const ["مجموعة من \n الادوات المستخدمة", "ادوات مستخدمة \nوجديدة"],
                      onPressed: () {},
                      buttonheigt: hScreen * 0.04,
                      buttonwidth: wScreen * 0.3,
                    ),
                    const SizedBox(height: 30),
                  ],
                );
              }
}
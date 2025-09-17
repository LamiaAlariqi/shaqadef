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
                    const SizedBox(height: 10),
                    // CustomGridViewBuilder(
                    //   products: products, 
                    //   onTap: (product) {
                    //     print('تم الضغط على: ${product.productname}');
                    //     Navigator.of(context).pushNamed(Routes.ProductDetails, arguments: product);
                    //   },
                    // ),
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
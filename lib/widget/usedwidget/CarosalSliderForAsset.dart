import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_elevator_buttom.dart';

class CarosalSliderAsset extends StatefulWidget {
  const CarosalSliderAsset({
    super.key,
    required this.images,
    required this.texts,
    required this.onPressed,
    required this.buttonheigt,
    required this.buttonwidth,
    this.isEnabled = true,
    this.fit = BoxFit.fill,
    this.color,
  });

  final List<String> images; // قائمة من المسارات
  final List<String> texts;
  final void Function() onPressed;
  final double buttonheigt;
  final double buttonwidth;
  final bool isEnabled;
  final BoxFit fit;
  final Color? color;

  @override
  State<CarosalSliderAsset> createState() => _CarosalSliderAssetState();
}

class _CarosalSliderAssetState extends State<CarosalSliderAsset> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: hScreen * 0.01, horizontal: wScreen * 0.055),
      height: hScreen * 0.25,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(widget.images.length, (index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: widget.color,
                      ),
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        widget.images[index], // استخدم Image.asset لعرض الصور من الأصول
                        fit: widget.fit,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.2),
                      ),
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    if (widget.isEnabled)
                      Positioned(
                        bottom: hScreen * 0.03,
                        left: wScreen * 0.05,
                        child: CustomElevatorButtom(
                          icon: Icons.arrow_back,
                          text: "عرض المزيد",
                          onPressed: widget.onPressed,
                          width: widget.buttonwidth,
                          height: widget.buttonheigt,
                        ),
                      ),
                    if (widget.isEnabled)
                      Positioned(
                        bottom: hScreen * 0.1,
                        left: wScreen * 0.05,
                        child: Container(
                          width: wScreen * 0.8,
                          child: Text(
                            widget.texts[index],
                            style: TextStyle(color: appWhite, fontFamily: Fonts.kfont1),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
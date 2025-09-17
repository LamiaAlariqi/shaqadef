import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';

class BottomNavigator extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigator({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.add, 
    Icons.person,
    Icons.menu,
  ];

  final List<String> _labels = [
    'الرئيسية',
    'بحث',
    'اضافة',
    'حسابي',
    'المزيد',
  ];

  @override
  Widget build(BuildContext context) {
    double wScreen = MediaQuery.of(context).size.width;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: List.generate(_icons.length, (index) {
        bool isSelected = currentIndex == index;

     
        if (index == 2) {
          return BottomNavigationBarItem(
            icon: Container(
              width: wScreen * 0.10, 
              height: wScreen * 0.10,
              decoration: BoxDecoration(
                color: PrimaryColor,  
                shape: BoxShape.circle,
              ),
              child: Icon(
                _icons[index],
                color: Colors.white,
                size: wScreen * 0.075, 
              ),
            ),
            label: _labels[index],
          );
        }

        // باقي الأزرار
        return BottomNavigationBarItem(
          icon: Icon(
            _icons[index],
            color: isSelected ? PrimaryColor : homeiconcolor,
            size: isSelected ? wScreen * 0.06 : wScreen * 0.045,
          ),
          label: _labels[index],
        );
      }),
    );
  }
}

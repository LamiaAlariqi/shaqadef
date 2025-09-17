import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customTextfield/textfield_to_read.dart';
import 'package:shaqadef/widget/usedwidget/continer_for_form.dart';
import 'package:shaqadef/widget/usedwidget/singleimagepicker.dart';

class PurchaseBody extends StatelessWidget {
  const PurchaseBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return ListView(
      children:[ 
        ContinerForForm(
          margin: EdgeInsets.only(right: wScreen*0.07,left:wScreen*0.07 ,top:hScreen*0.03),
          child:
        Padding(
        padding: EdgeInsets.all(hScreen*0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "بيانات العميل", color: appTextColorPrimary, size: fSize*0.8),
            SizedBox(height: hScreen*0.01,),
            TextFieldToRead(initialValue: ''),
             SizedBox(height: hScreen*0.01,),
             Divider(color:Colors.grey.withOpacity(0.5)),
              CustomText(text: "بيانات الطلب", color: appTextColorPrimary, size: fSize*0.8),
            SizedBox(height: hScreen*0.01,),
            TextFieldToRead(initialValue: ''),
             SizedBox(height: hScreen*0.01,),
             Divider(color:Colors.grey.withOpacity(0.5)),
             SizedBox(height: hScreen*0.001,),
              CustomText(text: "ادخل رقم حسابك بالعملة المماثلة لعملة الدفع", color: appTextColorPrimary, size: fSize*0.8),
               SizedBox(height: hScreen*0.02,),
              CustomTextFormFieldToLogin(hintText: "رقم الحساب", suffixIcon: Icons.account_balance_wallet_outlined, obscureText: false, keyboardType: TextInputType.number, enabledBorderColor: Colors.grey.withOpacity(0.5), focusedBorderColor:PrimaryColor, controller:controller,width: 1,fsize: fSize*0.75,),
               SizedBox(height: hScreen*0.05,),
              Divider(color:Colors.grey.withOpacity(0.5)),
              SizedBox(height: hScreen*0.01,),
               CustomText(text: "اسناد صورة الفاتورة", color: appTextColorPrimary, size: fSize*0.8),
                SizedBox(height: hScreen*0.03,),
               CustomSingleImagePicker(onImagePicked: (st){},hintText: "صورة",),
                
          ],
        ),
      )),
       Padding(
         padding: EdgeInsets.symmetric(horizontal: wScreen*0.3,vertical: hScreen*0.05),
         child: CustomMaterialButton(title: "تاكيد الشراء", vertical: hScreen*0.01, buttonColor: PrimaryColor, textColor: appWhite, borderWidth: 1, borderColor: PrimaryColor, height: hScreen*0.05, width:wScreen*0.02,textsize: fSize*0.86,onPressed: (){
          _showSnackbar(context,"تم تاكيد الشراء ");
         
         },),
       )]
    );
  }
     void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
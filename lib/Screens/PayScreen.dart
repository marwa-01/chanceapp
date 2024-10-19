import 'package:chanceapp/CompanyScreens/HomeScreen.dart';
import 'package:chanceapp/UI%20Components/CenterAppBar.dart';
import 'package:flutter/material.dart';

import '../Core/App_theme.dart';
import '../UI Components/BuildText.dart';
import '../UI Components/Button.dart';
import '../UI Components/textFieldWithoutIcon.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {

  String _paymentMethod = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor, title: centerAppBar("فرصتك في يدك")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 18),
        child: ListView(
          children:[
            Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: buildTextTitle(
                          "الاسم الاول",
                          14,
                          FontWeight.bold,
                        ),
                      ),
                      textFieldWithoutIcon("الاسم الاول", 45, 170),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: buildTextTitle(
                          "الاسم الاخير",
                          14,
                          FontWeight.bold,
                        ),
                      ),
                      textFieldWithoutIcon("الاسم الاخير", 45, 170),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, right: 20),
                    child: buildTextTitle(
                      "الايميل",
                      14,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textFieldWithoutIcon("example@gmail.com", 45, 360),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, right: 20),
                    child: buildTextTitle(
                      "رقم الهاتف",
                      14,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textFieldWithoutIcon("0000000 218+ ", 45, 360),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, right: 20),
                    child: buildTextTitle(
                      "تاريخ الميلاد",
                      14,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textFieldWithoutIcon("0000/00/00", 45, 360),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, right: 20),
                    child: buildTextTitle(
                      "المدينة",
                      14,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textFieldWithoutIcon("اسم المدينة", 45, 360),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, right: 20),
                    child: buildTextTitle(
                      "عنوان السكن",
                      14,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textFieldWithoutIcon("المنطقة - الشارع", 45, 360),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child:
                        buildTextTitle("حدد طريقة الدفع", 16, FontWeight.bold)),
              ),
              const SizedBox(height: 10,),
             RadioTheme(
            data: RadioThemeData(
              fillColor: WidgetStateProperty.resolveWith<Color>(
                    (states) {
                  if (states.contains(WidgetState.selected)) {
                    return secondaryColor;
                  }
                  return borderColor;
                },
              ),),child:
              Column(
                children: [
                  ListTile(
                    title: buildTextTitle('دفع بالبطاقة', 14, FontWeight.normal),
                    leading: Radio<String>(
                      value: 'بالبطاقة',
                      groupValue: _paymentMethod,
                      onChanged: (value) {
                        setState(() {});
                        _paymentMethod = value??"";
                      },
                    ),
                  ),
              ListTile(
                title: buildTextTitle('دفع نقدي', 14, FontWeight.normal),
                leading: Radio<String>(
                  value: 'نقدي',
                  groupValue: _paymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _paymentMethod = value??"";
                    });
                  },
                ),
              ),
                ],
              ),
             ),
              const SizedBox(height: 20,),
              button("الدفع",context,CHomeScreen(),null),
            ],
          ),
      ]
        ),
      ),
    );
  }
}
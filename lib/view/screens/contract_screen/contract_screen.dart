import 'package:efood_multivendor/view/base/custom_app_bar.dart';
import 'package:efood_multivendor/view/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu_button/menu_button.dart';

import '../../../helper/route_helper.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({Key key}) : super(key: key);

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  int select = 0;
  String valueSelected = 'نوع التعاقد';
  bool isSelected = false;
  String selectValue = '';
  String selectedKey = '';

  List<String> keys = <String>[
    'Low',
    'Medium',
    'High',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "التعاقد مع التطبيق",
        isBackButtonExist: true,
        onBackPressed: () {},
        showCart: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     children: [
              //       Row(
              //         children: <Widget>[
              //           new DropdownButton<String>(
              //             elevation: 2,
              //             hint: Text(value),
              //             items: listDropexpensetype
              //                 .map<DropdownMenuItem<String>>(
              //                     (value) => new DropdownMenuItem<String>(
              //                           value: value,
              //                           child: new Text(value.toString()),
              //                         ))
              //                 .toList(),
              //             onChanged: (value) {
              //               setState(
              //                 () {
              //                   this.value = value;
              //                   isSelected = true;
              //                   selectValue = value;
              //                 },
              //               );
              //             },
              //           )
              //         ],
              //       ),
              //       SizedBox(
              //         width: 22,
              //       ),
              //       isSelected == true
              //           ? Row(
              //               children: <Widget>[
              //                 new DropdownButton<String>(
              //                   value: selectValue,
              //                   items: listDropexpensetype
              //                       .map<DropdownMenuItem<String>>(
              //                           (value) => new DropdownMenuItem<String>(
              //                                 value: value,
              //                                 child: new Text(value),
              //                               ))
              //                       .toList(),
              //                   onChanged: (_) {},
              //                 )
              //               ],
              //             )
              //           : SizedBox(),
              //     ],
              //   ),
              // ),
              Center(
                child: MenuButton<String>(
                  child: SizedBox(
                    width: 120,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                              child: Text(
                            valueSelected,
                            overflow: TextOverflow.ellipsis,
                          )),
                          const SizedBox(
                            width: 12,
                            height: 17,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  items: listDropexpensetype,
                  itemBuilder: (String value) => Container(
                    height: 40,
                    alignment: Alignment.topRight,
                    child: Text(value),
                  ),
                  toggledChild: Container(
                    child: SizedBox(
                      width: 93,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                                child: Text(
                              valueSelected,
                            )),
                            const SizedBox(
                              width: 12,
                              height: 17,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onItemSelected: (String value) {
                    setState(() {
                      valueSelected = value;
                    });
                    if (valueSelected == 'توريد') {
                      showMemberMenu(sublistDropexpensetype);
                      if(sublistDropexpensetype[0]=="توريد اعلاف"){
                        setState(() {
                          valueSelected=sublistDropexpensetype[0];
                        });
                      }
                    } else if (valueSelected == 'منتج او خدمه') {
                      showSubMemberMenu(sublistDropexpense);
                    }
                  },
                  onMenuButtonToggle: (bool isToggle) {},
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text("الاسم بالكامل", style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  onChanged: (v) {},
                  hintText: "الاسم بالكامل",
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text("العنوان بالتفصيل", style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  onChanged: (v) {},
                  hintText: "العنوان بالتفصيل",
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text("رقم التواصل", style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  onChanged: (v) {},
                  hintText: "رقم التواصل",
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text("اسم النشأه", style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  onChanged: (v) {},
                  hintText: "اسم المنشأه",
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      value: true,
                      onChanged: (v) {
                        setState(() {
                          v = true;
                        });
                      }),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.html);
                    },
                    child: Text(
                      "شروط التعاقد",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFEF7822),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor),
                      child: Text(
                        "ارسال التعاقد",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                    "بعد إرسال بيانات التعاقد سيتم التواصل معاكم خلال ٤٨ ساعه",
                    style: TextStyle(
                        fontSize: 15, color: Theme.of(context).primaryColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> listDropexpensetype = ['توريد', 'منتج او خدمه', 'رعاه', 'اعلان'];
  List<String> sublistDropexpensetype = [
    'توريد اعلاف ',
    'توريد سلاله',
    'توريد ادويه',
    'توريد مستلزمات'
  ];
  List<String> sublistDropexpense = [
    'ايدى عامله',
    'عنابر و مزارع',
    'بنك معلومات',
  ];

  void showMemberMenu(List<String> sublistDropexpensetype) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(200, 150, 100, 100),
      items: [
        PopupMenuItem(
          value: 1,
          child: Text(
            sublistDropexpensetype[0],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            sublistDropexpensetype[1],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            sublistDropexpensetype[2],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: Text(
            sublistDropexpensetype[3],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) print(value);
    });
  }

  void showSubMemberMenu(List<String> sublistDropexpensetype) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(200, 150, 100, 100),
      items: [
        PopupMenuItem(
          value: 1,
          child: Text(
            sublistDropexpensetype[0],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            sublistDropexpensetype[1],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            sublistDropexpensetype[2],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) print(value);
    });
  }
}

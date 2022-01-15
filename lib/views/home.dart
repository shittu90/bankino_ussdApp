import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ussd_app/helpers/bank_details.dart';
import 'package:ussd_app/helpers/bank_list.dart';
import 'package:ussd_app/views/uba.dart';
import 'package:ussd_app/views/zenith.dart';

import 'access.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Text("Bankino"),
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 30, top: 50),
              height: 80,
              child: Text(
                "USSD App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),*/
            Container(
              color: Colors.amber,
              height: 250,
              child: Carousel(
                images: [
                  Image.asset(
                    'images/208058.png',
                    scale: 2,
                  ),
                  Image.asset('images/accesslogo.png', scale: 8),
                  Image.asset('images/stanbic.png', scale: 6),
                  Image.asset('images/Wema-Bank-Logo.png', scale: 15),
                  Image.asset('images/sterlinglogo.png', scale: 1.8),
                  Image.asset('images/fidelity.png', scale: 15),
                ],
                boxFit: BoxFit.scaleDown,
                dotBgColor: Colors.amber,
                dotColor: Colors.grey,
                dotIncreasedColor: Colors.white,
                dotIncreaseSize: 1.2,
                borderRadius: true,
              ),
            ),
            Container(
              height: 1400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: buildListView(),
              ),
            )

            /*Container(
              child: buildListView(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                color: Color(0xFF212121),
              ),
              height: 300,
            ),*/
          ],
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: bankList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => banksPage[index]));
            },
            child: Card(
              child: ListTile(
                title: Text('${bankList[index].bankName}',
                    style: TextStyle(color: Colors.black)),
                leading: Image.asset(
                  'images/${bankList[index].bankLogo}',
                  height: 50,
                  width: 50,
                ),
                trailing: Icon(
                  Icons.forward,
                  color: Colors.black,
                ),
                subtitle: Text(
                  "${bankList[index].ussdMenu}",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_app/helpers/bank_list.dart';

import 'dialog_box1.dart';

class FirstBank extends StatefulWidget {
  const FirstBank({Key? key}) : super(key: key);

  @override
  _ZenithBank createState() => _ZenithBank();
}

class _ZenithBank extends State<FirstBank> {
  final formKey = GlobalKey<FormState>();
  TextEditingController amountTextEditingController = TextEditingController();
  TextEditingController phoneNumberTexEditingController =
      TextEditingController();
  TextEditingController accountNumberTextEditingController =
      TextEditingController();
  TextEditingController rechargeAmountTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Text("First Bank"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: firstTransactionList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (firstTransactionList[index].inputType == 'balance') {
                  FlutterPhoneDirectCaller.callNumber(
                      '${firstTransactionList[index].transactionUssd}');
                } else if (firstTransactionList[index].inputType ==
                    'customer') {
                  FlutterPhoneDirectCaller.callNumber(
                      '${firstTransactionList[index].transactionUssd}');
                } else if (firstTransactionList[index].inputType == '0') {
                  FlutterPhoneDirectCaller.callNumber(
                      '${firstTransactionList[index].transactionUssd}');
                } else {
                  openDialog(index);
                }
              },
              child: Card(
                color: Color(0xFF545454),
                child: ListTile(
                  title: Text('${firstTransactionList[index].transactionName}',
                      style: TextStyle(color: Colors.white)),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/firstavatar.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  trailing: Icon(
                    Icons.phone_in_talk,
                    color: Colors.white,
                  ),
                  subtitle: Text(
                    "${firstTransactionList[index].bankUssd}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Future openDialog(index) async => showDialog(
        barrierDismissible: false,
        useSafeArea: true,
        context: context,
        builder: (context) => AlertDialog(
          title: Text('${firstTransactionList[index].transactionName}'),
          content: showDialogTextField(firstTransactionList[index].inputType),
          actions: [
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        submitUssd(firstTransactionList[index].inputType,
                            firstTransactionList[index].transactionUssd);
                      },
                      child: Row(
                        children: [
                          Text('Submit'),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [
                          Text('Cancel'),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      );

  Widget showDialogTextField(inputType) {
    Widget widget;
    switch (inputType) {
      case '1':
        widget = TextFormField(
          key: formKey,
          validator: (amount) {
            if (isAmountValid(amount!)) {
              return null;
            }
            return 'Please enter some text';
          },
          keyboardType: TextInputType.number,
          controller: rechargeAmountTextEditingController,
          autofocus: true,
          decoration: InputDecoration(hintText: 'Recharge Amount'),
        );
        break;
      case '2':
        widget = SizedBox(
          height: 100,
          child: Column(
            children: [
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? null : "Please provide amount";
                },
                keyboardType: TextInputType.number,
                controller: amountTextEditingController,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Amount'),
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty
                      ? "Please provide valid account number"
                      : null;
                },
                keyboardType: TextInputType.number,
                controller: accountNumberTextEditingController,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Account Number'),
              ),
            ],
          ),
        );
        break;
      case '22':
        widget = SizedBox(
          height: 100,
          child: Column(
            children: [
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? "Please provide amount" : null;
                },
                keyboardType: TextInputType.number,
                controller: rechargeAmountTextEditingController,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Amount'),
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty
                      ? "Please provide valid phone number"
                      : null;
                },
                keyboardType: TextInputType.number,
                controller: phoneNumberTexEditingController,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Phone Number'),
              ),
            ],
          ),
        );
        break;
      default:
        widget = Container();
    }
    // Finally returning a Widget
    return widget;
  }

  submitUssd(inputType, transactionUssd) {
    String hash = '#';
    String asterix = '*';
    //phone ussd transaction initiated
    if (inputType == '1' && rechargeAmountTextEditingController.text != '') {
      FlutterPhoneDirectCaller.callNumber(
          '${transactionUssd + rechargeAmountTextEditingController.text + hash}');
      Navigator.of(context).pop();
    } else if (inputType == '2' && amountTextEditingController.text != '') {
      FlutterPhoneDirectCaller.callNumber(
          '${transactionUssd + amountTextEditingController.text + asterix + accountNumberTextEditingController.text + hash}');
      Navigator.of(context).pop();
    } else if (inputType == '22' &&
        rechargeAmountTextEditingController.text != '') {
      FlutterPhoneDirectCaller.callNumber(
          '${transactionUssd + rechargeAmountTextEditingController.text + asterix + phoneNumberTexEditingController.text + hash}');
      Navigator.of(context).pop();
    } else {
      return null;
    }
  }

  bool isAmountValid(String amount) => amount.length < 1;
}

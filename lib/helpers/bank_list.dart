import 'package:flutter/cupertino.dart';
import 'package:ussd_app/views/access.dart';
import 'package:ussd_app/views/eco.dart';
import 'package:ussd_app/views/fcmb.dart';
import 'package:ussd_app/views/fidelity.dart';
import 'package:ussd_app/views/first.dart';
import 'package:ussd_app/views/gtb.dart';
import 'package:ussd_app/views/jaiz.dart';
import 'package:ussd_app/views/keystone.dart';
import 'package:ussd_app/views/lotus.dart';
import 'package:ussd_app/views/polaris.dart';
import 'package:ussd_app/views/stanbic.dart';
import 'package:ussd_app/views/sterling.dart';
import 'package:ussd_app/views/uba.dart';
import 'package:ussd_app/views/union.dart';
import 'package:ussd_app/views/unity.dart';
import 'package:ussd_app/views/wema.dart';
import 'package:ussd_app/views/zenith.dart';

import 'TransactionList.dart';
import 'bank_details.dart';

List bankList = [
  BankDetails(
      bankName: "Access Bank", bankLogo: "accesslogo.png", ussdMenu: "*901#"),
  BankDetails(bankName: "UBA Bank", bankLogo: "208058.png", ussdMenu: "*919#"),
  BankDetails(
      bankName: "Zenith Bank", bankLogo: "zenithlogo.png", ussdMenu: "*966#"),
  BankDetails(
      bankName: "Wema Bank", bankLogo: "wemalogo.png", ussdMenu: "*945#"),
  BankDetails(
      bankName: "Polaris Bank", bankLogo: "polarislogo.png", ussdMenu: "*833#"),
  BankDetails(
      bankName: "First Bank", bankLogo: "firstavatar.png", ussdMenu: "*894#"),
  BankDetails(
      bankName: "Union Bank", bankLogo: "unionlogo.png", ussdMenu: "*826#"),
  BankDetails(bankName: "GT Bank", bankLogo: "gtlogo.png", ussdMenu: "*737#"),
  BankDetails(
      bankName: "Jaiz Bank", bankLogo: "jaizlogo.png", ussdMenu: "*773#"),
  BankDetails(
      bankName: "Lotus Bank", bankLogo: "lotuslogo.png", ussdMenu: "*5045#"),
  BankDetails(
      bankName: "Sterling Bank",
      bankLogo: "sterlinglogo.png",
      ussdMenu: "*822#"),
  BankDetails(
      bankName: "Keystone Bank",
      bankLogo: "keystonelogo.png",
      ussdMenu: "*737*5000*"),
  BankDetails(
      bankName: "Fidelity Bank",
      bankLogo: "fidelitylogo.png",
      ussdMenu: "*770#"),
  BankDetails(bankName: "Eco Bank", bankLogo: "ecologo.png", ussdMenu: "*326#"),
  BankDetails(
      bankName: "Stanbic Bank", bankLogo: "stanbiclogo.png", ussdMenu: "*909#"),
  BankDetails(
      bankName: "FCMB Bank", bankLogo: "fcmblogo.png", ussdMenu: "*329#"),
  BankDetails(
      bankName: "Unity Bank", bankLogo: "unitylogo.png", ussdMenu: "*7799#"),
];

List<Widget> banksPage = [
  AccessBank(),
  UbaBank(),
  ZenithBank(),
  WemaBank(),
  PolarisBank(),
  FirstBank(),
  UnionBank(),
  GtBank(),
  JaizBank(),
  LotusBank(),
  SterlingBank(),
  KeyStoneBank(),
  FidelityBank(),
  EcoBank(),
  StanbicBank(),
  FcmbBank(),
  UnityBank(),
];

List wemaTransactionList = [
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*945*',
      inputType: '22',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*945*',
      inputType: 'customer',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Change Transaction Pin',
      transactionUssd: '*945*00#',
      inputType: '0',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Wema bank loan',
      transactionUssd: '*945*65#',
      inputType: '0',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Open Wema Bank Account',
      inputType: '0',
      transactionUssd: '*945*1#',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Get your Account Number',
      inputType: '0',
      transactionUssd: '*945*000#',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Account Reactivation',
      inputType: '0',
      transactionUssd: '*945*5#',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Send Money to phone/email',
      inputType: '1',
      transactionUssd: '*945*6*',
      bankUssd: '*945#'),
  TransactionList(
      transactionName: 'Call Customer Service',
      inputType: '0',
      transactionUssd: '08039003700',
      bankUssd: '*945#'),
];

List ecoTransactionList = [
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*326*1*',
      inputType: '1',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Buy Mobile Data',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Check Account Balances',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07005000000',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Pay Bills',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
  TransactionList(
      transactionName: 'Read Mini Account Statements',
      transactionUssd: '*326#',
      inputType: '0',
      bankUssd: '*326#'),
];

List fcmbTransactionList = [
  TransactionList(
      transactionName: 'Top-Up Your Mobile Phone',
      transactionUssd: '*329*',
      inputType: '1',
      bankUssd: '*329#'),
  TransactionList(
      transactionName: 'Top-Up Others Mobile Phone',
      transactionUssd: '*329*',
      inputType: '22',
      bankUssd: '*329#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*329*',
      inputType: '2',
      bankUssd: '*329#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*329*00#',
      inputType: '0',
      bankUssd: '*329#'),
  TransactionList(
      transactionName: 'Reset Transaction Pin',
      transactionUssd: '*329*0#',
      inputType: '0',
      bankUssd: '*329#'),
  TransactionList(
      transactionName: 'Call Customer Service',
      transactionUssd: '07003290000',
      inputType: '0',
      bankUssd: '*329#'),
];

List polarisTransactionList = [
  TransactionList(
      transactionName: 'Open an Account',
      transactionUssd: '*833*1#',
      inputType: '0',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Buy Airtime for Yourself',
      transactionUssd: '*833*',
      inputType: '1',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*833*',
      inputType: '22',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*833*',
      inputType: '2',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Pay Bills',
      transactionUssd: '*833*2#',
      inputType: '0',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '08069880000',
      inputType: '0',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Check your Balance',
      transactionUssd: '*833*6#',
      inputType: '0',
      bankUssd: '*833#'),
  TransactionList(
      transactionName: 'Pay with MasterPass',
      transactionUssd: '*833*7#',
      inputType: '0',
      bankUssd: '*833#'),
];

List zenithTransactionList = [
  TransactionList(
      transactionName: 'Open Zenith Account',
      transactionUssd: '*966*0#',
      inputType: '0',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*966*00#',
      inputType: '0',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Top-Up Your Airtime',
      transactionUssd: '*966*',
      inputType: '22',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*966*',
      inputType: '2',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '+234-1-2787000',
      inputType: '0',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Reset Transaction PIN',
      transactionUssd: '*966*60#',
      inputType: '0',
      bankUssd: '*966#'),
  TransactionList(
      transactionName: 'Deactivate Mobile Banking',
      transactionUssd: '*966*20*0#',
      inputType: '0',
      bankUssd: '*966#'),
];

List accessTransactionList = [
  TransactionList(
      transactionName: 'Airtime for Yourself',
      transactionUssd: '*901*',
      inputType: '1',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Airtime for Others',
      transactionUssd: '*901*',
      inputType: '22',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Open Access Bank Account',
      transactionUssd: '*901*0#',
      inputType: '0',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Buy Mobile Data',
      transactionUssd: '*901*8#',
      inputType: '0',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Check Balance',
      transactionUssd: '*901*5#',
      inputType: '0',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Transfer to Access Bank',
      transactionUssd: '*901*1*',
      inputType: '2',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Transfer to Other Banks',
      transactionUssd: '*901*2*',
      inputType: '2',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07003000000',
      inputType: '0',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'Bill Payment',
      transactionUssd: '*901*3#',
      inputType: '0',
      bankUssd: '*901#'),
  TransactionList(
      transactionName: 'OTP Generation',
      transactionUssd: '*901*3#',
      inputType: '0',
      bankUssd: '*901*4*1#'),
];

List lotusTransactionList = [
  TransactionList(
      transactionName: 'Open Lotus Bank Account',
      transactionUssd: '*5045*0#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*5045*1#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Buy Airtime and Data',
      transactionUssd: '*5045*2#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Pay Bills',
      transactionUssd: '*5045*3#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Cash Deposit',
      transactionUssd: '*5045*4#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '0700568872265',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Cardless Withdrawal',
      transactionUssd: '*5045*5#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Get Soft Token',
      transactionUssd: '*5045*6#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Apply for Financing',
      transactionUssd: '*5045*7#',
      inputType: '0',
      bankUssd: '*5045#'),
  TransactionList(
      transactionName: 'Make Enquiries',
      transactionUssd: '*5045*9#',
      inputType: '0',
      bankUssd: '*5045#'),
];

List firstTransactionList = [
  TransactionList(
      transactionName: 'Open First Bank Account',
      transactionUssd: '*894*0#',
      inputType: '0',
      bankUssd: '*894#'),
  TransactionList(
      transactionName: 'Airtime Recharge',
      transactionUssd: '*894*',
      inputType: '1',
      bankUssd: '*894#'),
  TransactionList(
      transactionName: 'Airtime Recharge for Others',
      transactionUssd: '*894*',
      inputType: '22',
      bankUssd: '*894#'),
  TransactionList(
      transactionName: 'Transfer to Any Bank',
      transactionUssd: '*894*',
      inputType: '2',
      bankUssd: '*894#'),
  TransactionList(
      transactionName: 'Check Airtime Balance',
      transactionUssd: '*894*00#',
      inputType: '0',
      bankUssd: '*894#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07080625000',
      inputType: '0',
      bankUssd: '*894#'),
];

List fidelityTransactionList = [
  TransactionList(
      transactionName: 'Open Fidelity Account',
      transactionUssd: '*770*',
      inputType: '0',
      bankUssd: '*770*01#'),
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*770*',
      inputType: '1',
      bankUssd: '*770#'),
  TransactionList(
      transactionName: 'Recharge For A Friend',
      transactionUssd: '*770*',
      inputType: '22',
      bankUssd: '*770#'),
  TransactionList(
      transactionName: 'Transfer to Any Bank',
      transactionUssd: '*770*',
      inputType: '2',
      bankUssd: '*770#'),
  TransactionList(
      transactionName: 'Call Customer Services',
      transactionUssd: '070034335489',
      inputType: '0',
      bankUssd: '*770#'),
];

List gtTransactionList = [
  TransactionList(
      transactionName: 'Open GTBank Account',
      transactionUssd: '*737*0#',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Buy Airtime for Self',
      transactionUssd: '*737*',
      inputType: '1',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*737*',
      inputType: '22',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Transfer to GTbank',
      transactionUssd: '*737*1*',
      inputType: '2',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Transfer to other Bank',
      transactionUssd: '*737*2*',
      inputType: '2',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Buy Mobile Data',
      transactionUssd: '*737*4#',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Check bank balance',
      transactionUssd: '*737*6*1#',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '0700482666328',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Check BVN Number',
      transactionUssd: '*737*6*1#',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Inquiries',
      transactionUssd: '*737*6#',
      inputType: '0',
      bankUssd: '*737#'),
  TransactionList(
      transactionName: 'Reactivate your Account',
      transactionUssd: '*737*11#',
      inputType: '0',
      bankUssd: '*737#'),
];

List jaizTransactionList = [
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*773#',
      inputType: '0',
      bankUssd: '*773#'),
  TransactionList(
      transactionName: 'Transfer to Jaiz',
      transactionUssd: '*773#',
      inputType: '0',
      bankUssd: '*773#'),
  TransactionList(
      transactionName: 'Transfer to Other Bank',
      transactionUssd: '*773#',
      inputType: '0',
      bankUssd: '*773#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*773#',
      inputType: '0',
      bankUssd: '*773#'),
  TransactionList(
      transactionName: 'Open Jaiz Account',
      transactionUssd: '07080635500',
      inputType: '0',
      bankUssd: '*773#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '*773#',
      inputType: '0',
      bankUssd: '*773#'),
];

List keystoneTransactionList = [
  TransactionList(
      transactionName: 'Open Keystone Account',
      transactionUssd: '*7111*0#',
      inputType: '0',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*7111*',
      inputType: '1',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*7111*',
      inputType: '22',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Transfer to Any Bank',
      transactionUssd: '*7111*',
      inputType: '2',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*7111*1#',
      inputType: '0',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '1800KEY2YOU',
      inputType: '0',
      bankUssd: '*7111#'),
  TransactionList(
      transactionName: 'Bills Payment',
      transactionUssd: '*7111*2#',
      inputType: '0',
      bankUssd: '*7111#'),
];

List stanbicTransactionList = [
  TransactionList(
      transactionName: 'Open Stanbic Account',
      transactionUssd: '*909#',
      inputType: '0',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Transfer to Stanbic',
      transactionUssd: '*909*11*',
      inputType: '2',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Transfer to Other Banks',
      transactionUssd: '*909*22*',
      inputType: '2',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Buy Airtime for Self',
      transactionUssd: '*909*',
      inputType: '1',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*909*',
      inputType: '22',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*909*1*1#',
      inputType: '0',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Activate USSD Banking',
      transactionUssd: '*909*1*7#',
      inputType: '0',
      bankUssd: '*909#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '+234127046114',
      inputType: '0',
      bankUssd: '*909#'),
];

List sterlingTransactionList = [
  TransactionList(
      transactionName: 'Open Sterling Account',
      transactionUssd: '*822*7#',
      inputType: '0',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Buy Airtime Yourself',
      transactionUssd: '*822*',
      inputType: '1',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*822*',
      inputType: '22',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Transfer to Sterling',
      transactionUssd: '*822*4*',
      inputType: '2',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Transfer to Other Bank',
      transactionUssd: '*822*5*',
      inputType: '2',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*822*6#',
      inputType: '0',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07008220000',
      inputType: '0',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Your Account Number',
      transactionUssd: '*822*8#',
      inputType: '0',
      bankUssd: '*822#'),
  TransactionList(
      transactionName: 'Reset Transaction Pin',
      transactionUssd: '*822*9#',
      inputType: '0',
      bankUssd: '*822#'),
];

List unionTransactionList = [
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Buy Airtime for Others',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Transfer Money',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Buy Mobile Data',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Check Balance',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07007007000',
      inputType: '0',
      bankUssd: '*919#'),
];

List unityTransactionList = [
  TransactionList(
      transactionName: 'Account Opening',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Airtime Recharge',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Money Transfer',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Balance Enquiry',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Bills payment',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '+2347057323225',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'BVN Verification',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
  TransactionList(
      transactionName: 'Change Transaction PIN',
      transactionUssd: '*7799#',
      inputType: '0',
      bankUssd: '*7799#'),
];

List ubaTransactionList = [
  TransactionList(
      transactionName: 'Open UBA Account',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Buy Airtime',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Transfer to UBA',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Transfer to Other Bank',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Call Customer Care',
      transactionUssd: '07002255822',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Pay Bills',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
  TransactionList(
      transactionName: 'Check Account Balance',
      transactionUssd: '*919#',
      inputType: '0',
      bankUssd: '*919#'),
];

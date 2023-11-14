import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Pyscreen extends StatefulWidget {
  const Pyscreen({Key? key}) : super(key: key);

  @override
  PyscreenState createState() => PyscreenState();
}

class PyscreenState extends State<Pyscreen> {
  late var _razorpay;
  var amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("Food App"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                controller: amountController,
                decoration:
                    const InputDecoration(hintText: "Enter your Amount"),
              ),
            ),
            CupertinoButton(
                color: Colors.grey,
                child: Text("Pay Amount"),
                onPressed: () {
                  ///Make payment
                  var options = {
                    'key': "rzp_test_xvlZZBGCo0SzL0",
                    // amount will be multiple of 100
                    'amount': (int.parse(amountController.text) * 100)
                        .toString(), //So its pay 500
                    'name': 'Food App',
                    'description': 'Demmo',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '9191919191',
                      'email': 'foodapp@gmail.com'
                    }
                  };
                  _razorpay.open(options);
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear();
    super.dispose();
  }
}































// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:upi_india/upi_india.dart';

// class Pyscreen extends StatefulWidget {
//   const Pyscreen({super.key});

//   @override
//   State<Pyscreen> createState() => _PyscreenState();
// }

// class _PyscreenState extends State<Pyscreen> {
//   Future<UpiResponse>? _transaction;
//   final UpiIndia _upiIndia = UpiIndia();
//   List<UpiApp>? apps;

//   var header = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
//   var value = const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

// //   @override
// //   void initState() {
// //     _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
// //       setState(() {
// //         apps = value;
// //       });
// //     }).catchError((e) {
// //       print(e);
// //       apps = [];
// //     });
// //     super.initState();
// //   }

// //   Future<UpiResponse> initiateTransaction(UpiApp app) async {
// //     return _upiIndia.startTransaction(
// //       app: app,
// //       receiverUpiId: "9078600498@ybl",
// //       receiverName: 'Md Azharuddin',
// //       transactionRefId: 'TestingUpiIndiaPlugin',
// //       transactionNote: 'Not actual. Just an example.',
// //       amount: 1.00,
// //     );
// //   }

// //   Widget displayUpiApps() {
// //     if (apps == null) {
// //       return const Center(
// //         child: CircularProgressIndicator(),
// //       );
// //     } else if (apps!.isEmpty) {
// //       return Center(
// //         child: Text("NO apps found to handles Transaction."),
// //       );
// //     } else {
// //       return Align(
// //         alignment: Alignment.topCenter,
// //         child: SingleChildScrollView(
// //           physics: const BouncingScrollPhysics(),
// //           child: Wrap(
// //             children: apps!.map<Widget>(
// //               (UpiApp app) {
// //                 return GestureDetector(
// //                     onTap: () {
// //                       _transaction = initiateTransaction(app);
// //                       setState(() {});
// //                     },
// //                     child: Container(
// //                       height: 100,
// //                       width: 100,
// //                       child: Column(
// //                         mainAxisSize: MainAxisSize.min,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Row(children: [
// //                             Image.memory(
// //                               app.icon,
// //                               height: 60,
// //                               width: 60,
// //                             ),
// //                             Text(
// //                               app.name,
// //                             )
// //                           ])
// //                         ],
// //                       ),
// //                     ));
// //               },
// //             ).toList(),
// //           ),
// //         ),
// //       );
// //     }
// //   }

// // String _upiErrorHandler(errror)
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         body: Center(
// //             child: Column(
// //           children: [Text("Payment google")],
// //         )),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:upi_india/upi_india.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Test UPI',
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   Future<UpiResponse>? _transaction;
// //   UpiIndia _upiIndia = UpiIndia();
// //   List<UpiApp>? apps;

// //   TextStyle header = TextStyle(
// //     fontSize: 18,
// //     fontWeight: FontWeight.bold,
// //   );

// //   TextStyle value = TextStyle(
// //     fontWeight: FontWeight.w400,
// //     fontSize: 14,
// //   );

//   @override
//   void initState() {
//     _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
//       setState(() {
//         apps = value;
//       });
//     }).catchError((e) {
//       apps = [];
//     });
//     super.initState();
//   }

//   Future<UpiResponse> initiateTransaction(UpiApp app) async {
//     return _upiIndia.startTransaction(
//       app: app,
//       receiverUpiId: "9078600498@ybl",
//       receiverName: 'Md Azharuddin',
//       transactionRefId: 'TestingUpiIndiaPlugin',
//       transactionNote: 'Not actual. Just an example.',
//       amount: 1.00,
//     );
//   }

//   Widget displayUpiApps() {
//     if (apps == null)
//       return Center(child: CircularProgressIndicator());
//     else if (apps!.length == 0)
//       return Center(
//         child: Text(
//           "No apps found to handle transaction.",
//           style: header,
//         ),
//       );
//     else
//       return Align(
//         alignment: Alignment.topCenter,
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Wrap(
//             children: apps!.map<Widget>((UpiApp app) {
//               return GestureDetector(
//                 onTap: () {
//                   _transaction = initiateTransaction(app);
//                   setState(() {});
//                 },
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Image.memory(
//                         app.icon,
//                         height: 60,
//                         width: 60,
//                       ),
//                       Text(app.name),
//                     ],
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       );
//   }

//   String _upiErrorHandler(error) {
//     switch (error) {
//       case UpiIndiaAppNotInstalledException:
//         return 'Requested app not installed on device';
//       case UpiIndiaUserCancelledException:
//         return 'You cancelled the transaction';
//       case UpiIndiaNullResponseException:
//         return 'Requested app didn\'t return any response';
//       case UpiIndiaInvalidParametersException:
//         return 'Requested app cannot handle the transaction';
//       default:
//         return 'An Unknown error has occurred';
//     }
//   }

//   void _checkTxnStatus(String status) {
//     switch (status) {
//       case UpiPaymentStatus.SUCCESS:
//         print('Transaction Successful');
//         break;
//       case UpiPaymentStatus.SUBMITTED:
//         print('Transaction Submitted');
//         break;
//       case UpiPaymentStatus.FAILURE:
//         print('Transaction Failed');
//         break;
//       default:
//         print('Received an Unknown transaction status');
//     }
//   }

//   Widget displayTransactionData(title, body) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text("$title: ", style: header),
//           Flexible(
//               child: Text(
//             body,
//             style: value,
//           )),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('UPI'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: displayUpiApps(),
//           ),
//           Expanded(
//             child: FutureBuilder(
//               future: _transaction,
//               builder:
//                   (BuildContext context, AsyncSnapshot<UpiResponse> snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   if (snapshot.hasError) {
//                     return Center(
//                       child: Text(
//                         _upiErrorHandler(snapshot.error.runtimeType),
//                         style: header,
//                       ), // Print's text message on screen
//                     );
//                   }

//                   // If we have data then definitely we will have UpiResponse.
//                   // It cannot be null
//                   UpiResponse _upiResponse = snapshot.data!;

//                   // Data in UpiResponse can be null. Check before printing
//                   String txnId = _upiResponse.transactionId ?? 'N/A';
//                   String resCode = _upiResponse.responseCode ?? 'N/A';
//                   String txnRef = _upiResponse.transactionRefId ?? 'N/A';
//                   String status = _upiResponse.status ?? 'N/A';
//                   String approvalRef = _upiResponse.approvalRefNo ?? 'N/A';
//                   _checkTxnStatus(status);

//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         displayTransactionData('Transaction Id', txnId),
//                         displayTransactionData('Response Code', resCode),
//                         displayTransactionData('Reference Id', txnRef),
//                         displayTransactionData('Status', status.toUpperCase()),
//                         displayTransactionData('Approval No', approvalRef),
//                       ],
//                     ),
//                   );
//                 } else
//                   return Center(
//                     child: Text(''),
//                   );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

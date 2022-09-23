import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Razor extends StatefulWidget {
  @override
  String? pay;
  Razor(this.pay);
  _RazorState createState() => _RazorState();
}

class _RazorState extends State<Razor> {
  Razorpay? razorpay;
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay!.clear();
  }

  void openCheckout() {
    String aStr = widget.pay.toString().replaceAll(new RegExp(r'[^0-9]'), '');
    String aInt = int.parse(aStr).toString();

    var options = {
      "key": "rzp_test_EvtypifJT3zTjq",
      "amount": num.parse(
          //textEditingController.text
          aInt),
      "name": "Megacart",
      "description": "Payment for the some random product",
      "prefill": {"contact": "2323232323", "email": "shdjsdh@gmail.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay!.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print("Pament success");
    Fluttertoast.showToast(
      msg: "Payment success",
    );
  }

  void handlerErrorFailure() {
    print("Pament error");
    Fluttertoast.showToast(
      msg: "Payment error",
    );
  }

  void handlerExternalWallet() {
    print("External Wallet");
    Fluttertoast.showToast(
      msg: "External Wallet",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Pay "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            Image(
              image: AssetImage('images/empty_cart.png'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.pay.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // TextField(
            //   controller: textEditingController,
            //   decoration: InputDecoration(hintText: "amount to pay"),
            // ),
            SizedBox(
              height: 12,
            ),
            // ActionChip(
            //     label: Text(
            //       "Pay Now",
            //     ),
            //     onPressed: () {
            //       openCheckout();
            //     }),

            GestureDetector(
              onTap: (() {
                openCheckout();
              }),
              child: Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    'Pay now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

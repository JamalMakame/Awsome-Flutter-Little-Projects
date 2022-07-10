import 'package:flutter/material.dart';
import 'package:recipe_getx/views/widgets/input_decoration.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  String otp = '';
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
    setState(() {
      otp = otp + value;
    });
    debugPrint(otp);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                cursorColor: const Color(0xffffdc3d),
                style: const TextStyle(fontSize: 26),
                decoration: inputDecoration,
                autofocus: true,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin2FocusNode,
                cursorColor: const Color(0xffffdc3d),
                style: const TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin3FocusNode,
                cursorColor: const Color(0xffffdc3d),
                style: const TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin4FocusNode,
                cursorColor: const Color(0xffffdc3d),
                style: const TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                  setState(() {
                    otp = otp + value;
                  });
                  debugPrint(otp);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

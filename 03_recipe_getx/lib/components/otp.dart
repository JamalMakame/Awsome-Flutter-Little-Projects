import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:recipe_getx/controllers/opt_controller.dart';
import 'package:recipe_getx/views/widgets/input_decoration.dart';

class OtpForm extends GetView<OTPController> {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OTPController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          custom_otp_box(
            controller: controller,
            focusNode: controller.pin2FocusNode.value,
          ),
          custom_otp_box(
            controller: controller,
            focusNode: controller.pin3FocusNode.value,
          ),
          custom_otp_box(
            controller: controller,
            focusNode: controller.pin4FocusNode.value,
          ),
          SizedBox(
            height: 72.h,
            width: 72.w,
            child: TextFormField(
              onChanged: (value) {
                controller.pin4FocusNode.unfocus();
              },
              autofocus: true,
              controller: controller.otp.value,
              decoration: InputDecoration(
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffD0DBEA),
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff1FCC79),
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                labelStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 34.sp,
                  color: const Color(0xff3E5481),
                ),
              ),
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class custom_otp_box extends StatelessWidget {
  final FocusNode focusNode;
  const custom_otp_box({
    Key? key,
    required this.focusNode,
    required this.controller,
  }) : super(key: key);

  final OTPController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      width: 72.w,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            controller.nextField(
              value: value,
              focusNode: focusNode,
            );
          }
        },
        autofocus: true,
        controller: controller.otp.value,
        decoration: InputDecoration(
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffD0DBEA),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff1FCC79),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          labelStyle: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 34.sp,
            color: const Color(0xff3E5481),
          ),
        ),
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

// class OtpForm extends StatefulWidget {
//   const OtpForm({Key? key}) : super(key: key);

//   @override
//   _OtpFormState createState() => _OtpFormState();
// }

// class _OtpFormState extends State<OtpForm> {
//   String otp = '';


//   @override
//   void dispose() {
//     pin2FocusNode.dispose();
//     pin3FocusNode.dispose();
//     pin4FocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     
//   }



//   @override
//   Widget build(BuildContext context) {
//     final size = Get.size;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
//       child: Form(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               width: size.width * 0.16,
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 obscureText: true,
//                 cursorColor: const Color(0xffffdc3d),
//                 style: const TextStyle(fontSize: 26),
//                 decoration: inputDecoration,
//                 autofocus: true,
//                 onChanged: (value) {
//                   nextField(value: value, focusNode: pin2FocusNode);
//                 },
//               ),
//             ),
//             SizedBox(
//               width: size.width * 0.16,
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 obscureText: true,
//                 focusNode: pin2FocusNode,
//                 cursorColor: const Color(0xffffdc3d),
//                 style: const TextStyle(fontSize: 26),
//                 decoration: inputDecoration,
//                 onChanged: (value) {
//                   nextField(value: value, focusNode: pin3FocusNode);
//                 },
//               ),
//             ),
//             SizedBox(
//               width: size.width * 0.16,
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 obscureText: true,
//                 focusNode: pin3FocusNode,
//                 cursorColor: const Color(0xffffdc3d),
//                 style: const TextStyle(fontSize: 26),
//                 decoration: inputDecoration,
//                 onChanged: (value) {
//                   nextField(value: value, focusNode: pin4FocusNode);
//                 },
//               ),
//             ),
//             SizedBox(
//               width: size.width * 0.16,
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 obscureText: true,
//                 focusNode: pin4FocusNode,
//                 cursorColor: const Color(0xffffdc3d),
//                 style: const TextStyle(fontSize: 26),
//                 decoration: inputDecoration,
//                 onChanged: (value) {
//                   pin4FocusNode.unfocus();
//                   setState(() {
//                     otp = otp + value;
//                   });
//                   debugPrint(otp);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

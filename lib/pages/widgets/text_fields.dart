//
//
//
//
// // TextFields(
// //   title: "Email Address",
// //   icon: Icon(Icons.lock),
// // ),
//
//
// import 'package:flutter/material.dart';
//
// class TextFields extends StatelessWidget {
//   const TextFields({
//     super.key, required this.title, required this.icon,
//   });
// final String title;
// final Icon icon;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           expands: false,
//           decoration: const InputDecoration(
//             fillColor: Colors.white,
//             labelText: title,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(8.0)),
//               gapPadding: 4.0,
//
//             ),
//             prefixIcon: Icon(icon, color: Colors.black38,),
//
//
//           ),
//         ),
//       ],
//     );
//   }
// }
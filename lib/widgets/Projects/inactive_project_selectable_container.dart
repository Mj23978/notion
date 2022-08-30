// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:notion/Values/values.dart';

// class InactiveProjectSelectableContainer extends StatelessWidget {
//   final String header;
//   final ValueNotifier<bool> notifier;
//   const InactiveProjectSelectableContainer({
//     Key? key,
//     required this.header,
//     required this.notifier,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         notifier.value = !notifier.value;
//       },
//       child: Slidable(
//         actionPane: SlidableDrawerActionPane(),
//         actionExtentRatio: 0.25,
//         child: Container(
//             width: double.infinity,
//             height: 70,
//             padding: EdgeInsets.all(20.0),
//             decoration: BoxDecoration(
//                 color: AppColors.primaryBackgroundColor,
//                 borderRadius: BorderRadius.circular(10)),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(children: [
//                     Container(
//                       width: 50,
//                       height: 50,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(color: Colors.grey, width: 2)),
//                     ),
//                     AppSpaces.horizontalSpace20,
//                     Text(header,
//                         style: GoogleFonts.lato(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18)),
//                   ]),
//                   SizedBox()
//                 ])),
//         secondaryActions: <Widget>[
//           IconSlideAction(
//             //caption: 'More',
//             color: HexColor.fromHex("B1FEE2"),
//             icon: Icons.share,

//             // onTap: () => _showSnackBar('More'),
//           ),
//           IconSlideAction(
//             //caption: 'Delete',
//             iconWidget: Icon(Icons.delete, size: 35),
//             color: HexColor.fromHex("F5A3FF"),

//             // onTap: () => _showSnackBar('Delete'),
//           ),
//         ],
//       ),
//     );
//   }
// }

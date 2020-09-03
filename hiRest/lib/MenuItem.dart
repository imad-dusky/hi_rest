import 'package:flutter/material.dart';
import 'package:hiRest/Delivary.dart';

class MenuItem extends StatefulWidget {
  final FoodMenu menu;
  MenuItem({@required this.menu});
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container();
   
  }
}




//  return Card(
//         child: Container(
//       color: Colors.white,
//       width: size.width > 600 ? 500 : size.width,
//       height: 150,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Flexible(
//             flex: 2,
//             child: Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                         offset: Offset.fromDirection(-1),
//                         color: Colors.black87,
//                         blurRadius: 5,
//                         spreadRadius: 1)
//                   ],
//                 ),
//                 width: 125,
//                 height: 125,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.transparent,
//                   backgroundImage: NetworkImage(widget.menu.image),
//                 )),
//           ),
//           Flexible(
//             flex: 2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text(
//                   widget.menu.name,
//                   style: textTheme.headline5.copyWith(color: Colors.black87),
//                 ),
//                 Text(
//                   count == 0
//                       ? '${widget.menu.price.toString()} IQD'
//                       : '${(widget.menu.price * count).toString()} IQD',
//                   style: textTheme.headline6.copyWith(color: Colors.black87),
//                 )
//               ],
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_upward,
//                     color: Colors.black87,
//                   ),
//                   onPressed: () => {
//                     setState(() {
//                       count++;
//                     })
//                   },
//                 ),
//                 Text(
//                   count.toString(),
//                   style: textTheme.subtitle1.copyWith(color: Colors.black87),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_downward,
//                     color: Colors.black87,
//                   ),
//                   onPressed: () => {
//                     setState(() {
//                       if (count != 0) {
//                         count--;
//                       }
//                     })
//                   },
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ));
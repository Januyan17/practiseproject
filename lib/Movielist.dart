// import 'package:flutter/material.dart';
// import 'package:mangaikikupractice/re-usable.dart';
// import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

// class MovieList extends StatelessWidget {
//   String dropdownvalue = 'Item 1';

//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(left: 10),
//             child: PopupMenuButton(
//                 itemBuilder: (context) => [
//                       const PopupMenuItem(
//                         child: Text("Newly Added"),
//                         // onTap: () {
//                         //   Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //           builder: (context) => ()));
//                         // },
//                       ),
//                       const PopupMenuItem(
//                         child: Text("Recently Added"),
//                       ),
//                       const PopupMenuItem(
//                         child: Text("My Favourites"),
//                       ),
//                     ]),
//           )
//         ],
//       ),
//       body: recentlyadded(context),
//       // bottomNavigationBar: FloatingNavbar(
//       //   onTap: (int val) {
//       //     //returns tab id which is user tapped
//       //   },
//       //   currentIndex: 3,
//       //   items: [
//       //     FloatingNavbarItem(icon: Icons.home, title: 'Home'),
//       //     FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
//       //     FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
//       //     FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
//       //   ],
//       // ),
//     );
//   }
// }

// Widget favouritelistview(BuildContext context) {
//   List favourite = [
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.5")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.4")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.1")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.2")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.7")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.8")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.1")),
//   ];
//   return ListView.builder(
//       itemCount: favourite.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Container(child: favourite[index]),
//         );
//       });
// }

// Widget newlistview(BuildContext context) {
//   List newlist = [
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.5")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.4")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.1")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.2")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.7")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.8")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.1")),
//   ];
//   return ListView.builder(
//       itemCount: newlist.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Container(child: newlist[index]),
//         );
//       });
// }

// Widget recentlyadded(BuildContext context) {
//   List recently = [
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.5")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.4")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "9.1")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.2")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.7")),
//     Container(
//         child: movielist(
//             "assets/wolf.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "7.8")),
//     Container(
//         child: movielist(
//             "assets/ragnar.jpg",
//             "Title",
//             "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
//             "8.1")),
//   ];
//   return ListView.builder(
//       itemCount: recently.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Container(child: recently[index]),
//         );
//       });
// }

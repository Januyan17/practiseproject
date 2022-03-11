import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mangaikikupractice/MovieResponseModel.dart';
import 'package:mangaikikupractice/re-usable.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'Movielist.dart';
import 'apiconnection.dart';

class MovScreen extends StatefulWidget {
  const MovScreen({Key? key}) : super(key: key);

  @override
  _MovScreenState createState() => _MovScreenState();
}

class _MovScreenState extends State<MovScreen> {
  bool _isLoading = true;

  //list for api
  List manga = [];
  List Newmanga = [];
  List ViewManga = [];
  List RatingManga = [];

  //get manga details from api
  void _apiMangaDetails() async {
    try {
      //Hot Manga API
      manga.clear();
      var res = await CallApi().getBrowserhot('');
      var bodyRoutes = json.decode(res.body);
      manga = bodyRoutes;

      //new Manga API
      Newmanga.clear();
      var resNew = await CallApi().getBrowserNew('');
      var bodyRoutesNew = json.decode(resNew.body);
      Newmanga.add(bodyRoutesNew);

      //View Manga API
      ViewManga.clear();
      var resView = await CallApi().getViewMangas('');
      var bodyRoutesView = json.decode(resView.body);
      ViewManga.add(bodyRoutesView);

      //Rating Manga API
      RatingManga.clear();
      var resRating = await CallApi().getRatingMangas('');
      var bodyRoutesRating = json.decode(resRating.body);
      RatingManga.add(bodyRoutesRating);

      print("Hot Manga API ---" + manga.toString());
      print("--------------------------------");
      // print("New Manga API ---" + Newmanga.toString());
      // print("--------------------------------");
      // print("View Manga API ---" + ViewManga.toString());
      // print("--------------------------------");
      // print("Rating Manga API ---" + RatingManga.toString());

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  // Future getMoviedata() async {
  //   var response = await http.get(
  //     Uri.https('api.comick.fun', 'chapter?order=hot'),

  //     //      headers: {
  //     //   'Content-Type': 'application/json',
  //     //   'Accept': "application/json",
  //     // }
  //   );

  //   // Map<int, dynamic> map = json.decode(response.body);
  //   // List<dynamic> data = map["md_comics"];
  //   // print(data[0]["id"]);

  //   var jsonData = jsonDecode(response.body);

  //   List<Movies> movies = [];

  //   for (var mov in jsonData) {
  //     Movies movie =
  //         Movies(mov[1]["title"], mov[6]["gpurl"], mov[3]["country"]);
  //     movies.add(movie);
  //   }
  //   print(movies);
  //   return movies;
  // }

// method2
  // void _apiMangaDetails() async {
  //   try {
  //     //Hot Manga API
  //     manga.clear();
  //     var res = await CallApi().getBrowserhot('');
  //     var bodyRoutes = json.decode(res.body);
  //     manga.add(bodyRoutes);

  //     //new Manga API
  //     Newmanga.clear();
  //     var resNew = await CallApi().getBrowserNew('');
  //     var bodyRoutesNew = json.decode(resNew.body);
  //     Newmanga.add(bodyRoutesNew);

  //     //View Manga API
  //     ViewManga.clear();
  //     var resView = await CallApi().getViewMangas('');
  //     var bodyRoutesView = json.decode(resView.body);
  //     ViewManga.add(bodyRoutesView);

  //     //Rating Manga API
  //     RatingManga.clear();
  //     var resRating = await CallApi().getRatingMangas('');
  //     var bodyRoutesRating = json.decode(resRating.body);
  //     RatingManga.add(bodyRoutesRating);

  //     setState(() {
  //       // _isLoading = false;
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  String dropdownvalue = 'Hot';

  var items = [
    'Hot',
    'New',
    'Recently Added',
    'Top Magnas',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              Container(
                width: 150,
                child: DropdownButton(
                  value: dropdownvalue,
                  focusColor: Colors.transparent,
                  dropdownColor: Color.fromARGB(255, 110, 13, 128),

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }).toList(),

                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Click"),
            onPressed: () {
              _apiMangaDetails();
            },
          ),
        )
        // body: Container(
        //   child: FutureBuilder(
        //     future: getMoviedata(),
        //     builder: (context,snapshot){
        //       if (snapshot.data == null) {
        //         return Container(
        //           child: Text("Loading"),
        //         );
        //       }
        //     },
        //   ),
        // )
        // bottomNavigationBar: SizedBox(
        //   height: 100,
        //   child: FloatingNavbar(
        //     width: 300.0,
        //     backgroundColor: Colors.white.withOpacity(0.2),
        //     onTap: (int val) {
        //       //returns tab id which is user tapped
        //     },
        //     currentIndex: 3,
        //     items: [
        //       FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        //       FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
        //       FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
        //       FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        //     ],
        //   ),
        // ),
        );
  }
}

Widget favouritelistview(BuildContext context) {
  List favourite = [
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.5")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.4")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.1")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.2")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.7")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.8")),
    Container(
        child: movielist(
            "assets/wolf.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.1")),
  ];
  return ListView.builder(
      itemCount: favourite.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(child: favourite[index]),
        );
      });
}

Widget newlistview(BuildContext context) {
  List newlist = [
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.5")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.4")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.1")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.2")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.7")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.8")),
    Container(
        child: movielist(
            "assets/ragnar.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.1")),
  ];
  return ListView.builder(
      itemCount: newlist.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(child: newlist[index]),
        );
      });
}

Widget recentlyadded(BuildContext context) {
  List recently = [
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.5")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.4")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "9.1")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.2")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.7")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "7.8")),
    Container(
        child: movielist(
            "assets/lord.jpg",
            "Title",
            "A sci-fi thriller about a space mission sent to terraform a distant planet. ",
            "8.1")),
  ];
  return ListView.builder(
      itemCount: recently.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(child: recently[index]),
        );
      });
}

class Movies {
  final String title, image, rating;

  Movies(this.title, this.image, this.rating);
}

import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CallApi {
  //home page api url
  var url = 'https://api.comick.fun/chapter/';
  var baseurl = 'https://api.comick.fun/chapter?page=1&order=hot';
  var baseurlforNew = 'https://api.comick.fun/chapter?page=1&order=new';
  var baseurlforView =
      'https://api.comick.fun/search?page=1&limit=50&sort=view';
  var baseurlforRating =
      'https://api.comick.fun/search?page=1&limit=50&sort=rating';

  var token = "276|Ozi5T5NG1482uwB4m0MeZVDmUC5uMKJHuAWFrcwh";

  //browser
  var hoturl = 'https://api.comick.fun/search?page=1&limit=50&sort=uploaded';
  var newurl = 'https://api.comick.fun/search?page=1&limit=50&sort=follow';

  getViewMangas(apiUrl) async {
    var fullUrl = Uri.parse(baseurlforView + apiUrl);
    return await http.get(
      fullUrl,
    );
  }

  getRatingMangas(apiUrl) async {
    var fullUrl = Uri.parse(baseurlforRating + apiUrl);
    return await http.get(
      fullUrl,
    );
  }

  //browser page
  getBrowserhot(apiUrl) async {
    var fullUrl = Uri.parse(hoturl + apiUrl);
    return await http.get(
      fullUrl,
    );
  }

  //browser page
  getBrowserNew(apiUrl) async {
    var fullUrl = Uri.parse(newurl + apiUrl);
    return await http.get(
      fullUrl,
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      };
}

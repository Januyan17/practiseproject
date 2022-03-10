import 'package:flutter/material.dart';




Widget movielist(image, title, description, rating) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 100,
        height: 130,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
      SizedBox(
        width: 250,
        height: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 14),
              child: Container(
                child: Text(
                  description,
                  style: TextStyle(color: Colors.white),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.amber,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    rating,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 131, 131, 131)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    ". Action",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 131, 131, 131)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    ". ch",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 131, 131, 131)),
                  ),
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}

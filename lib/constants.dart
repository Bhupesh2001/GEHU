import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var prefs;

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.add,
          size: 25,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Wrap(
                    children: const [
                      TextField(decoration: InputDecoration(hintText: "City")),
                      TextField(decoration: InputDecoration(hintText: "State")),
                      TextField(
                          decoration: InputDecoration(hintText: "Image URL")),
                      SizedBox(height: 8000)
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}

class Delete extends StatelessWidget {
  DocumentReference doc;
  Delete(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.delete_forever,
            size: 25,
          ),
          onPressed: () {
            doc.delete();
          },
        ),
      ),
    );
  }
}

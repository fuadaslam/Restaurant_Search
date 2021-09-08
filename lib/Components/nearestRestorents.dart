import 'package:flutter/material.dart';
import 'package:fuad_test/screens/allRestorents.dart';
import 'package:fuad_test/screens/profile.dart';

class NearestRestorents extends StatelessWidget {
  final List<Widget> horizontalList;
  final String title;
  final String seealltitle;

  NearestRestorents({this.title,this.seealltitle, this.horizontalList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionTitle((this.title != null ) ? this.title : ''),
                TextButton(child:
                SeeAllText((this.seealltitle != null ) ? this.seealltitle : ''),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllRestorents()));
                },),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (this.horizontalList != null ) ? this.horizontalList : []
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String _text;

  SectionTitle(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}


class SeeAllText extends StatelessWidget {
  final String _text;

  SeeAllText(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

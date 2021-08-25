import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('images/beach.png'),
          Transform.translate(
            offset: Offset(0, 100),
            child: Column(
              children: <Widget>[
                _createImages(context),
                _createDetails(context),
                _createAction(context),
              ],
            ),
          ),
          
      ],),
    );
  }
}
Widget _createImages(BuildContext context) {
  return Container(
    width: 210,
    height: 220,
    child: ClipOval(
      child: Image.asset(
        'images/fox.png',
        fit: BoxFit.fitWidth,
      ),
    ),

  );
}
Widget _createDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fox in the Wild',
        style: TextStyle(
          fontSize: 35, 
          fontWeight: FontWeight.w500,
          ),
        ),
        Text('Can you pet the fox?'),
        Text(''),
        _detailRow('Age', '5'),
        _detailRow('Status', 'Super Cool Fox'),
        
    ],),
  );
}
Widget _createAction(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildIcon(Icons.restaurant, 'Feed'),
      _buildIcon(Icons.favorite, 'Pet'),
      _buildIcon(Icons.directions_walk, 'Walk'),

    ],
  );
}
Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(children: [
      Icon(icon, size: 42, color: Colors.orangeAccent,), 
      Text(text),
    ],),
  );
}

Widget _detailRow(String heading, String value) {
  return Row(children: [
    Text(
      '$heading: ', 
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text(value),
  ],
);
}
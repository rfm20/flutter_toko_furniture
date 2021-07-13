import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'images/royal-wing.webp',
            ),
            Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              padding: EdgeInsets.only(
                top: 16.0,
                left: 16.0,
              ),
              child: Text(
                'Royal Wing Chair',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16.0,
                left: 16.0,
              ),
              child: Text(
                r'$400.00',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Upgrade your living space with this exclusive Dreamzz Furniture Wing Back Chair which will add luxurious & Royal look to your Home. With Tufted High Back & craftfully upholstered Fabric gives you the Royal Look from every angle. Comfort is one the best part that you can always talk about of this chair. Curvy Teakwood legs makes an astonishing statement.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16.0,
                left: 16.0,
              ),
              child: Text(
                'Similar Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://www.dreamzzfurniture.com/wp-content/uploads/2021/01/15-6-6.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://www.designersofas4u.co.uk/images/pictures/product-images/chesterfield-high-back-chair-picture/chesterfield-fabric-mallory-flat-wing-high-back-wing-chair-royal-blue.jpg?v=e6e628ef'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://www.dreamzzfurniture.com/wp-content/uploads/2021/01/1-7-11.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://i.ebayimg.com/images/g/kIoAAOSwHgtdJd2s/s-l300.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: FavoriteButton(),
        onPressed: null,
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

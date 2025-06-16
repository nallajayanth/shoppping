import 'package:flutter/material.dart';

class MenScreen extends StatefulWidget {
  const MenScreen({super.key});

  @override
  State<MenScreen> createState() => _MenScreenState();
}

class _MenScreenState extends State<MenScreen> {
  final List<Map<String, String>> topDress = [
    {
      'name': 'Men Solid Henley Neck Cotton Blend Black T-Shirt',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/shopsy-t-shirt/k/e/c/l-tblhnful-spy-d144-tripr-original-imahcjtu6ghwgpk7.jpeg?q=70',
      'price': '201',
    },
    {
      'name': 'Men Regular Fit Solid Mandarin Collar Casual Shirt',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/shirt/r/j/7/xs-bs-shirt1693-tanip-original-imah9ymkhaymtkhy.jpeg?q=70',
      'price': '257',
    },
    {
      'name': 'Men Regular Fit Collar Casual Shirt',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/shirt/b/o/d/s-pink-box01-burrmellow-original-imahbbcvzha3ghkz.jpeg?q=70',
      'price': '286',
    },
    {
      'name': 'Men Slim Fit Solid Spread Collar Casual Shirt  (Pack of 2)',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/shirt/s/f/y/s-ppng-combo-mbf66-original-imahc9z8zmnxxqzz.jpeg?q=70',
      'price': '461',
    },

    {
      'name': 'Men Slim Fit Checkered Spread Collar Casual Shirt#JustHere',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/shirt/t/q/r/2xl-check1195-tanip-original-imah9nczabbqshr4.jpeg?q=70',
      'price': '236',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mens Section")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: topDress.length,
                itemBuilder: (context, index) {
                  final dress = topDress[index];
                  final imageUrl = dress['imageUrl'] ?? '';
                  final name = dress['name'] ?? '';
                  final price = dress['price'] ?? '';
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 140,
                        child: Row(
                          children: [
                            Image.network(
                              imageUrl,
                              width: 80,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text("Price : $price"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WomenScreen extends StatefulWidget {
  const WomenScreen({super.key});

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  final List<Map<String, String>> topDress = [
    {
      'name': 'Women Cotton Blend Kurta Palazzo Set',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/ethnic-set/8/g/9/s-34251-libas-original-imahcgqykzz3rgbr.jpeg?q=70',
      'price': '1,499',
    },
    {
      'name': 'Women Silk Blend Kurta Pant Dupatta Set',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/ethnic-set/i/h/i/xl-49505-libas-original-imah9yyfjgq2x6hm.jpeg?q=70',
      'price': '2,414',
    },
    {
      'name': 'Embellished Bollywood Tissue, Silk Blend Saree  (Gold)',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/sari/h/a/q/free-2tone-1-0-lorofy-unstitched-original-imahcr8cppvgzhfh.jpeg?q=70',
      'price': '859',
    },
    {
      'name': 'Women Viscose Rayon Kurta Pant Dupatta Set',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/ethnic-set/k/u/2/xxl-tie-dye-001-fabunna-cotton-original-imagzwfb5v6mjupy.jpeg?q=70',
      'price': '417',
    },

    {
      'name': 'Women Cotton Blend Kurta Pant Dupatta Set',
      'imageUrl':
          'https://rukminim2.flixcart.com/image/612/612/xif0q/ethnic-set/u/f/7/s-blue-kurta-dd-s-creation-original-imah2eg5dkynqte4.jpeg?q=70',
      'price': '492',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Womens Section ")),

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

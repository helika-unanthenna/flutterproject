import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageDetails extends StatelessWidget {
  final ImageModel image;

  ImageDetails({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(image.tokenName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(image.imageUrl),
            SizedBox(height: 20),
            Text('Artist: ${image.artistName}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Token ID: ${image.tokenId}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Sold: ${image.soldFlag == "0" ? "No" : "Yes"}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('QR Code URL: ${image.qrcodeUrl}', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
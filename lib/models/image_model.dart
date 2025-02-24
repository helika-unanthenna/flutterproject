class ImageModel {
  final int id;
  final String tokenName;
  final int tokenId;
  final String tokenIdUri;
  final String imageUrl;
  final String artistName;
  final String qrcodeUrl;
  final String soldFlag;

  ImageModel({
    required this.id,
    required this.tokenName,
    required this.tokenId,
    required this.tokenIdUri,
    required this.imageUrl,
    required this.artistName,
    required this.qrcodeUrl,
    required this.soldFlag,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      tokenName: json['token_name'],
      tokenId: json['token_id'],
      tokenIdUri: json['tokenid_uri'],
      imageUrl: json['image_url'],
      artistName: json['artist_name'],
      qrcodeUrl: json['qrcode_url'],
      soldFlag: json['sold_flag'],
    );
  }
}
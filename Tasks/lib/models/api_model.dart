// To parse this JSON data, do
//
//     final pictureFromApi = pictureFromApiFromJson(jsonString);

import 'dart:convert';

List<PictureFromApi> pictureFromApiFromJson(String str) => List<PictureFromApi>.from(json.decode(str).map((x) => PictureFromApi.fromJson(x)));

String pictureFromApiToJson(List<PictureFromApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PictureFromApi {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    PictureFromApi({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    factory PictureFromApi.fromJson(Map<String, dynamic> json) => PictureFromApi(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}

// To parse this JSON data, do
//
//     final jsonData = jsonDataFromJson(jsonString);

import 'dart:convert';

List<JsonData> jsonDataFromJson(String str) => List<JsonData>.from(json.decode(str).map((x) => JsonData.fromJson(x)));

String jsonDataToJson(List<JsonData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JsonData {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    JsonData({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    factory JsonData.fromJson(Map<String, dynamic> json) => JsonData(
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

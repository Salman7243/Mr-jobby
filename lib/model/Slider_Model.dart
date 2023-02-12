// To parse this JSON data, do
//
//     final sliderModel = sliderModelFromJson(jsonString);

import 'dart:convert';

Slider_Model sliderModelFromJson(String str) => Slider_Model.fromJson(json.decode(str));

String sliderModelToJson(Slider_Model data) => json.encode(data.toJson());

class Slider_Model {
    Slider_Model({
        required this.success,
       required this.data,
    });

    bool success;
    List<Datum> data;

    factory Slider_Model.fromJson(Map<String, dynamic> json) => Slider_Model(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
         required this.sliderImage,
    });

    String sliderImage;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        sliderImage: json["sliderImage"],
    );

    Map<String, dynamic> toJson() => {
        "sliderImage": sliderImage,
    };
}
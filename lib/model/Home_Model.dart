// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

List<HomeModel> homeModelFromJson(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromJson(x)));

String homeModelToJson(List<HomeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeModel {
  HomeModel({
    required this.id,
    required this.title,
    required this.childcategoryId,
    required this.subcategoryId,
    required this.categoryId,
    required this.detailDescription,
    required this.description,
    required this.categoryTitle,
    required this.subcategoryTitle,
    required this.distance,
    required this.estimateBudget,
    required this.timeDifference,
    required this.duration,
    required this.serviceDate,
    required this.views,
    required this.isApplied,
    required this.urgent,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    required this.country,
    required this.startTime,
    required this.hours,
    required this.status,
    required this.address,
    required this.phone,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.small,
    required this.medium,
    required this.large,
    required this.verylarge,
    required this.question,
    required this.question1,
    required this.question2,
    required this.question3,
    required this.surface,
    required this.count,
    required this.input,
    required this.pickupAddress,
    required this.destinationAddress,
    required this.dob,
    required this.demander,
  });

  int id;
  String title;
  int childcategoryId;
  int subcategoryId;
  int categoryId;
  String detailDescription;
  String description;
  String categoryTitle;
  String subcategoryTitle;
  String distance;
  String estimateBudget;
  int timeDifference;
  String duration;
  String serviceDate;
  int views;
  bool isApplied;
  int urgent;
  String latitude;
  String longitude;
  String createdAt;
  String country;
  String startTime;
  String hours;
  int status;
  String address;
  String phone;
  String image1;
  String image2;
  String image3;
  String small;
  String medium;
  String large;
  String verylarge;
  String question;
  String question1;
  String question2;
  String question3;
  String surface;
  String count;
  String input;
  String pickupAddress;
  String destinationAddress;
  String dob;
  Demander demander;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        id: json["id"],
        title: json["title"],
        childcategoryId: json["childcategory_id"],
        subcategoryId: json["subcategory_id"],
        categoryId: json["category_id"],
        detailDescription: json["detail_description"],
        description: json["description"],
        categoryTitle: json["category_title"],
        subcategoryTitle: json["subcategory_title"],
        distance: json["distance"],
        estimateBudget: json["estimate_budget"],
        timeDifference: json["time_difference"],
        duration: json["duration"],
        serviceDate: json["service_date"],
        views: json["views"],
        isApplied: json["is_applied"],
        urgent: json["urgent"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        createdAt: json["created_at"],
        country: json["country"],
        startTime: json["start_time"],
        hours: json["hours"],
        status: json["status"],
        address: json["address"],
        phone: json["phone"],
        image1: json["image1"],
        image2: json["image2"],
        image3: json["image3"],
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
        verylarge: json["verylarge"],
        question: json["question"],
        question1: json["question1"],
        question2: json["question2"],
        question3: json["question3"],
        surface: json["surface"],
        count: json["count"],
        input: json["input"],
        pickupAddress: json["pickup_address"],
        destinationAddress: json["destination_address"],
        dob: json["dob"],
        demander: Demander.fromJson(json["demander"]),
      );

  get image => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "childcategory_id": childcategoryId,
        "subcategory_id": subcategoryId,
        "category_id": categoryId,
        "detail_description": detailDescription,
        "description": description,
        "category_title": categoryTitle,
        "subcategory_title": subcategoryTitle,
        "distance": distance,
        "estimate_budget": estimateBudget,
        "time_difference": timeDifference,
        "duration": duration,
        "service_date": serviceDate,
        "views": views,
        "is_applied": isApplied,
        "urgent": urgent,
        "latitude": latitude,
        "longitude": longitude,
        "created_at": createdAt,
        "country": country,
        "start_time": startTime,
        "hours": hours,
        "status": status,
        "address": address,
        "phone": phone,
        "image1": image1,
        "image2": image2,
        "image3": image3,
        "small": small,
        "medium": medium,
        "large": large,
        "verylarge": verylarge,
        "question": question,
        "question1": question1,
        "question2": question2,
        "question3": question3,
        "surface": surface,
        "count": count,
        "input": input,
        "pickup_address": pickupAddress,
        "destination_address": destinationAddress,
        "dob": dob,
        "demander": demander.toJson(),
      };
}

class Demander {
  Demander({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.address,
    required this.country,
    required this.postalCode,
    required this.image,
    required this.categoryId,
    required this.subcategoryId,
    required this.role,
  });

  int userId;
  String firstName;
  String lastName;
  String phone;
  String email;
  String address;
  String country;
  String postalCode;
  String image;
  int categoryId;
  int subcategoryId;
  int role;

  factory Demander.fromJson(Map<String, dynamic> json) => Demander(
        userId: json["user_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        phone: json["phone"],
        email: json["email"],
        address: json["address"],
        country: json["country"],
        postalCode: json["postalCode"],
        image: json["image"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "email": email,
        "address": address,
        "country": country,
        "postalCode": postalCode,
        "image": image,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "role": role,
      };
}

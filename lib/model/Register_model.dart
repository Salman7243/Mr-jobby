
import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
    RegisterModel({
     required  this.id,
      required this.user,
      required this.token,
    });

    int id;
    User user;
    String token;

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        id: json["id"],
        user: User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "token": token,
    };
}

class User {
    User({
       required  this.userId,
       required  this.firstName,
       required  this.lastName,
       required  this.phone,
       required   this.email,
       required this.address,
       required this.country,
       required this.postalCode,
       required this.image,
       required this.categoryId,
       required this.subcategoryId,
       required this.gender,
       required this.description,
       required this.dob,
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
    String categoryId;
    String subcategoryId;
    String gender;
    String description;
    String dob;
    int role;

    factory User.fromJson(Map<String, dynamic> json) => User(
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
        gender: json["gender"],
        description: json["description"],
        dob: json["dob"],
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
        "gender": gender,
        "description": description,
        "dob": dob,
        "role": role,
    };
}

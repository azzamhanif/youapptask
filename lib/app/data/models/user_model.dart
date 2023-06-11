class User {
  String? name;
  String? gender;
  String? birthday;
  String? horoscope;
  String? zodiac;
  String? height;
  String? weight;
  String? username;
  String? imgUrl;
  List<Interest>? interest;

  User(
      {this.name,
      this.gender,
      this.birthday,
      this.horoscope,
      this.zodiac,
      this.height,
      this.weight,
      this.username,
      this.imgUrl,
      this.interest});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    birthday = json['birthday'];
    horoscope = json['horoscope'];
    zodiac = json['zodiac'];
    height = json['height'];
    weight = json['weight'];
    username = json['username'];
    imgUrl = json['imgUrl'];
    if (json['interest'] != null) {
      interest = <Interest>[];
      json['interest'].forEach((v) {
        interest?.add(Interest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['birthday'] = birthday;
    data['horoscope'] = horoscope;
    data['zodiac'] = zodiac;
    data['height'] = height;
    data['weight'] = weight;
    data['username'] = username;
    data['imgUrl'] = imgUrl;
    if (interest != null) {
      data['interest'] = interest?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Interest {
  String? id;
  String? name;

  Interest({this.id, this.name});

  Interest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

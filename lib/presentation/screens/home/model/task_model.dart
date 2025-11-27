import 'dart:convert';

class TaskModel {
  String? status;
  String? message;
  Data? data;

  TaskModel({this.status, this.message, this.data});

  factory TaskModel.fromRawJson(String str) =>
      TaskModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  int? count;
  List<MyTask>? myTasks;

  Data({this.count, this.myTasks});

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    count: json["count"],
    myTasks: json["myTasks"] == null
        ? []
        : List<MyTask>.from(json["myTasks"]!.map((x) => MyTask.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "myTasks": myTasks == null
        ? []
        : List<dynamic>.from(myTasks!.map((x) => x.toJson())),
  };
}

class MyTask {
  String? id;
  String? title;
  String? description;
  Creator? creator;
  Status? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  MyTask({
    this.id,
    this.title,
    this.description,
    this.creator,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory MyTask.fromRawJson(String str) => MyTask.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MyTask.fromJson(Map<String, dynamic> json) => MyTask(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    creator: json["creator"] == null ? null : Creator.fromJson(json["creator"]),
    status: statusValues.map[json["status"]]!,
    createdAt: json["createdAt"] == null
        ? null
        : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null
        ? null
        : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "description": description,
    "creator": creator?.toJson(),
    "status": statusValues.reverse[status],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class Creator {
  Id? id;
  FirstName? firstName;
  LastName? lastName;
  Email? email;

  Creator({this.id, this.firstName, this.lastName, this.email});

  factory Creator.fromRawJson(String str) => Creator.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
    id: idValues.map[json["_id"]]!,
    firstName: firstNameValues.map[json["firstName"]]!,
    lastName: lastNameValues.map[json["lastName"]]!,
    email: emailValues.map[json["email"]]!,
  );

  Map<String, dynamic> toJson() => {
    "_id": idValues.reverse[id],
    "firstName": firstNameValues.reverse[firstName],
    "lastName": lastNameValues.reverse[lastName],
    "email": emailValues.reverse[email],
  };
}

enum Email { NICOX50100_AIKUNKUN_COM }

final emailValues = EnumValues({
  "nicox50100@aikunkun.com": Email.NICOX50100_AIKUNKUN_COM,
});

enum FirstName { JOHN }

final firstNameValues = EnumValues({"John": FirstName.JOHN});

enum Id { THE_69258505975206_DFFAFDE4_B4 }

final idValues = EnumValues({
  "69258505975206dffafde4b4": Id.THE_69258505975206_DFFAFDE4_B4,
});

enum LastName { DOE }

final lastNameValues = EnumValues({"Doe": LastName.DOE});

enum Status { TO_DO }

final statusValues = EnumValues({"To Do": Status.TO_DO});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

class UserModel{

  String? name;

  String? email;

  String? uid;

  String? downloadUrl;

  UserModel({required this.name,required this.email,required this.uid
    ,required this.downloadUrl});

  Map<String,dynamic> toMap() => {
    'name' : this.name,
    'email': this.email,
    'uid' : this.uid,
    'downloadUrl' : this.downloadUrl
  };

}
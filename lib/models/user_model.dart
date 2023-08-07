class UserModel {
  final String firstName;
  final String lastName;
  final String img;
  final String imagelarge;
  final String email;
  final int age;
  final String city;
  final String country;
  final String phone;
  final String gender;

  UserModel(
    this.firstName,
    this.lastName,
    this.img,
    this.email,
    this.age,
    this.imagelarge,
    this.city,
    this.country,
    this.phone,
    this.gender,
  );

  UserModel.fromJson(Map data)
      : firstName = data['results'][0]['name']['first'],
        lastName = data['results'][0]["name"]['last'],
        img = data['results'][0]["picture"]["medium"],
        email = data['results'][0]["email"],
        age = data['results'][0]["dob"]["age"],
        city = data['results'][0]['location']['city'],
        country = data['results'][0]['location']['country'],
        phone = data['results'][0]['phone'],
        gender=data['results'][0]['gender'],
        imagelarge = data['results'][0]["picture"]["medium"];
}

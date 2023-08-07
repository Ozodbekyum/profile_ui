import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:profile_ui/models/user_model.dart';
import 'package:profile_ui/screens/bottom_nav.dart';

import 'dart:convert';

import 'package:profile_ui/screens/containers.dart';

import 'categories.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<UserModel> getdata() async {
    Uri url = Uri.parse('https://randomuser.me/api/');

    http.Response response = await http.get(url);
    // print(_response.body);

    Map data = jsonDecode(response.body);

    Map results = data;

    UserModel user = UserModel.fromJson(results);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: getdata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              UserModel user = snapshot.data as UserModel;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.network(user.imagelarge),
                        ),
                        Column(
                          children: [
                            Text(
                              user.firstName + ' ' + user.lastName,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              user.email,
                              style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Containers(),
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      Categories(
                        title: user.city,
                        icon: Icons.location_city,
                      ),
                      Categories(
                        title: user.country,
                        icon: Icons.home,
                      ),
                      Categories(
                        title: user.phone,
                        icon: Icons.phone,
                      ),
                      Categories(
                        title: user.gender,
                        icon: Icons.person,
                      ),
                      Categories(
                        title: user.age.toString(),
                        icon: Icons.date_range,
                      ),
                      const Categories(
                        title: 'Log Out',
                        icon: Icons.logout_rounded,
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          },
        ),
        bottomNavigationBar: const BottomNav());
  }
}

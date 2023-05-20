import "package:flutter/material.dart";
import "package:serenity_space/widget/search_bar.dart";
import "package:serenity_space/widget/show_doctors.dart";

import "../../api/apis.dart";

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Material(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 35),
                          children: [
                            const TextSpan(
                                text: 'Hello ',
                                style: TextStyle(color: Colors.black54)),
                            TextSpan(
                                text: MongoUser.userDetails["first_name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            MongoUser.userDetails["profile_picture"]),
                        backgroundColor: Colors.white10,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const SearchBar(),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Popular Doctors",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ShowDoctors(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

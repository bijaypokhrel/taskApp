import 'package:flutter/material.dart';
import 'package:taskapp/utilities/category_card.dart';
import 'package:taskapp/utilities/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Arjun Yudhisthir',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  //profile picture
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //animation or cute picture
                    // Container(
                    //   height: 100,
                    //   width: 100,
                    //   color: Colors.deepPurple[200],
                    // ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/sketch.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // how do you feel + get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Fill out your medical card right now',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //horizontal list view
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'assets/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'assets/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pills',
                    iconImagePath: 'assets/icons/pills.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //doctor list

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //doctors list card
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor_1.jpg',
                    doctorName: 'Dr. Raja Yadav',
                    doctorProfession: 'Therapist',
                    rating: '4',
                  ),
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor_2.jpg',
                    doctorName: 'Dr. Raja Yadav',
                    doctorProfession: 'Therapist',
                    rating: '4',
                  ),
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor_3.jpg',
                    doctorName: 'Dr. Raja Yadav',
                    doctorProfession: 'Therapist',
                    rating: '4',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

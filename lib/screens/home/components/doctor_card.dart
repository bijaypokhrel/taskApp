import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard(
      {Key? key,
      required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProfession,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //image of the doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                doctorImagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // doctor name
            Text(
              doctorName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // doctor title
            Text(doctorProfession + ' 7 y.o.e'),
          ],
        ),
      ),
    );
  }
}

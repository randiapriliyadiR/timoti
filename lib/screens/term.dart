import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class Term extends StatelessWidget {
  const Term({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          "Term of Use",
          style: blackTextStyle,
        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Excepteur sit aute officia quis minim.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Nulla aliqua anim deserunt nisi Lorem veniam laboris duis elit incididunt cillum aliquip laboris esse. Do adipisicing reprehenderit Lorem ex commodo. Eiusmod quis culpa labore incididunt laboris ut reprehenderit eu ex veniam ad. Irure irure ipsum cupidatat reprehenderit esse do ullamco do ullamco laboris ad. Amet cillum adipisicing dolore ut excepteur minim eiusmod. Minim deserunt veniam officia cillum mollit enim esse cupidatat excepteur pariatur aliquip et esse. Do ea laborum consequat nostrud aliquip nostrud veniam irure cillum aliqua sit eiusmod.',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Mollit labore aute sint velit labore laboris non in irure. Sunt est ea velit consectetur irure minim consectetur quis esse. Aliquip dolore nostrud pariatur adipisicing eu id nulla.',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Incididunt sint incididunt mollit officia consectetur duis veniam est sunt deserunt non. Laboris est sint anim dolore mollit Lorem. Esse ullamco sint cillum irure minim veniam aliquip dolore amet.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Nulla aliqua anim deserunt nisi Lorem veniam laboris duis elit incididunt cillum aliquip laboris esse. Do adipisicing reprehenderit Lorem ex commodo. Eiusmod quis culpa labore incididunt laboris ut reprehenderit eu ex veniam ad. Irure irure ipsum cupidatat reprehenderit esse do ullamco do ullamco laboris ad. Amet cillum adipisicing dolore ut excepteur minim eiusmod. Minim deserunt veniam officia cillum mollit enim esse cupidatat excepteur pariatur aliquip et esse. Do ea laborum consequat nostrud aliquip nostrud veniam irure cillum aliqua sit eiusmod.',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Mollit labore aute sint velit labore laboris non in irure. Sunt est ea velit consectetur irure minim consectetur quis esse. Aliquip dolore nostrud pariatur adipisicing eu id nulla.',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Incididunt sint incididunt mollit officia consectetur duis veniam est sunt deserunt non. Laboris est sint anim dolore mollit Lorem. Esse ullamco sint cillum irure minim veniam aliquip dolore amet.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

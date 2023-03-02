import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_3/model/movie_result.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key, required this.model}) : super(key: key);

  Result? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Screen'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                RichText(
                  text: TextSpan(
                    text: model?.title,
                    style: TextStyle(
                      fontSize: 25.w,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            RichText(
              text: TextSpan(
                text: model?.overview,
                style: TextStyle(
                  fontSize: 15.w,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ));
  }
}

import 'package:airbnb/components/common/common_form_field.dart';
import 'package:airbnb/components/common/count_form_field.dart';
import 'package:airbnb/components/common/date_form_field.dart';
import 'package:airbnb/constants.dart';
import 'package:airbnb/size.dart';
import 'package:airbnb/style.dart';
import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6, 0),
      child: SizedBox(
        width: 420,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  Text(
                    "모두의 숙소에서 숙소를 검색하세요.",
                    style: h4(),
                  ),
                  Text(
                    "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체'숙소까지, 모두의 숙소에 다 있습니다.",
                    style: body1(),
                  ),
                  CommonFormField(prefixText: "위치", hintText: "근처 숙소를 선택하세요"),
                  Row(
                    children: [
                      Expanded(
                        child: DateFormField(prefixText: "체크인", hintText: "날짜입력"),
                      ),
                      Expanded(
                        child: DateFormField(prefixText: "체크아웃", hintText: "날짜입력"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CountFormField(
                          prefixText: "성인",
                        ),
                      ),
                      Expanded(
                        child: CountFormField(
                          prefixText: "아동",
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: gap_xs),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: kAccentColor,
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text(
                        "검색",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

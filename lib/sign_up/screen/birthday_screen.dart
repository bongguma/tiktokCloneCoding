import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktokclonecoding/constants/gaps.dart';
import 'package:tiktokclonecoding/constants/sizes.dart';
import 'package:tiktokclonecoding/onBoarding/interests_screen.dart';
import 'package:tiktokclonecoding/sign_up/widget/form_button.dart';
import 'package:tiktokclonecoding/until/Formatting.dart';

class BirthDayScreen extends StatefulWidget {
  const BirthDayScreen({Key? key}) : super(key: key);

  @override
  State<BirthDayScreen> createState() => _BirthDayScreenState();
}

class _BirthDayScreenState extends State<BirthDayScreen> {
  TextEditingController _birthdayController = TextEditingController();

  DateTime _birthdayDate = DateTime.now();

  @override
  void initState() {
    super.initState();

    _setDateTextField(_birthdayDate);
  }

  @override
  void dispose() {
    _birthdayController.dispose();

    super.dispose();
  }

  void _onNextTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const InterestsScreen(),
      ),
    );
  }

  void _setDateTextField(DateTime dateTime) {
    _birthdayController.value =
        TextEditingValue(text: Formatting.formatDateToString(dateTime));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v40,
            const Text(
              "When's your Birthday",
              style: TextStyle(
                fontSize: Sizes.size24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gaps.v8,
            const Text(
              "Your birthday won't be shown publicly.",
              style: TextStyle(
                fontSize: Sizes.size16,
                color: Colors.black54,
              ),
            ),
            Gaps.v16,
            TextField(
              enabled: false,
              controller: _birthdayController,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
            Gaps.v16,
            GestureDetector(
              onTap: _onNextTap,
              child: FormButton(
                disabled: _birthdayDate == null,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            maximumDate: _birthdayDate,
            initialDateTime: _birthdayDate,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (DateTime dateTime) =>
                _setDateTextField(dateTime),
          ),
        ),
      ),
    );
  }
}

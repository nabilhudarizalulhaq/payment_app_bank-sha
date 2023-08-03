import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgrounsColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 58,
        ),
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: amountController,
              cursorColor: greyColor,
              enabled: false,
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: medium,
              ),
              decoration: InputDecoration(
                prefixIcon: Text(
                  'Rp.',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              CustomPinInputButton(
                title: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomPinInputButton(
                title: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomPinInputButton(
                title: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomPinInputButton(
                title: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomPinInputButton(
                title: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomPinInputButton(
                title: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomPinInputButton(
                title: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomPinInputButton(
                title: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomPinInputButton(
                title: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomPinInputButton(
                title: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResultItem extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  final bool isSelected;

  const TransferResultItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    required this.isVerified,
    this.isSelected = false,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        imageUrl,
                      ),
                    ),
                  ),
                  child: isVerified ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 14,
                      ),
                    ),
                  ) 
                : null,

          ),
          const SizedBox(
            height: 13,
          ),
        Text(
          name,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
            height: 2,
          ),
          Text(
            '@$username',
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
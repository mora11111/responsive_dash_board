import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imgBackgroundColor, this.imgColor});

  final String image;
  final Color? imgBackgroundColor, imgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                // padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  color: imgBackgroundColor ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: Center(
                      child: SvgPicture.asset(
                        image,
                        colorFilter: ColorFilter.mode(
                            imgColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                      ),
                    )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios_rounded,
          color: imgColor == null ? const Color(0xFF064061) : Colors.white,)
      ],
    );
  }
}

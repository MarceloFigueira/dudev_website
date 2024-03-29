import 'package:dudev_website/src/styles/style.dart';
import 'package:dudev_website/src/widgets/site_logo.dart';
import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: KHeaderDecoration,
        child: Row(
          children: [
            SiteLogo(
              onTap: () {
                onLogoTap?.call();
              },
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  onMenuTap?.call();
                },
                icon: const Icon(Icons.menu)),
            const SizedBox(
              width: 16,
            )
          ],
        ));
  }
}

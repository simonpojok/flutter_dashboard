import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(child: SearchField(),),
                Container(
                  margin: EdgeInsets.only(left: defaultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10,),),
                    border: Border.all(
                      color: Colors.white10,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/profile_pic.png", height: 38,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                        ),
                        child: Text("Abbo Rachael"),
                      ),
                      Icon(Icons.keyboard_arrow_down,),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(
              defaultPadding * 0.75,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                )),
            child: SvgPicture.asset(
              "assets/icons/Search.svg",
            ),
          ),
        ),
      ),
    );
  }
}
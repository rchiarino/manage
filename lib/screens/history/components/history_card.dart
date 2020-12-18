import 'package:flutter/material.dart';
import 'package:manager/constants.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key key, this.product}) : super(key: key);

  final String product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                // child: Image.asset("../../assets/placehold.gif"),
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$product',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                maxLines: 2),
            Text(
              'SAIN'.toLowerCase(),
              style: Theme.of(context).textTheme.overline,
            ), //CODE FROM QR
            SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
              text: "Price",
              style: TextStyle(fontWeight: FontWeight.w600, color: rPrimary),
            )),
          ],
        )
      ],
    );
  }
}

class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width - 80,
            child: AspectRatio(
              aspectRatio: 2.5,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: rDeselect,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "NO DATA",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                )),
              ),
            )),
      ],
    );
  }
}

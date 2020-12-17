import 'package:flutter/material.dart';

import 'package:manager/globals.dart';
import 'package:manager/screens/history/components/history_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        // child: Text('${global.litems}')
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: scanned.length != 0 ? scanned.length : 1,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: scanned.length != 0
                    ? buildDismissible(index, context)
                    : NoData()),
          ),
        ),
      ),
    );
  }

  Dismissible buildDismissible(int index, BuildContext context) {
    return Dismissible(
        key: Key(index.toString()),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          // setState((){ //! implements a setstate for elements deleted from list.
          //   scanned.removeAt(index);
          // });

          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("$scanned Deleted!")));
        },
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFFE6E6),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [Spacer(), Icon(Icons.delete_forever_rounded)],
          ),
        ),
        child: HistoryCard());
  }
}

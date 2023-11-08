import 'package:flutter/material.dart';
import 'package:untitled8/model/SourceResponse/Source.dart';

class TabsWidget extends StatelessWidget {
  Source source;
  bool isselected;

  TabsWidget(this.source, this.isselected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Theme.of(context).primaryColor),
          color: isselected ? Theme.of(context).primaryColor : Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                source.name ?? "",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isselected
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

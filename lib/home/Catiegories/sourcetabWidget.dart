import 'package:flutter/material.dart';
import 'package:untitled8/home/Catiegories/TabsWidget.dart';
import 'package:untitled8/home/News/NewsListWidget.dart';

import '../../model/SourceResponse/Source.dart';

class sourcetabWidget extends StatefulWidget {
  List<Source> sources;

  sourcetabWidget(this.sources, {super.key});

  @override
  State<sourcetabWidget> createState() => _sourcetabWidgetState();
}

class _sourcetabWidgetState extends State<sourcetabWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sources.length,
        child: Column(children: [
          Container(
            child: TabBar(
                indicatorColor: Colors.transparent,
                onTap: (newIndex) {
                  setState(() {
                    selectedIndex = newIndex;
                  });
                },
                isScrollable: true,
                tabs: widget.sources
                    .map((source) => TabsWidget(source,
                        selectedIndex == widget.sources.indexOf(source)))
                    .toList()),
          ),
          Expanded(child: NewsListWidget(widget.sources[selectedIndex]))
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:wisp/graph/showList.dart';
import 'package:wisp/models/company.dart';

class Graph extends StatefulWidget {
  final List<Company> companies;
  const Graph(this.companies, {super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // child: DetailsPage(widget.companies[0])
      child: ShowList(widget.companies),
    );
  }
}
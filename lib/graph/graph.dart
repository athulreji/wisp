import 'package:flutter/material.dart';
import 'package:wisp/graph/detailsPage.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DetailsPage()
    );
  }
}
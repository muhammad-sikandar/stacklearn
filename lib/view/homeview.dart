import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacklearn/viewmodel/homeviewmodel.dart';

import 'counter.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => homeviewmodel(),
        builder: (context, ViewModel, child) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              title: Text('Chat '),
              centerTitle: true,
            ),
            body: Column(
              children: [
           TextField()
              ],
            ),
          ));
        });
  }
}

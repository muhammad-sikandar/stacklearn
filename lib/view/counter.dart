import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacklearn/view/homeview.dart';
import '../viewmodel/counterviewmodel.dart';

class counter extends StatelessWidget {
  counter({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => counterviewmodel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Log In'),
                centerTitle: true,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(icon: Icon(Icons.email)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(icon: Icon(Icons.password)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homescreen()));
                          },
                          child: Text(' Log In ')))
                ],
              ),
            ),
          );
        });
  }
}

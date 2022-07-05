import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.red),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            // foregroundColor: Colors.black,
            // backwardsCompatibility: false,
            title: const Text('Customze AppBar'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            //elevation: 0,
            //  shadowColor: Colors.green,
            //  shape: const Border(bottom: BorderSide(color: Colors.black, width: 5)),
            // flexibleSpace: Container(
            // decoration: const BoxDecoration(
            //  gradient: LinearGradient(
            //    begin: Alignment.topLeft,
            //  end: Alignment.bottomRight,
            // colors: [Colors.red, Colors.purple]),
            //     ),
            //   ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/1/14/Light-city-road-sky_%2823958976889%29.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

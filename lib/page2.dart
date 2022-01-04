import 'package:flutter/material.dart';
import 'package:flutter_providers/page3.dart';
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx){
                        return const Page3();
                      }),
                  );
                },
                child: const Text('Page2'))
          ],
        ),
      ),
    );
  }
}

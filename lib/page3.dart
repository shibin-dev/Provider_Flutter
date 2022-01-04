import 'package:flutter/material.dart';
import 'package:flutter_providers/page1.dart';
import 'package:flutter_providers/providertest.dart';
import 'package:provider/provider.dart';
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx){
                        return const Page1();
                      }),
                  );
                },
                child: const Text('Page3')),
            Consumer<ProviderTest>(
              builder: (context,value,child){
              return Text(value.text);
            },
        ),
            TextButton(onPressed: (){}, child: const Text('change'))
      ]
      ),
      ),
    );
  }
}

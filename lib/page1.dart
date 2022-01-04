import 'package:flutter/material.dart';
import 'package:flutter_providers/page2.dart';
import 'package:flutter_providers/providertest.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) {
                      return const Page2();
                    }),
                  );
                },
                child: const Text('Page1')),
            Consumer<ProviderTest>(
              builder: (context, value, child) {
                print('text change');
                return Text(value.text);
              },
            ),
            Consumer<ProviderTest>(builder: (context, value, child) {
              return TextButton(
                onPressed: () {
                  print('button press');
                  value.change('changing value');
                },
                child: const Text('Changed'),
              );
            })
          ],
        ),
      ),
    );
  }
}

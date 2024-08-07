import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vativetest/BestStateManagement/Provider/Provider.dart';

class MyProvider extends StatelessWidget {
  MyProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '${context.watch<ProviderState>().count}',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextButton(
                onPressed: () => context.read<ProviderState>().UpdateCount(),
                child: Text('CountUpdate')),
          )
        ],
      ),
    );
  }
}

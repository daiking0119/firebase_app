import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_model.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'riverpod',
        home: TemplatePage(),
      ),
    ),
  );
}

class TemplatePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final provider = watch(templateProvider).state;

    return Scaffold(
      appBar: AppBar(
        title: Text('リバーポッド'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(provider),
            ElevatedButton(
              onPressed: () {
                context.read(templateProvider).state = 'ボタンが押されたぜ！';
              },
              child: Text('ボタン'),
            )
          ],
        ),
      ),
    );
  }
}

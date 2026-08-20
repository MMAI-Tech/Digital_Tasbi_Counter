import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final provider = StateProvider<int>((reg){
  return 0;
});
class Counter extends ConsumerStatefulWidget {
  const Counter({super.key});

  @override
  ConsumerState<Counter> createState() => _CounterState();
}

class _CounterState extends ConsumerState<Counter> {
  @override
  Widget build(BuildContext context) {
 print('Built');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Counter'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:
              Consumer(builder: (context,ref,child){
                final count = ref.watch(provider);
                return
                Text(count.toString(),style: TextStyle(fontSize: 50),);
      })

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                    onPressed: (){
                    ref.read(provider.notifier).state ++;
                }, child:
                Text('+',style: TextStyle(fontSize: 50),)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                    onPressed: (){
                    ref.read(provider.notifier).state --;

                    }, child: Text('-',style: TextStyle(fontSize: 50),))
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}



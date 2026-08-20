import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

final count = StateProvider<int>((ref) {
  return 0;
});
final toggle = StateProvider<bool>((ref) {
  return false;
});

class Tasbi extends ConsumerStatefulWidget {
  const Tasbi({super.key});

  @override
  ConsumerState<Tasbi> createState() => _TasbiState();
}

class _TasbiState extends ConsumerState<Tasbi> {
  @override
  void initState() {
    
    super.initState();
    getCount();
  }
  @override
  Widget build(BuildContext context) {
    bool tf = ref.watch(toggle);
    print(tf);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TASBI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Icon(Icons.mosque,color: Colors.white,size: 30,)
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[900]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 160,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,
                width: 3.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,
                    width: 3.0),
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(70),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        num cot = ref.watch(count);
                        return Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 200,
                          height: 60,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: tf
                                    ? Colors.blue.withValues(alpha: 0.7)
                                    : Colors.grey,
                                blurRadius: tf ? 18 : 0,
                                spreadRadius: tf ? 8 : 0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              cot.toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              ref.read(toggle.notifier).state = !tf;
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              height: 40,
                              width: 40,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,
                                    width: 3.0),
                                color: Colors.amber[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ref.read(count.notifier).state = 0;
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              height: 40,
                              width: 40,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,
                                    width: 3.0),
                                color: Colors.amber[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async{
                        var prefs =await SharedPreferences.getInstance();
                        prefs.setString("count", ref.watch(count).toString());
                        ref.read(count.notifier).state++;
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 100,
                        width: 100,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,
                              width: 3.0),
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 160,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,
                    width: 3.0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 3.0),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  void getCount() async {
    var prefs =await SharedPreferences.getInstance();
    int pref = int.parse(prefs.get("count").toString());
    ref.read(count.notifier).state = pref+1;
  }
}

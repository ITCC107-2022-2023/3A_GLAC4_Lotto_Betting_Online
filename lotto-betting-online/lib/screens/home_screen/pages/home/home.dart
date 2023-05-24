import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';

import 'components/day_draw_sched.dart';
import 'components/schedule_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: const Text(
                    'SCHEDULES OF DRAW',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              const Text('DAILY DRAWS',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                      offset: Offset(2, 2),
                      color: Colors.black12,
                      blurStyle: BlurStyle.normal,
                      spreadRadius: 1)
                ], color: kLightBlue, borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/2dLotto.png',
                          scale: 1.3,
                        ),
                        Image.asset(
                          'assets/3dLotto.png',
                          scale: 1.3,
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DayDrawSched(
                          drawLabel: '1ST DRAW',
                          drawTime: '9:00 AM',
                        ),
                        DayDrawSched(
                          drawLabel: '2ND DRAW',
                          drawTime: '4:00 PM',
                        ),
                        DayDrawSched(
                          drawLabel: '3RD DRAW',
                          drawTime: '5:00 PM',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ScheduleContainer(
                time: '9:00 PM',
                day: 'MONDAY',
                contents: [
                  MySizedBox(
                    child: Image.asset(
                      'assets/grandLotto.png',
                    ),
                  ),
                  MySizedBox(child: Image.asset('assets/4dLotto.png')),
                  MySizedBox(child: Image.asset('assets/645Lotto.png')),
                ],
              ),
              ScheduleContainer(
                time: '9:00 PM',
                day: 'TUESDAY',
                contents: [
                  MySizedBox(
                    child: Image.asset('assets/6dLotto.png'),
                  ),
                  MySizedBox(
                    child: Image.asset('assets/642Lotto.png'),
                  ),
                  MySizedBox(child: Image.asset('assets/ultraLotto.png')),
                ],
              ),
              ScheduleContainer(
                time: '9:00 PM',
                day: 'WEDNESDAY',
                contents: [
                  MySizedBox(
                    child: Image.asset('assets/grandLotto.png'),
                  ),
                  MySizedBox(
                    child: Image.asset('assets/4dLotto.png'),
                  ),
                  MySizedBox(child: Image.asset('assets/645Lotto.png')),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class MySizedBox extends StatelessWidget {
  final Widget child;
  const MySizedBox({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: child,
    );
  }
}

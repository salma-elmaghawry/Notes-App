import 'package:flutter/material.dart';
import 'package:notes/Presentation/onboard/onboaedingPage.dart';
import 'package:notes/Presentation/views/notes_view.dart';
import 'package:notes/helper/constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: const [
                  OnboardingPage(
                    title: 'Capture Your Thoughts',
                    description:
                        'With our easy-to-use interface, you can quickly jot down your thoughts and ideas.',
                    imageUrl: 'assets/images/onboarding1.svg',
                  ),
                  OnboardingPage(
                    title: 'Revise Anytime',
                    description:
                        'Need to make changes? No problem! Simply select any note from your list to edit.',
                    imageUrl: 'assets/images/onboarding2.svg',
                  ),
                  OnboardingPage(
                    title: 'Declutter with Ease',
                    description:
                        'Out with the old! Delete notes that no longer serve you with just a tap.',
                    imageUrl: 'assets/images/onboarding3.svg',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: CustomIndicator(isActive: _currentIndex == index),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text("Skip"),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_currentIndex < 2) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NotesView()), 
                        );
                      }
                    },
                    child: Text(_currentIndex == 2 ? "Done" : "Next"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomIndicator extends StatelessWidget {
  final bool isActive;

  const CustomIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 30 : 10,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

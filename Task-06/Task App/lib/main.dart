import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';


MaterialColor stuntcolor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction App Task-06',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: stuntcolor(Color(0xFFd3c9c6))),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/10.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFd3c9c6),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: stuntcolor(Color(0xFFd3c9c6)),
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),

          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "Yoga Surge",
          body:
          "Welcome to the Yoga World\n\nInhale the Future, Exhale the past,",
          image: _buildImage('1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Healthy Freaks Exercises",
          body:
          "Letting go is the hardest Asana",
          image: _buildImage('2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Cycling",
          body:
          "You cannot always control what goes on the outside. But you can always control what goes on the inside",
          image: _buildImage('3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Meditation",
          body:
          "The longest journey of any person is the journey inward",
          image: _buildImage('4.png'),
          decoration: pageDecoration,
        ),

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      skipColor: Colors.black,
      next: const Text(''),
      done: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600)),
      doneColor: Colors.black,
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: stuntcolor(Color(0xff000000)),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          )
      ),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Welcome')),
      body:
      Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Stack(
            children: <Widget>[
        Image.network("https://github.com/amfoss/tasks/blob/main/task-6/resources/welcome.png?raw=true"),
      Container(
        child: Align(
          alignment: Alignment(0.01, -0.4),
          child: Text("N RIZWAN",style: TextStyle(

              fontSize: 25.0)
          )
        )
      ),
              Container(
                  child: Align(
                      alignment: Alignment(0.01, -0.2),
                      child: Text("Indie Game Developer\nComputer Enthusiast",style: TextStyle(

                          fontSize: 20.0)
                      )
                  )
              ),
              Container(
                  child: Align(
                      alignment: Alignment(0.01, 0.2),
                      child: Text("Looking forward to build\n a VR Game using Unity",style: TextStyle(

                          fontSize: 20.0)
                      )
                  )
              )


      ],
    ),
    )
    );
  }
}
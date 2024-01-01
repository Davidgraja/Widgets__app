import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderOne extends StatelessWidget {
  const SliderOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: const _SliderView(),
    );
  }
}


class _SliderView extends StatelessWidget {
  const _SliderView();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Slider con su funcionamiento basico'),
            _CustomSlider(),
            Text('Slider mas personalizado , con división y label del rango actual'),
            _CustomSliderTwo(),
            Text('Slider para usuarios de IOS'),
            _CustomCupertinoSlider(),
            Text('Slider.adaptive , constructor que permite adaptar el slider segun la plataforma '),
            _CustomAdaptativeSlider()
          ],
        ),
      ),
    );
  }
}

class _CustomSlider extends StatefulWidget {
  const _CustomSlider();

  @override
  State<_CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<_CustomSlider> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      onChanged: (double value) {
        setState(() {
          sliderValue = value;
        });
      },
      min: 0.0,
      max: 100.0,
      activeColor: Colors.green.shade300, // color para cuando este activo el slider
      inactiveColor:Colors.green.shade100,
      thumbColor: Colors.red.shade400,
      onChangeStart: (value) {
        print('Event onChangeStart , value :$value'); // evento al tocar e iniciar el slider
      },
      onChangeEnd: (value) {
        print('event onChangeEnd , value :$value'); // evento al soltar y terminar el slider
      },
    );
  }
}


class _CustomSliderTwo extends StatefulWidget {
  const _CustomSliderTwo();

  @override
  State<_CustomSliderTwo> createState() => _CustomSliderTwoState();
}

class _CustomSliderTwoState extends State<_CustomSliderTwo> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      onChanged: (double value) {
        setState(() {
          sliderValue = value;
        });
      },
      min: 0.0,
      max: 20.0,
      divisions: 4,
      label: '${sliderValue.toInt()}',
      allowedInteraction: SliderInteraction.tapAndSlide, //Comportamiento del slider
    );
  }
}

class _CustomCupertinoSlider extends StatefulWidget {
  const _CustomCupertinoSlider();

  @override
  State<_CustomCupertinoSlider> createState() => _CustomCupertinoSliderState();
}

class _CustomCupertinoSliderState extends State<_CustomCupertinoSlider> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
      value: sliderValue,
      onChanged: (double value) {
        setState(() {
          sliderValue = value;
        });
      },
      min: 0.0,
      max: 20.0,
      divisions: 4,
    );
  }
}

class _CustomAdaptativeSlider extends StatefulWidget {
  const _CustomAdaptativeSlider();

  @override
  State<_CustomAdaptativeSlider> createState() => _CustomAdaptativeSliderState();
}

class _CustomAdaptativeSliderState extends State<_CustomAdaptativeSlider> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      value: sliderValue,
      onChanged: (double value) {
        setState(() {
          sliderValue = value;
        });
      },
      min: 0.0,
      max: 20.0,
      divisions: 4,
    );
  }
}





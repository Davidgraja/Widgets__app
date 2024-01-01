import 'package:flutter/material.dart';

class SliderTwo extends StatelessWidget {
  const SliderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RangeSlider'),
      ),
      body: _SliderView(),
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
              _CustomRangeSlider(),
            _CustomRangeSliderTwo()
          ],
        ),
      ),
    );
  }
}

class _CustomRangeSlider extends StatefulWidget {
  const _CustomRangeSlider();

  @override
  State<_CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<_CustomRangeSlider> {
  RangeValues sliderValues = RangeValues(1.0 , 10.0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: sliderValues,
          onChanged: ( RangeValues value) {
            setState(() {
              sliderValues = value;
            });
          },
          min: 1.0,
          max: 100.0,
        ),

       Text('Rango : De ${sliderValues.start.toInt()} a ${sliderValues.end.toInt()} '),
      ],
    );
  }
}

class _CustomRangeSliderTwo extends StatefulWidget {
  const _CustomRangeSliderTwo();

  @override
  State<_CustomRangeSliderTwo> createState() => _CustomRangeSliderTwoState();
}

class _CustomRangeSliderTwoState extends State<_CustomRangeSliderTwo> {
  RangeValues sliderValues = RangeValues(1.0 , 10.0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: sliderValues,
          onChanged: ( RangeValues value) {
            setState(() {
              sliderValues = value;
            });
          },
          min: 1.0,
          max: 100.0,
          divisions: 10,
          labels: RangeLabels('${sliderValues.start.toInt()}' , '${sliderValues.end.toInt()}'),
        ),

        Text('Rango : De ${sliderValues.start.toInt()} a ${sliderValues.end.toInt()}'),
      ],
    );
  }
}


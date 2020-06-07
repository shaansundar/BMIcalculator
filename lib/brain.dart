import 'dart:math';
class BmiCalculate{
  BmiCalculate({this.weight,this.height});
  final int height;
  final int weight;
  double _x;
  String Bmivalue()
  {
    _x=(weight/pow(height/100,2));
    return _x.toStringAsFixed(1);
  }
  String BmiMeaning()
  {
    if(_x>30.0)
      {
        return 'OBESE';
      }
    else if(_x>25.0)
      {
        return 'OVERWEIGHT';
      }
    else if(_x>18.5)
      {
        return 'NORMAL';
      }
    else{
      return'UNDERWEIGHT';
    }
  }
  String BmiInterpretation()
  {
    if(_x>30.0)
    {
      return 'You should put down on weight!';
    }
    else if(_x>25.0)
    {
      return 'You are on the verge, start excersising';
    }
    else if(_x>18.5)
    {
      return 'Fit and Fine!';
    }
    else{
      return'Eat more and put on some weight!';
    }
  }
}
// 8. The Temperature Converter: It’s hot out! Let’s make a converter
// based on the steps here.
// a. Store a Celsius temperature into a variable.
// b. Convert it to Fahrenheit & output “NNoC is NNoF”.
// c. Now store a Fahrenheit temperature into a variable.
// d. Convert it to Celsius & output “NNoF is NNoC”.

void main(){
  num CelciusTemperature = 100;
  num FahrenheitTemperature = 100;
  //celcius to fahrenheit (100°C × 9/5) + 32 = 212°F
  num ConversionCelciusToFahrenheit = double.parse(((CelciusTemperature * (9/5)) + 32).toStringAsFixed(2));
  print("NNoC is NNoF : $ConversionCelciusToFahrenheit");
  //fahrenheit to celcius (100°F − 32) × 5/9 = 37.778°C
  //double.parse(TotalObtainedNumbers).toStringAsFixed(2)) will return only 2 digits after the decimal
  num ConverionFahrenheitToCelcius = double.parse(((FahrenheitTemperature - 32) * (5/9)).toStringAsFixed(2));
  print("NNoF is NNoC : $ConverionFahrenheitToCelcius");
}
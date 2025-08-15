import 'dart:math';

double calculateBmi(int weightKg, double heightCm) {
  return weightKg / pow(heightCm / 100, 2);
}

(String, String) classifyBmi(double bmi) {
  if (bmi < 18.5) {
    return (
      'UNDERWEIGHT',
      'Your weight is below the healthy range. Try eating more balanced meals with enough calories and nutrients.',
    );
  } else if (bmi < 25) {
    return (
      'NORMAL',
      'Your weight is within the healthy range. Keep following a balanced diet and staying active.',
    );
  } else if (bmi < 30) {
    return (
      'OVERWEIGHT',
      'Your weight is above the healthy range. Consider being more active and making healthier food choices.',
    );
  } else {
    return (
      'OBESE',
      'Your weight is much higher than the healthy range. It\'s best to seek advice from a healthcare professional.',
    );
  }
}

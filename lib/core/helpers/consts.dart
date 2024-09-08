import 'package:blood_donation/feature/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

List<OnboardingModel> onboardList = [
  OnboardingModel(
      text:
          'قطرة دم منك يمكن أن تعني الحياة لشخص آخر. تبرعك هو مفتاح الأمل، وبدونه قد تضيع حياة',
      image: 'assets/images/onboarding_3.jpg'),
  OnboardingModel(
      text:
          'الدم هو أثمن ما يمكنك تقديمه. بتبرعك، لا تمنح حياة واحدة فقط، بل تعيد الأمل لأسر وأصدقاء في انتظار أعزائهم',
      image: 'assets/images/onboarding_4.jpg'),
  OnboardingModel(
      text:
          'عندما تتبرع بدمك، أنت تمنح قلبًا الفرصة ليستمر في النبض. كل وحدة دم قد تنقذ حياة كاملة، فكن أنت المنقذ',
      image: 'assets/images/onboarding_6.png')
];

bool onboarding = false;

const kPrimaryColor = Color(0xff9A0C0B);

List<String> kBloodTypeList = ['A', 'B', 'O', 'AB'];
List<String> kEgyptGovernorates = [
  'القاهرة',
  'الجيزة',
  'الإسكندرية',
  'الدقهلية',
  'البحر الأحمر',
  'البحيرة',
  'الفيوم',
  'الغربية',
  'الإسماعيلية',
  'المنوفية',
  'المنيا',
  'القليوبية',
  'الوادي الجديد',
  'السويس',
  'اسوان',
  'اسيوط',
  'بني سويف',
  'بورسعيد',
  'دمياط',
  'الشرقية',
  'جنوب سيناء',
  'كفر الشيخ',
  'مطروح',
  'الأقصر',
  'قنا',
  'شمال سيناء',
  'سوهاج',
];

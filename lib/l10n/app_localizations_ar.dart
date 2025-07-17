// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class HtUiKitLocalizationsAr extends HtUiKitLocalizations {
  HtUiKitLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get networkError => 'يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get serverError => 'حدث خطأ في الخادم. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get unknownError => 'حدث خطأ غير معروف.';

  @override
  String get operationFailedError => 'تعذرت إتمام العملية.';

  @override
  String get forbiddenError => 'ليس لديك الإذن لتنفيذ هذا الإجراء.';

  @override
  String get unauthorizedError =>
      'قد تكون جلستك قد انتهت. يرجى محاولة تسجيل الدخول مرة أخرى.';

  @override
  String get notFoundError => 'تعذر العثور على العنصر المطلوب.';

  @override
  String get authenticationError =>
      'فشلت المصادقة. يرجى التحقق من بيانات الاعتماد الخاصة بك.';

  @override
  String get badRequestError => 'كانت هناك مشكلة في طلبك.';

  @override
  String get invalidInputError =>
      'المعلومات المقدمة غير صالحة. يرجى التحقق والمحاولة مرة أخرى.';

  @override
  String get retryButtonText => 'إعادة المحاولة';
}

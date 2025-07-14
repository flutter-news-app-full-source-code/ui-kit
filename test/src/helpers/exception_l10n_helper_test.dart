import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ht_shared/ht_shared.dart';
import 'package:ht_ui_kit/ht_ui_kit.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    Locale locale = const Locale('en'),
  }) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          HtUiKitLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: HtUiKitLocalizations.supportedLocales,
        locale: locale,
        home: widget,
      ),
    );
  }
}

void main() {
  group('HtHttpExceptionL10n', () {
    // A list of all concrete exception types to be tested.
    final exceptions = <HtHttpException>[
      const AuthenticationException(''),
      const BadRequestException(''),
      const ForbiddenException(''),
      const InvalidInputException(''),
      const NetworkException(),
      const NotFoundException(''),
      const OperationFailedException(''),
      const ServerException(''),
      const UnauthorizedException(''),
      const UnknownException(''),
    ];

    // A map of exception types to their expected English messages.
    const expectedMessagesEn = {
      AuthenticationException:
          'Authentication failed. Please check your credentials.',
      BadRequestException: 'There was a problem with your request.',
      ForbiddenException: 'You do not have permission to perform this action.',
      InvalidInputException:
          'The information provided is invalid. Please check and try again.',
      NetworkException: 'Please check your internet connection.',
      NotFoundException: 'The requested item could not be found.',
      OperationFailedException: 'The operation could not be completed.',
      ServerException: 'A server error occurred. Please try again later.',
      UnauthorizedException:
          'Your session may have expired. Please try signing in again.',
      UnknownException: 'An unknown error occurred.',
    };

    // A map of exception types to their expected Arabic messages.
    const expectedMessagesAr = {
      AuthenticationException:
          'فشلت المصادقة. يرجى التحقق من بيانات الاعتماد الخاصة بك.',
      BadRequestException: 'كانت هناك مشكلة في طلبك.',
      ForbiddenException: 'ليس لديك الإذن لتنفيذ هذا الإجراء.',
      InvalidInputException:
          'المعلومات المقدمة غير صالحة. يرجى التحقق والمحاولة مرة أخرى.',
      NetworkException: 'يرجى التحقق من اتصالك بالإنترنت.',
      NotFoundException: 'تعذر العثور على العنصر المطلوب.',
      OperationFailedException: 'تعذرت إتمام العملية.',
      ServerException: 'حدث خطأ في الخادم. يرجى المحاولة مرة أخرى لاحقًا.',
      UnauthorizedException:
          'قد تكون جلستك قد انتهت. يرجى محاولة تسجيل الدخول مرة أخرى.',
      UnknownException: 'حدث خطأ غير معروف.',
    };

    group('English Localizations (en)', () {
      for (final exception in exceptions) {
        testWidgets(
            'should return correct English message for ${exception.runtimeType}',
            (tester) async {
          await tester.pumpApp(
            Builder(
              builder: (context) {
                final message = exception.toFriendlyMessage(context);
                final expected = expectedMessagesEn[exception.runtimeType];
                expect(message, equals(expected));
                return const SizedBox();
              },
            ),
          );
        });
      }
    });

    group('Arabic Localizations (ar)', () {
      for (final exception in exceptions) {
        testWidgets(
            'should return correct Arabic message for ${exception.runtimeType}',
            (tester) async {
          await tester.pumpApp(
            Builder(
              builder: (context) {
                final message = exception.toFriendlyMessage(context);
                final expected = expectedMessagesAr[exception.runtimeType];
                expect(message, equals(expected));
                return const SizedBox();
              },
            ),
            locale: const Locale('ar'),
          );
        });
      }
    });
  });
}

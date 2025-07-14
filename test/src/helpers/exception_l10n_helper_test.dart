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
  });
}

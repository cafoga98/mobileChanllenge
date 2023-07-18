// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `No Internet conection`
  String get noConnection {
    return Intl.message(
      'No Internet conection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Problems connecting to the server`
  String get timeOut {
    return Intl.message(
      'Problems connecting to the server',
      name: 'timeOut',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `No authorization for application`
  String get unauthorised {
    return Intl.message(
      'No authorization for application',
      name: 'unauthorised',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the current address fields before adding a new one`
  String get completeField {
    return Intl.message(
      'Please fill in the current address fields before adding a new one',
      name: 'completeField',
      desc: '',
      args: [],
    );
  }

  /// `Cannot delete this field`
  String get deleteNoAllow {
    return Intl.message(
      'Cannot delete this field',
      name: 'deleteNoAllow',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save the information, please try again later`
  String get noSaveLocalData {
    return Intl.message(
      'Failed to save the information, please try again later',
      name: 'noSaveLocalData',
      desc: '',
      args: [],
    );
  }

  /// `Problems connecting to internal database, please try again later`
  String get timeOutLocal {
    return Intl.message(
      'Problems connecting to internal database, please try again later',
      name: 'timeOutLocal',
      desc: '',
      args: [],
    );
  }

  /// `Mandatory field`
  String get mandatoryField {
    return Intl.message(
      'Mandatory field',
      name: 'mandatoryField',
      desc: '',
      args: [],
    );
  }

  /// `Could not launch`
  String get noLaunch {
    return Intl.message(
      'Could not launch',
      name: 'noLaunch',
      desc: '',
      args: [],
    );
  }

  /// `Successful registration`
  String get successfulRegistration {
    return Intl.message(
      'Successful registration',
      name: 'successfulRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surname {
    return Intl.message(
      'Surname',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Birthdate`
  String get birthdate {
    return Intl.message(
      'Birthdate',
      name: 'birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Marvel`
  String get welcome {
    return Intl.message(
      'Welcome to Marvel',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Your information`
  String get yourInformation {
    return Intl.message(
      'Your information',
      name: 'yourInformation',
      desc: '',
      args: [],
    );
  }

  /// `Registered addresses`
  String get registeredAddresses {
    return Intl.message(
      'Registered addresses',
      name: 'registeredAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get author {
    return Intl.message(
      'Author',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Tap for more info`
  String get moreInfo {
    return Intl.message(
      'Tap for more info',
      name: 'moreInfo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

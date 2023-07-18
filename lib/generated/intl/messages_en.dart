// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "author": MessageLookupByLibrary.simpleMessage("Author"),
        "birthdate": MessageLookupByLibrary.simpleMessage("Birthdate"),
        "completeField": MessageLookupByLibrary.simpleMessage(
            "Please fill in the current address fields before adding a new one"),
        "deleteNoAllow":
            MessageLookupByLibrary.simpleMessage("Cannot delete this field"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "mandatoryField":
            MessageLookupByLibrary.simpleMessage("Mandatory field"),
        "moreInfo": MessageLookupByLibrary.simpleMessage("Tap for more info"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "noConnection":
            MessageLookupByLibrary.simpleMessage("No Internet conection"),
        "noData": MessageLookupByLibrary.simpleMessage("No Data"),
        "noLaunch": MessageLookupByLibrary.simpleMessage("Could not launch"),
        "noSaveLocalData": MessageLookupByLibrary.simpleMessage(
            "Failed to save the information, please try again later"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registeredAddresses":
            MessageLookupByLibrary.simpleMessage("Registered addresses"),
        "successfulRegistration":
            MessageLookupByLibrary.simpleMessage("Successful registration"),
        "surname": MessageLookupByLibrary.simpleMessage("Surname"),
        "timeOut": MessageLookupByLibrary.simpleMessage(
            "Problems connecting to the server"),
        "timeOutLocal": MessageLookupByLibrary.simpleMessage(
            "Problems connecting to internal database, please try again later"),
        "unauthorised": MessageLookupByLibrary.simpleMessage(
            "No authorization for application"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome to Marvel"),
        "yourInformation":
            MessageLookupByLibrary.simpleMessage("Your information")
      };
}

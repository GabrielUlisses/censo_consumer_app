import 'dart:developer';

import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';

String errorToLog(Object error, StackTrace _stack){
  return """---------- Error :----------\n
  $error\n
  ---------- STACK TRACE :----------\n
  $_stack""";
}

void logError(Object error, StackTrace _stack){
  if(error is IError){
    return error.log();
  }
  return log(errorToLog(error, _stack));
}

void printError(Object error, StackTrace _stack, [String? description]){
  if(error is IError){
    return print(error.logMessage);
  }
  return print(errorToLog(error, _stack));
}
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class AppLogger {
  static const String _tag = 'WhisperApp';
  
  static void debug(String message, {String? tag, Object? error, StackTrace? stackTrace, Map<String, dynamic>? data}) {
    final logTag = tag ?? _tag;
    
    if (kDebugMode) {
      print('[$logTag] DEBUG: $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
      if (error != null) {
        print('[$logTag] ERROR: $error');
      }
      if (stackTrace != null) {
        print('[$logTag] STACK: $stackTrace');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 500,
      error: error,
      stackTrace: stackTrace,
    );
  }
  
  static void info(String message, {String? tag, Map<String, dynamic>? data}) {
    final logTag = tag ?? _tag;
    
    if (kDebugMode) {
      print('[$logTag] INFO: $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 800,
    );
  }
  
  static void warning(String message, {String? tag, Object? error, Map<String, dynamic>? data}) {
    final logTag = tag ?? _tag;
    
    if (kDebugMode) {
      print('[$logTag] WARNING: $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
      if (error != null) {
        print('[$logTag] WARNING ERROR: $error');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 900,
      error: error,
    );
  }
  
  static void error(String message, {String? tag, Object? error, StackTrace? stackTrace, Map<String, dynamic>? data}) {
    final logTag = tag ?? _tag;
    
    if (kDebugMode) {
      print('[$logTag] ERROR: $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
      if (error != null) {
        print('[$logTag] ERROR DETAILS: $error');
      }
      if (stackTrace != null) {
        print('[$logTag] STACK TRACE: $stackTrace');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 1000,
      error: error,
      stackTrace: stackTrace,
    );
  }
  
  static void network(String message, {String? tag, Map<String, dynamic>? data}) {
    final logTag = '${tag ?? _tag}_NETWORK';
    
    if (kDebugMode) {
      print('[$logTag] $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 800,
    );
  }
  
  static void audio(String message, {String? tag, Map<String, dynamic>? data}) {
    final logTag = '${tag ?? _tag}_AUDIO';
    
    if (kDebugMode) {
      print('[$logTag] $message');
      if (data != null) {
        print('[$logTag] DATA: $data');
      }
    }
    
    developer.log(
      message,
      name: logTag,
      level: 800,
    );
  }
}
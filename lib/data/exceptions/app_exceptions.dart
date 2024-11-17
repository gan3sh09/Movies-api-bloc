// ignore_for_file: prefer_typing_uninitialized_variables

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  const AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message]) : super('', 'No Internet Connection');
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message])
      : super(message, 'You don\'t have access to this');
}

class RequestTimeOutException extends AppExceptions {
  RequestTimeOutException([String? message])
      : super(message, 'Request Time Out');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, '');
}

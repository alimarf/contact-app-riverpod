String extractErrorMessage(Object error) {
  final message = error.toString();
  final regex = RegExp(r'Exception: (.+)');
  final match = regex.firstMatch(message);
  return match?.group(1) ?? 'Unexpected error';
}

class ValidationException implements Exception {
  String message;
  ValidationException(this.message);

  @override
  String toString() {
    return "Validation Exception: $message";
  }
}

class AuthenticationException implements Exception {
  String message;
  AuthenticationException(this.message);

  @override
  String toString() {
    return "Auth Exception: $message";
  }
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("username required");
    } else if (password == "") {
      throw ValidationException("password required");
    } else if (username != "admin" || password != "admin123") {
      throw AuthenticationException("Invalid username/password");
    }
  }
}

void main(List<String> args) {
  try {
    Validation.validate("", ""); // validation error
    Validation.validate("Hello", "Budi"); // authentication error
  } on ValidationException catch (e, stacktrace){ // stacktrace to get what line, cause, dll error occur
    print("Validation Error: ${e.message}\nin ${stacktrace.toString()}");
  } on AuthenticationException catch (e, stacktrace) {
    print("Auth Exception: ${e.message}");
  } catch (e, stacktrace) {
    print("Unkhown Error: ${e.toString()}\nin ${stacktrace.toString()}");
  } finally {
    print("Login Process Finished");
  }
}

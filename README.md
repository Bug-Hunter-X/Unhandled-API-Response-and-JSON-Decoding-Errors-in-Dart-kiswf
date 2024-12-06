# Unhandled API Response and JSON Decoding Errors in Dart

This repository demonstrates a common error in Dart applications that involves fetching data from an API and handling potential errors during the process.

The `bug.dart` file shows code that attempts to fetch data, decode JSON and then print the names of items.  However, it lacks robust error handling for scenarios such as non-200 HTTP status codes and JSON decoding failures. The `bugSolution.dart` file provides an improved version with better error handling. 

## How to run the code

1. Clone this repository.
2. Ensure you have Dart SDK installed.
3. Run `dart bug.dart` and `dart bugSolution.dart` to observe the differences in behavior and error handling.

## Improvements in bugSolution.dart

* **More specific exception handling:** The improved code provides more specific exception handling, catching `FormatException` in case of JSON decoding errors, and giving more context in other errors.
* **Better error messages:** Error messages provide more details, including the response status code and the specific exception that occurred, making debugging easier.
* **Optional type checking:** Use of `dynamic` can be replaced with `Map<String,dynamic>` when the type is known, for better type safety.
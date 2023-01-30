import '../response/status.dart';

class ApiResponse<T> {
  T? data;
  Status? status;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.complted() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return 'Status: $status \nb Message: $message \n Data: $data';
  }
}

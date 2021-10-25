class BBRespons<T> {
  Status status = Status.FRESH;
  String? message;
  T? data;

  BBRespons.loading() : status = Status.LOADING;
  BBRespons.fresh() : status = Status.FRESH;
  BBRespons.completed(this.data) : status = Status.COMPLETED;
  BBRespons.error(this.message) : status = Status.ERROR;
 
}

enum Status {
  LOADING,
  COMPLETED,
  FRESH,
  ERROR,
}

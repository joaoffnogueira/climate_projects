enum BaseLoadingState {
  initial,
  loading,
  loaded,
  success,
  validationSuccess,
  empty,
  error,
  validationError,
}

abstract class BaseState {
  BaseState({
    required this.loading,
    required this.errorMessage,
  });

  bool get isLoading => loading == BaseLoadingState.loading;
  bool get isLoaded => loading == BaseLoadingState.loaded;
  bool get isSuccess => loading == BaseLoadingState.success;
  bool get isError => loading == BaseLoadingState.error;

  final BaseLoadingState loading;
  final String? errorMessage;
}

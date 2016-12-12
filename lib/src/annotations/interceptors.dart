part of jaguar.src.annotations;

abstract class RouteWrapper<WrapperType> {
  /// Id of the interceptor
  String get id;

  Map<Symbol, MakeParam> get makeParams;

  WrapperType createInterceptor();
}

/// Base class for interceptor
class Interceptor {
  const Interceptor();
}

class ProvideAsInterceptorResult {
  final Type asInterceptor;

  const ProvideAsInterceptorResult(this.asInterceptor);
}

abstract class MakeParam {}

class MakeParamFromType implements MakeParam {
  final Type type;

  const MakeParamFromType(this.type);
}

/// Instantiates a parameter in constructor or method as non-constant instance
class MakeParamFromMethod implements MakeParam {
  final Symbol methodName;

  const MakeParamFromMethod(this.methodName);
}
enum EnvironmentType {
  development('dev');
  final String env;
  const EnvironmentType(this.env);
}

class EnvironmentConfig {
  final String environment;
  final String apiBase;

  EnvironmentConfig({
    required this.environment,
    required this.apiBase,
  });
}

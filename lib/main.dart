// ignore_for_file: prefer_function_declarations_over_variables
import 'package:aws_lambda_dart_runtime/aws_lambda_dart_runtime.dart';

void main() async {
  /// This demo's handling an API Gateway request.
  final Handler<AwsApiGatewayEvent> handler = (context, event) async {
    print('Running at ${DateTime.now()}');
    print('Request ID: ${context.requestId}');
    print('Request body: ${event.body}');

    final response = {'message': 'hello ${event.body ?? 'world'}'};
    return AwsApiGatewayResponse.fromJson(response);
  };

  /// The Runtime is a singleton. You can define the handlers as you wish.
  Runtime()
    ..registerHandler<AwsApiGatewayEvent>(
      'main.handler',
      handler,
    )
    ..invoke();
}

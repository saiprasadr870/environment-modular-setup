resource "aws_apigatewayv2_api" "api" {
  name          = "app-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "api_stage" {
  api_id      = aws_apigatewayv2_api.api.id
  name        = "$default"
  auto_deploy = true
}

resource "aws_apigatewayv2_integration" "alb_integration" {
  api_id           = aws_apigatewayv2_api.api.id
  integration_type = "HTTP_PROXY"
  integration_uri  = "http://${var.load_balancer_dns}"
}

resource "aws_apigatewayv2_route" "default_route" {
  api_id    = aws_apigatewayv2_api.api.id
  route_key = "ANY /{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.alb_integration.id}"
}

output "api_endpoint" {
  value = aws_apigatewayv2_api.api.api_endpoint
}

resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}



variable "parameters" {
  default = [
    # frontend
    { name = "dev.frontend.catalogue_url", value = "http://catalogue-dev.durgasri.in:8080/", type = "String" },
    { name = "dev.frontend.user_url", value = "http://user-dev.durgasri.in:8080/", type = "String" },
    { name = "dev.frontend.cart_url", value = "http://cart-dev.durgasri.in:8080/", type = "String" },
    { name = "dev.frontend.shipping_url", value = "http://shipping-dev.durgasri.in:8080/", type = "String" },
    { name = "dev.frontend.payment_url", value = "http://payment-dev.durgasri.in:8080/", type = "String" },
    # catalogue
    { name = "dev.catalogue.mongo_host", value = "mongodb-dev.durgasri.in", type = "String" },
    { name = "dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.durgasri.in:27017/catalogue", type = "String" },



  ]
}
# {{ lookup('aws_ssm', '{{ env }}.catalogue.mongo_url', region='us-east-1' ) }}
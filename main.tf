resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}


# String
#  SecureString

variable "parameters" {
  default = [
    ### cloudflare
    {name = "api_token", value = "S9KK4auCcLL7ScEswtZQgCWQ-nj8Tn3NKkQCVOnx", type = "String"},



    ### expense-ansible-parameters
#     {name = "expense.frontend.backend_url", value = "http://backend.chowdary.cloud:8080/", type = "String"}, # frontend
#     {name = "expense.backend.DB_HOST", value = "mysql.chowdary.cloud", type = "String"},                     # backend
#     {name = "expense.backend.DB_PASS", value = "ExpenseApp@1", type = "SecureString"},                          # backend
#     {name = "expense.mysql.DB_PASS", value = "ExpenseApp@1", type = "SecureString"},                             # mysql

  ]
}
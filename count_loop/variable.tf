variable "dashboard_names" {
  type    = list(string)
  description = "Names of the dashboards"
}

variable "widget_titles" {
  type    = list(string)
  description = "Titles of the widgets for each dashboard"
}

variable "widget_queries" {
  type    = list(string)
  description = "NRQL queries for each widget"
}

variable "widget_row" {
  type    = list(number)
  description = "Row position for each widget"
}

variable "widget_column" {
  type    = list(number)
  description = "Column position for each widget"
}

variable "widget_width" {
  type    = list(number)
  description = "Width of each widget"
}

variable "widget_height" {
  type    = list(number)
  description = "Height of each widget"
}

# variable "widget_query_type" {
#   type    = list(string)
#   description = "Type of NRQL query for each widget"
# }

resource "newrelic_one_dashboard" "custom_dashboards" {
  count = length(var.dashboard_names)
  name        = var.dashboard_names[count.index]
  permissions = "public_read_only"

  page {
    name = "Custom Dashboard - ${var.dashboard_names[count.index]}"

    widget_billboard {
      title  = var.widget_titles[count.index]
      row    = var.widget_row[count.index]
      column = var.widget_column[count.index]
      width  = var.widget_width[count.index]
      height = var.widget_height[count.index]

      nrql_query {
        query = var.widget_queries[count.index]
        //query_type = var.widget_query_type[count.index]
      }
    }
  }
}

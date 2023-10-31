dashboard_names = ["Dashboard1", "Dashboard2"]
widget_titles = ["Widget 1", "Widget 2"]
widget_queries = [
  "FROM Transaction SELECT rate(count(*), 1 minute)",
  "FROM Transaction SELECT average(duration) FACET appName"
]
widget_row = [1, 2]
widget_column = [1, 1]
widget_width = [3, 6]
widget_height = [3, 3]
//widget_query_type = ["normal", "normal"]

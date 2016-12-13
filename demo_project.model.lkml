connection: "dev_metrics"
persist_for: "6 hours"     # persist all query results for 1 hour

include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: demo_table {
  description: "Test demo_table table with structured data"
}

connection: "dev_metrics"
persist_for: "6 hours"     # persist all query results for 1 hour

include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: columns {
  description: "Test columns table with structured data"
}

connection: "dev_metrics"

view: routines {
  sql_table_name: information_schema.columns ;;
  # derived_table: {        ## limit volume of data to help with performance
  #   sql:
  #     SELECT data FROM public.raw_logs
  #     LIMIT 1000000
  #     OFFSET 50000000;;
  # }

  dimension: table_name {
    type:  string
    sql: ${TABLE}.table_name;;
  }

  dimension: column_name {
    type:  string
    sql: ${TABLE}.column_name;;
  }

  dimension: position {
    type:  number
    sql: ${TABLE}.ordinal_position;;
  }

  dimension: name {
    type:  string
    sql: ${TABLE}.udt_name;;
  }

  dimension: identifier {
    type:  number
    sql: ${TABLE}.dtd_identifier;;
  }
}

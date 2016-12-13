view: demo_table {
  sql_table_name: information_schema.columns ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: domain_schema {
    type: string
    sql: ${TABLE}.domain_schema ;;
  }

  dimension: dtd_identifier {
    type: string
    sql: ${TABLE}.dtd_identifier ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}.numeric_precision ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ordinal_position ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.table_schema ;;
  }

  dimension: udt_name {
    type: string
    sql: ${TABLE}.udt_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      table_name,
      column_name,
      domain_name,
      udt_name
    ]
  }
}

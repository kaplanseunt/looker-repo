# The name of this view in Looker is "Currency Conversion"
view: currency_conversion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_REPORTING.currency_conversion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: conv {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.conv_date ;;
  }

  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fcurr" in Explore.

  dimension: fcurr {
    type: string
    sql: ${TABLE}.fcurr ;;
  }

  dimension: kurst {
    type: string
    sql: ${TABLE}.kurst ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: tcurr {
    type: string
    sql: ${TABLE}.tcurr ;;
  }

  dimension: ukurs {
    type: number
    sql: ${TABLE}.ukurs ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ukurs {
    type: sum
    sql: ${ukurs} ;;  }
  measure: average_ukurs {
    type: average
    sql: ${ukurs} ;;  }
  measure: count {
    type: count
  }
}

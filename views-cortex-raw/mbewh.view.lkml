# The name of this view in Looker is "Mbewh"
view: mbewh {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.mbewh` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bklas" in Explore.

  dimension: bklas {
    type: string
    sql: ${TABLE}.bklas ;;
  }

  dimension: bwkey {
    type: string
    sql: ${TABLE}.bwkey ;;
  }

  dimension: bwtar {
    type: string
    sql: ${TABLE}.bwtar ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: lbkum {
    type: number
    sql: ${TABLE}.lbkum ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lbkum {
    type: sum
    sql: ${lbkum} ;;  }
  measure: average_lbkum {
    type: average
    sql: ${lbkum} ;;  }

  dimension: lfgja {
    type: string
    sql: ${TABLE}.lfgja ;;
  }

  dimension: lfmon {
    type: string
    sql: ${TABLE}.lfmon ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: matnr {
    type: string
    sql: ${TABLE}.matnr ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: peinh {
    type: number
    sql: ${TABLE}.peinh ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: salk3 {
    type: number
    sql: ${TABLE}.salk3 ;;
  }

  dimension: salkv {
    type: number
    sql: ${TABLE}.salkv ;;
  }

  dimension: stprs {
    type: number
    sql: ${TABLE}.stprs ;;
  }

  dimension: verpr {
    type: number
    sql: ${TABLE}.verpr ;;
  }

  dimension: vksal {
    type: number
    sql: ${TABLE}.vksal ;;
  }

  dimension: vprsv {
    type: string
    sql: ${TABLE}.vprsv ;;
  }
  measure: count {
    type: count
  }
}

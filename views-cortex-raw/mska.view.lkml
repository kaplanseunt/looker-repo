# The name of this view in Looker is "Mska"
view: mska {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.mska` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Charg" in Explore.

  dimension: charg {
    type: string
    sql: ${TABLE}.charg ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ersda {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ersda ;;
  }

  dimension: fsh_collection {
    type: string
    sql: ${TABLE}.fsh_collection ;;
  }

  dimension: fsh_salloc_qty {
    type: number
    sql: ${TABLE}.fsh_salloc_qty ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fsh_salloc_qty {
    type: sum
    sql: ${fsh_salloc_qty} ;;  }
  measure: average_fsh_salloc_qty {
    type: average
    sql: ${fsh_salloc_qty} ;;  }

  dimension: fsh_season {
    type: string
    sql: ${TABLE}.fsh_season ;;
  }

  dimension: fsh_season_year {
    type: string
    sql: ${TABLE}.fsh_season_year ;;
  }

  dimension: fsh_theme {
    type: string
    sql: ${TABLE}.fsh_theme ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension_group: kadll {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.kadll ;;
  }

  dimension: kaein {
    type: number
    sql: ${TABLE}.kaein ;;
  }

  dimension: kafll {
    type: string
    sql: ${TABLE}.kafll ;;
  }

  dimension: kaflq {
    type: string
    sql: ${TABLE}.kaflq ;;
  }

  dimension: kafls {
    type: string
    sql: ${TABLE}.kafls ;;
  }

  dimension: kaill {
    type: string
    sql: ${TABLE}.kaill ;;
  }

  dimension: kailq {
    type: string
    sql: ${TABLE}.kailq ;;
  }

  dimension: kails {
    type: string
    sql: ${TABLE}.kails ;;
  }

  dimension: kains {
    type: number
    sql: ${TABLE}.kains ;;
  }

  dimension: kajin {
    type: string
    sql: ${TABLE}.kajin ;;
  }

  dimension: kalab {
    type: number
    sql: ${TABLE}.kalab ;;
  }

  dimension: karue {
    type: string
    sql: ${TABLE}.karue ;;
  }

  dimension: kaspe {
    type: number
    sql: ${TABLE}.kaspe ;;
  }

  dimension: kaspr {
    type: string
    sql: ${TABLE}.kaspr ;;
  }

  dimension: kavei {
    type: number
    sql: ${TABLE}.kavei ;;
  }

  dimension: kavin {
    type: number
    sql: ${TABLE}.kavin ;;
  }

  dimension: kavla {
    type: number
    sql: ${TABLE}.kavla ;;
  }

  dimension: kavll {
    type: string
    sql: ${TABLE}.kavll ;;
  }

  dimension: kavlq {
    type: string
    sql: ${TABLE}.kavlq ;;
  }

  dimension: kavls {
    type: string
    sql: ${TABLE}.kavls ;;
  }

  dimension: kavsp {
    type: number
    sql: ${TABLE}.kavsp ;;
  }

  dimension: lfgja {
    type: string
    sql: ${TABLE}.lfgja ;;
  }

  dimension: lfmon {
    type: string
    sql: ${TABLE}.lfmon ;;
  }

  dimension: lgort {
    type: string
    sql: ${TABLE}.lgort ;;
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

  dimension: posnr {
    type: string
    sql: ${TABLE}.posnr ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: sgt_scat {
    type: string
    sql: ${TABLE}.sgt_scat ;;
  }

  dimension: sobkz {
    type: string
    sql: ${TABLE}.sobkz ;;
  }

  dimension: vbeln {
    type: string
    sql: ${TABLE}.vbeln ;;
  }

  dimension: werks {
    type: string
    sql: ${TABLE}.werks ;;
  }
  measure: count {
    type: count
  }
}

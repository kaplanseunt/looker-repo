# The name of this view in Looker is "Cepct"
view: cepct {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.cepct` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datbi {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datbi ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Is Deleted" in Explore.

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kokrs {
    type: string
    sql: ${TABLE}.kokrs ;;
  }

  dimension: ktext {
    type: string
    sql: ${TABLE}.ktext ;;
  }

  dimension: ltext {
    type: string
    sql: ${TABLE}.ltext ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: mctxt {
    type: string
    sql: ${TABLE}.mctxt ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: prctr {
    type: string
    sql: ${TABLE}.prctr ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: spras {
    type: string
    sql: ${TABLE}.spras ;;
  }
  measure: count {
    type: count
  }
}

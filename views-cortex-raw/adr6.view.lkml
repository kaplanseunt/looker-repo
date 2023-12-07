# The name of this view in Looker is "Adr6"
view: adr6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.adr6` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Addrnumber" in Explore.

  dimension: addrnumber {
    type: string
    sql: ${TABLE}.addrnumber ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: consnumber {
    type: string
    sql: ${TABLE}.consnumber ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_from {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_from ;;
  }

  dimension: dft_receiv {
    type: string
    sql: ${TABLE}.dft_receiv ;;
  }

  dimension: encode {
    type: string
    sql: ${TABLE}.encode ;;
  }

  dimension: flg_nouse {
    type: string
    sql: ${TABLE}.flg_nouse ;;
  }

  dimension: flgdefault {
    type: string
    sql: ${TABLE}.flgdefault ;;
  }

  dimension: home_flag {
    type: string
    sql: ${TABLE}.home_flag ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: persnumber {
    type: string
    sql: ${TABLE}.persnumber ;;
  }

  dimension: r3_user {
    type: string
    sql: ${TABLE}.r3_user ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: smtp_addr {
    type: string
    sql: ${TABLE}.smtp_addr ;;
  }

  dimension: smtp_srch {
    type: string
    sql: ${TABLE}.smtp_srch ;;
  }

  dimension: tnef {
    type: string
    sql: ${TABLE}.tnef ;;
  }

  dimension: valid_from {
    type: string
    sql: ${TABLE}.valid_from ;;
  }

  dimension: valid_to {
    type: string
    sql: ${TABLE}.valid_to ;;
  }
  measure: count {
    type: count
  }
}

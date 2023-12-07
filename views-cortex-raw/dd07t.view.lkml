# The name of this view in Looker is "Dd07t"
view: dd07t {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.dd07t` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "As4local" in Explore.

  dimension: as4local {
    type: string
    sql: ${TABLE}.as4local ;;
  }

  dimension: as4vers {
    type: string
    sql: ${TABLE}.as4vers ;;
  }

  dimension: ddlanguage {
    type: string
    sql: ${TABLE}.ddlanguage ;;
  }

  dimension: ddtext {
    type: string
    sql: ${TABLE}.ddtext ;;
  }

  dimension: domname {
    type: string
    sql: ${TABLE}.domname ;;
  }

  dimension: domval_hd {
    type: string
    sql: ${TABLE}.domval_hd ;;
  }

  dimension: domval_ld {
    type: string
    sql: ${TABLE}.domval_ld ;;
  }

  dimension: domvalue_l {
    type: string
    sql: ${TABLE}.domvalue_l ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: valpos {
    type: string
    sql: ${TABLE}.valpos ;;
  }
  measure: count {
    type: count
    drill_fields: [domname]
  }
}

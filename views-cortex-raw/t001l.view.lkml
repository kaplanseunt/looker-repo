# The name of this view in Looker is "T001l"
view: t001l {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.t001l` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Diskz" in Explore.

  dimension: diskz {
    type: string
    sql: ${TABLE}.diskz ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kunnr {
    type: string
    sql: ${TABLE}.kunnr ;;
  }

  dimension: lgobe {
    type: string
    sql: ${TABLE}.lgobe ;;
  }

  dimension: lgort {
    type: string
    sql: ${TABLE}.lgort ;;
  }

  dimension: lifnr {
    type: string
    sql: ${TABLE}.lifnr ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: mesbs {
    type: string
    sql: ${TABLE}.mesbs ;;
  }

  dimension: messt {
    type: string
    sql: ${TABLE}.messt ;;
  }

  dimension: oib_tnkassign {
    type: string
    sql: ${TABLE}.oib_tnkassign ;;
  }

  dimension: oig_itrfl {
    type: string
    sql: ${TABLE}.oig_itrfl ;;
  }

  dimension: oih_licno {
    type: string
    sql: ${TABLE}.oih_licno ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: parlg {
    type: string
    sql: ${TABLE}.parlg ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: spart {
    type: string
    sql: ${TABLE}.spart ;;
  }

  dimension: vkorg {
    type: string
    sql: ${TABLE}.vkorg ;;
  }

  dimension: vstel {
    type: string
    sql: ${TABLE}.vstel ;;
  }

  dimension: vtweg {
    type: string
    sql: ${TABLE}.vtweg ;;
  }

  dimension: werks {
    type: string
    sql: ${TABLE}.werks ;;
  }

  dimension: xblgo {
    type: string
    sql: ${TABLE}.xblgo ;;
  }

  dimension: xbufx {
    type: string
    sql: ${TABLE}.xbufx ;;
  }

  dimension: xhupf {
    type: string
    sql: ${TABLE}.xhupf ;;
  }

  dimension: xlong {
    type: string
    sql: ${TABLE}.xlong ;;
  }

  dimension: xress {
    type: string
    sql: ${TABLE}.xress ;;
  }
  measure: count {
    type: count
  }
}

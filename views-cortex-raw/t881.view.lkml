# The name of this view in Looker is "T881"
view: t881 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.t881` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Appl" in Explore.

  dimension: appl {
    type: string
    sql: ${TABLE}.appl ;;
  }

  dimension: atqnt {
    type: string
    sql: ${TABLE}.atqnt ;;
  }

  dimension: avg_rollup {
    type: string
    sql: ${TABLE}.avg_rollup ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: curt1 {
    type: string
    sql: ${TABLE}.curt1 ;;
  }

  dimension: curt2 {
    type: string
    sql: ${TABLE}.curt2 ;;
  }

  dimension: curt3 {
    type: string
    sql: ${TABLE}.curt3 ;;
  }

  dimension: date_det_poper {
    type: string
    sql: ${TABLE}.date_det_poper ;;
  }

  dimension: depld {
    type: string
    sql: ${TABLE}.depld ;;
  }

  dimension: dldnr {
    type: string
    sql: ${TABLE}.dldnr ;;
  }

  dimension: exit {
    type: string
    sql: ${TABLE}.exit ;;
  }

  dimension: fix {
    type: string
    sql: ${TABLE}.fix ;;
  }

  dimension: gcompress {
    type: string
    sql: ${TABLE}.gcompress ;;
  }

  dimension: gcurr {
    type: string
    sql: ${TABLE}.gcurr ;;
  }

  dimension: glflex {
    type: string
    sql: ${TABLE}.glflex ;;
  }

  dimension: glsip {
    type: string
    sql: ${TABLE}.glsip ;;
  }

  dimension: gzledger {
    type: string
    sql: ${TABLE}.gzledger ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kldnr {
    type: string
    sql: ${TABLE}.kldnr ;;
  }

  dimension: komp {
    type: string
    sql: ${TABLE}.komp ;;
  }

  dimension: lccur {
    type: string
    sql: ${TABLE}.lccur ;;
  }

  dimension: lctyp {
    type: string
    sql: ${TABLE}.lctyp ;;
  }

  dimension: logsys {
    type: string
    sql: ${TABLE}.logsys ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: occur {
    type: string
    sql: ${TABLE}.occur ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: orient_ledger {
    type: string
    sql: ${TABLE}.orient_ledger ;;
  }

  dimension: post {
    type: string
    sql: ${TABLE}.post ;;
  }

  dimension: quant {
    type: string
    sql: ${TABLE}.quant ;;
  }

  dimension: rccur {
    type: string
    sql: ${TABLE}.rccur ;;
  }

  dimension: rcopy {
    type: string
    sql: ${TABLE}.rcopy ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: rldnr {
    type: string
    sql: ${TABLE}.rldnr ;;
  }

  dimension: rollup {
    type: string
    sql: ${TABLE}.`rollup` ;;
  }

  dimension: shkz {
    type: string
    sql: ${TABLE}.shkz ;;
  }

  dimension: splitmethd {
    type: string
    sql: ${TABLE}.splitmethd ;;
  }

  dimension: subappl {
    type: string
    sql: ${TABLE}.subappl ;;
  }

  dimension: tab {
    type: string
    sql: ${TABLE}.tab ;;
  }

  dimension: trcur {
    type: string
    sql: ${TABLE}.trcur ;;
  }

  dimension: typ {
    type: string
    sql: ${TABLE}.typ ;;
  }

  dimension: v2post {
    type: string
    sql: ${TABLE}.v2post ;;
  }

  dimension: valutyp {
    type: string
    sql: ${TABLE}.valutyp ;;
  }

  dimension: vortrag {
    type: string
    sql: ${TABLE}.vortrag ;;
  }

  dimension: xcash_ledger {
    type: string
    sql: ${TABLE}.xcash_ledger ;;
  }

  dimension: xdldnr {
    type: string
    sql: ${TABLE}.xdldnr ;;
  }

  dimension: xleading {
    type: string
    sql: ${TABLE}.xleading ;;
  }
  measure: count {
    type: count
  }
}

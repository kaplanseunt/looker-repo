# The name of this view in Looker is "Distribution Channels Md"
view: distribution_channels_md {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_REPORTING.DistributionChannelsMD` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Client Mandt" in Explore.

  dimension: client_mandt {
    type: string
    description: "SAP Client Mandt"
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: distribution_channel_name_vtext {
    type: string
    description: "Name"
    sql: ${TABLE}.DistributionChannelName_VTEXT ;;
  }

  dimension: distribution_channel_vtweg {
    type: string
    description: "Distribution Channel"
    sql: ${TABLE}.DistributionChannel_VTWEG ;;
  }

  dimension: language_spras {
    type: string
    description: "Language Key"
    sql: ${TABLE}.Language_SPRAS ;;
  }
  measure: count {
    type: count
  }
}

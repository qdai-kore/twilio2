# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: tw_invoice_transactions_eom {
  hidden: yes
    join: tw_invoice_transactions_eom__data_rate {
      view_label: "Tw Invoice Transactions Eom: Data Rate"
      sql: LEFT JOIN UNNEST(${tw_invoice_transactions_eom.data_rate}) as tw_invoice_transactions_eom__data_rate ;;
      relationship: one_to_many
    }
    join: tw_invoice_transactions_eom__data_labels {
      view_label: "Tw Invoice Transactions Eom: Data Labels"
      sql: LEFT JOIN UNNEST(${tw_invoice_transactions_eom.data_labels}) as tw_invoice_transactions_eom__data_labels ;;
      relationship: one_to_many
    }
    join: tw_invoice_transactions_eom__data_enrichments {
      view_label: "Tw Invoice Transactions Eom: Data Enrichments"
      sql: LEFT JOIN UNNEST(${tw_invoice_transactions_eom.data_enrichments}) as tw_invoice_transactions_eom__data_enrichments ;;
      relationship: one_to_many
    }
    join: tw_invoice_transactions_eom__data_extended_sku_grouping {
      view_label: "Tw Invoice Transactions Eom: Data Extended Sku Grouping"
      sql: LEFT JOIN UNNEST(${tw_invoice_transactions_eom.data_extended_sku_grouping}) as tw_invoice_transactions_eom__data_extended_sku_grouping ;;
      relationship: one_to_many
    }
}
view: tw_invoice_transactions_eom {
  sql_table_name: `machine-learning-poc-385716.billing.tw_invoice_transactions_eom` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: created_date_time {
    type: string
    sql: ${TABLE}.created_date_time ;;
  }
  dimension: data_currency {
    type: string
    sql: ${TABLE}.data_currency ;;
  }
  dimension: data_enrichments {
    hidden: yes
    sql: ${TABLE}.data_enrichments ;;
  }
  dimension: data_event_time {
    type: string
    sql: ${TABLE}.data_event_time ;;
  }
  dimension: data_extended_sku_grouping {
    hidden: yes
    sql: ${TABLE}.data_extended_sku_grouping ;;
  }
  dimension: data_invoice_account_platform_id {
    type: string
    sql: ${TABLE}.data_invoice_account_platform_id ;;
  }
  dimension: data_invoice_account_primary_id {
    type: string
    sql: ${TABLE}.data_invoice_account_primary_id ;;
  }
  dimension: data_invoice_billing_period {
    type: string
    sql: ${TABLE}.data_invoice_billing_period ;;
  }
  dimension: data_invoice_period_status {
    type: string
    sql: ${TABLE}.data_invoice_period_status ;;
  }
  dimension: data_invoice_stream_type {
    type: string
    sql: ${TABLE}.data_invoice_stream_type ;;
  }
  dimension: data_labels {
    hidden: yes
    sql: ${TABLE}.data_labels ;;
  }
  dimension: data_owner_account_platform_id {
    type: string
    sql: ${TABLE}.data_owner_account_platform_id ;;
  }
  dimension: data_owner_account_primary_id {
    type: string
    sql: ${TABLE}.data_owner_account_primary_id ;;
  }
  dimension: data_quantity {
    type: number
    sql: ${TABLE}.data_quantity ;;
  }
  dimension: data_rate {
    hidden: yes
    sql: ${TABLE}.data_rate ;;
  }
  dimension: data_rate_type {
    type: string
    sql: ${TABLE}.data_rate_type ;;
  }
  dimension: data_sku_platform_id {
    type: string
    sql: ${TABLE}.data_sku_platform_id ;;
  }
  dimension: data_sku_primary_id {
    type: string
    sql: ${TABLE}.data_sku_primary_id ;;
  }
  dimension: data_source_platform_code {
    type: string
    sql: ${TABLE}.data_source_platform_code ;;
  }
  dimension: data_total {
    type: number
    sql: ${TABLE}.data_total ;;
  }
  dimension: data_transaction_direction {
    type: string
    sql: ${TABLE}.data_transaction_direction ;;
  }
  dimension: data_transaction_id {
    type: string
    sql: ${TABLE}.data_transaction_id ;;
  }
  dimension: data_unit_of_measure {
    type: string
    sql: ${TABLE}.data_unit_of_measure ;;
  }
  dimension_group: etl_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.etl_update ;;
  }
  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: tw_invoice_transactions_eom__data_rate {

  dimension: is_custom {
    type: yesno
    sql: is_custom ;;
  }
  dimension: price {
    type: string
    sql: price ;;
  }
  dimension: tw_invoice_transactions_eom__data_rate {
    type: string
    hidden: yes
    sql: tw_invoice_transactions_eom__data_rate ;;
  }
}

view: tw_invoice_transactions_eom__data_labels {

  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: tw_invoice_transactions_eom__data_labels {
    type: string
    hidden: yes
    sql: tw_invoice_transactions_eom__data_labels ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}

view: tw_invoice_transactions_eom__data_enrichments {

  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: tw_invoice_transactions_eom__data_enrichments {
    type: string
    hidden: yes
    sql: tw_invoice_transactions_eom__data_enrichments ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}

view: tw_invoice_transactions_eom__data_extended_sku_grouping {

  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: tw_invoice_transactions_eom__data_extended_sku_grouping {
    type: string
    hidden: yes
    sql: tw_invoice_transactions_eom__data_extended_sku_grouping ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}

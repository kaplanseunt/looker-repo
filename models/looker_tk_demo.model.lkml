# Define the database connection to be used for this model.
connection: "looker_partner_demo"

include: "/views/inventory_items.view"
include: "/views/order_items.view"
include: "/views/products.view"

include: "/views/users.view"
include: "/views/distribution_centers.view"
include: "/views/events.view"

include: "/views-cortex/currency_conversion.view"
include: "/views-cortex/billing.view"

include: "/views-cortex-raw/adr6.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: looker_tk_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_tk_demo_default_datagroup

explore: order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.order_id} =${inventory_items.id} ;;
    relationship: many_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${products.id}=${inventory_items.product_id} ;;
    relationship: many_to_one
  }
}

explore: users {
  #ismi Customer olarak görünecek.
  join: order_items {
    type: left_outer
    sql_on: ${users.id} =${order_items.user_id} ;;
    relationship: many_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${products.id}=${order_items.product_id} ;;
    relationship: many_to_one
  }
  join: distribution_centers {
    type: left_outer
    sql_on: ${distribution_centers.id}=${products.distribution_center_id} ;;
    relationship: many_to_one
  }
  join: events {
    type: left_outer
    sql_on: ${events.user_id}=${users.id} ;;
    relationship: many_to_one
  }
}


explore: billing {

  }

  explore: adr6 {}

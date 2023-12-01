# Define the database connection to be used for this model.
connection: "looker_partner_demo"

include: "/views/inventory_items.view"
include: "/views/order_items.view"
include: "/views/products.view"

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

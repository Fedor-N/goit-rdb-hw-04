SELECT
  order_details.order_id,
  order_details.product_id,
  order_details.quantity,
  products.price as order_price,
  o.date as order_date,
  customers.name as customer_name,
  customers.contact as customer_contact,
  customers.address as customer_address,
  customers.city as customer_city,
  customers.postal_code as customer_postal_code,
  customers.country as customer_country,
  products.name as product_name,
  categories.name as category_name,
  categories.description as category_description,
  employees.first_name as employee_first_name,
  employees.last_name as employee_last_name,
  employees.birthdate as employee_birthdate,
  employees.photo as employee_photo,
  employees.notes as employee_notes,
  shippers.name as shipper_name,
  shippers.phone as shipper_phone,
  suppliers.name as supplier_name,
  suppliers.contact as supplier_contact,
  suppliers.address as supplier_address,
  suppliers.city as supplier_city,
  suppliers.postal_code as supplier_postal_code,
  suppliers.country as supplier_country
FROM
  order_details
  INNER JOIN orders AS o ON order_details.order_id = o.id
  INNER JOIN customers ON o.customer_id = customers.id
  INNER JOIN products ON order_details.product_id = products.id
  INNER JOIN categories ON products.category_id = categories.id
  INNER JOIN employees ON o.employee_id = employees.employee_id
  INNER JOIN shippers ON o.shipper_id = shippers.id
  INNER JOIN suppliers ON products.supplier_id = suppliers.id;
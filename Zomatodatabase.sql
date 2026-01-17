create index ind_rest on Restaurants(restaurant_id);

create index ind_orders on Orders(restaurant_id);

explain analyze select o.order_id, r.name from Orders o join Restaurants r on o.restaurant_id = r.restaurant_id where r.city = 'Los Angeles';
SELECT o.`Order ID` AS `Order ID`,
       o.`Order Priority` AS `Order Priority`,
       o.Market AS Market,
       od.Sales AS Sales,
       od.Quantity AS Quantity,
       od.`Shipping Cost` AS `Shipping Cost`,
       s.City AS City,
       s.State AS State,
       s.Country AS Country,
       s.Region AS Region,
       s.`Ship Mode` AS `Ship Mode`
FROM `order` o
JOIN shipping s on o.`Order ID` = s.`Order ID`
JOIN order_detail od on o.`Order ID` = od.`Order ID`;
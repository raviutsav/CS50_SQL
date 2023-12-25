
-- *** The Lost Letter ***
SELECT address, type FROM "addresses" WHERE id = (SELECT address_id FROM "scans" WHERE action = "Drop" AND package_id = (SELECT "id" FROM "packages" WHERE contents LIKE '%congrat%' AND from_address_id = (SELECT id from "addresses" WHERE address = '900 Somerville Avenue')));
-- *** The Devious Delivery ***
SELECT address, type FROM "addresses" WHERE id = (SELECT address_id FROM "scans" WHERE package_id = (SELECT id FROM "packages" WHERE from_address_id IS NULL) AND action = 'Drop');
-- *** The Forgotten Gift ***
SELECT id FROM "packages" WHERE from_address_id = (SELECT id FROM "addresses" WHERE address = '109 Tileston Street') AND to_address_id = (SELECT id FROM "addresses" WHERE address = '728 Maple Place');
SELECT name FROM drivers WHERE id = (SELECT driver_id FROM "scans" WHERE package_id = (SELECT id FROM "packages" WHERE from_address_id = (SELECT id FROM "addresses" WHERE address = '109 Tileston Street') AND to_address_id = (SELECT id FROM "addresses" WHERE address = '728 Maple Place')) ORDER BY id DESC LIMIT 1);


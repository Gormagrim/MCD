SELECT `p`.`name`, `t`.`type`, `p`.`zipCode`, `p`.`price`
FROM `fsav4_properties`AS `p`
INNER JOIN `fsav4_typeOfProperty` AS `t` ON `t`.`id` = `p`.`id_typeOfProperty`;

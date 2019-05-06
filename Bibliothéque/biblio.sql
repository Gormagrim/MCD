SELECT `fsav4_books`.`title`, `fsav4_users`.`lastname`, `fsav4_users`.`firstname`, `bl`.`borrowDate`, `bl`.`returnDate`
FROM `fsav4_borrowLine` AS `bl`
INNER JOIN `fsav4_books` ON   `bl`.`id_fsav4_books` = `fsav4_books`.`id`
INNER JOIN `fsav4_users` ON   `bl`.`id_fsav4_users` = `fsav4_users`.`id` ;


SELECT `fsav4_books`.`title`,`fsav4_gender`.`gender`, `fsav4_books`.`lastnameAuthor`, `fsav4_books`.`firstnameAuthor`
FROM `fsav4_books`
INNER JOIN `fsav4_gender` ON `fsav4_books`.`id_fsav4_gender` = `fsav4_gender`.`id`
INNER JOIN `fsav4_borrowLine` ON `fsav4_borrowLine`.`id_fsav4_books` = `fsav4_books`.`id`
WHERE `fsav4_borrowLine`.`returnDate` < CURRENT_DATE;

SELECT `fsav4_gender`.`gender`, COUNT(`fsav4_books`.`id`) AS `nb`
FROM `fsav4_gender`
INNER JOIN `fsav4_books` ON `fsav4_books`.`id_fsav4_gender` = `fsav4_gender`.`id`
GROUP BY `fsav4_gender`.`gender` ;

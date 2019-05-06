SELECT `fsav4_appointments`.`appointmentDate`, `fsav4_appointments`.`timeSlot`, `fsav4_patients`.`lastname`, `fsav4_patients`.`firstname`, `fsav4_doctors`.`lastname` AS `doctor`, `fsav4_specialty`.`specialty`
FROM `fsav4_appointments`
INNER JOIN `fsav4_patients` ON `fsav4_patients`.`id` = `fsav4_appointments`.`id_my_patients`
INNER JOIN `fsav4_doctors` ON `fsav4_doctors`.`id` = `fsav4_appointments`.`id_my_doctors`
INNER JOIN `fsav4_specialty` ON `fsav4_doctors`.`id_specialty` = `fsav4_specialty`.`id`
ORDER BY `fsav4_appointments`.`appointmentDate`;

SELECT `fsav4_doctors`.`lastname` AS `doctor`, `fsav4_appointments`.`appointmentDate`, `fsav4_appointments`.`timeSlot`, `fsav4_patients`.`lastname`, `fsav4_patients`.`firstname`
FROM `fsav4_appointments`
INNER JOIN `fsav4_patients` ON `fsav4_patients`.`id` = `fsav4_appointments`.`id_my_patients`
INNER JOIN `fsav4_doctors` ON `fsav4_doctors`.`id` = `fsav4_appointments`.`id_my_doctors`
WHERE `fsav4_doctors`.`id` = 5
ORDER BY `fsav4_appointments`.`appointmentDate`;

SELECT `fsav4_patients`.`lastname`, `fsav4_patients`.`firstname`,`fsav4_specialty`.`specialty`, `fsav4_doctors`.`lastname` AS `doctorLastname` , `fsav4_doctors`.`firstname` AS `doctorFirstname`, `fsav4_appointments`.`appointmentDate`, `fsav4_appointments`.`timeSlot`
FROM `fsav4_appointments`
INNER JOIN `fsav4_patients` ON `fsav4_patients`.`id` = `fsav4_appointments`.`id_my_patients`
INNER JOIN `fsav4_doctors` ON `fsav4_doctors`.`id` = `fsav4_appointments`.`id_my_doctors`
INNER JOIN `fsav4_specialty` ON `fsav4_doctors`.`id_specialty` = `fsav4_specialty`.`id`
WHERE `fsav4_patients`.`id` = 15;

SELECT `p`.`lastname`, `p`.`firstname`,`s`.`specialty`, `d`.`lastname` AS `doctorLastname` , `d`.`firstname` AS `doctorFirstname`, `a`.`appointmentDate`, `a`.`timeSlot`
FROM `fsav4_appointments` AS `a`
INNER JOIN `fsav4_patients` AS `p` ON `p`.`id` = `a`.`id_my_patients`
INNER JOIN `fsav4_doctors` AS `d` ON `d`.`id` = `a`.`id_my_doctors`
INNER JOIN `fsav4_specialty` AS `s` ON `d`.`id_specialty` = `s`.`id`
WHERE `p`.`id` = 15;

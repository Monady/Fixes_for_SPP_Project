DELETE FROM areatrigger_scripts WHERE entry IN (35905, 3590500);
INSERT INTO areatrigger_scripts (entry, ScriptName) VALUES (35905, 'SmartTrigger');
INSERT INTO areatrigger_scripts (entry, ScriptName) VALUES (3590500, 'SmartTrigger');

ELETE FROM vehicle_template_accessory WHERE entry IN (35905);
INSERT INTO vehicle_template_accessory (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(35905, 35907, 1, 0, '35905 - 35907', 3, 300000); -- 35905 - 35907 - 5 minutes summontime - King GreyMane Horse seat definition

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (35905);

DELETE FROM smart_scripts WHERE entryorguid IN (35905, 3590500);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES (35905, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, '0', 80, 3590500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Passanger Boarded - Start Timed Action Script'),
(35905, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, '0', 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Link - Allow Combat Movement'),
(35905, 0, 2, 0, 40, 0, 100, 512, 6, 0, 0, 0, '0', 97, 25, 10, 0, 0, 0, 0, 1, 0, 0, 0, -1674.46, 1344.95, 15.1352, 0, 'King Greymane\'s Horse - On WP Reached - Jump to PoS'),
(35905, 0, 3, 4, 40, 0, 100, 512, 16, 0, 0, 0, '0', 45, 1, 1, 0, 0, 0, 0, 11, 35907, 10, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Set Data'),
(35905, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, '0', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Despawn'),
(3590500, 9, 0, 0, 0, 0, 100, 512, 5000, 5000, 5000, 5000, '0', 53, 1, 35905, 0, 14293, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - Script - Start WP Movement'),
(3590500, 9, 1, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1791.55, 1407.18, 20.0265, 0, ''),
(3590500, 9, 2, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1790.45, 1383.17, 19.8166, 0, ''),
(3590500, 9, 3, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1777.13, 1369.23, 19.8021, 0, ''),
(3590500, 9, 4, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1755.42, 1368.4, 19.7833, 0, ''),
(3590500, 9, 5, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1728.55, 1351.81, 19.6012, 0, ''),
(3590500, 9, 6, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1707.42, 1345.95, 19.896, 0, ''),
(3590500, 9, 7, 0, 0, 0, 100, 512, 1400, 1400, 1400, 1400, '', 97, 15, 15, 0, 0, 0, 0, 1, 0, 0, 0, -1674.46, 1344.95, 15.1352, 0, ''),
(3590500, 9, 8, 0, 0, 0, 100, 512, 2000, 2000, 2000, 2000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1668.71, 1348.29, 15.1366, 0, ''),
(3590500, 9, 9, 0, 0, 0, 100, 512, 900, 900, 900, 900, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1666.29, 1355.75, 15.135, 0, ''),
(3590500, 9, 10, 0, 0, 0, 100, 512, 900, 900, 900, 900, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1672.07, 1362.12, 15.135, 0, ''),
(3590500, 9, 11, 0, 0, 0, 100, 512, 900, 900, 900, 900, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1685.27, 1355.4, 15.1356, 0, ''),
(3590500, 9, 12, 0, 0, 0, 100, 512, 900, 900, 900, 900, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1705.86, 1350.95, 19.8964, 0, ''),
(3590500, 9, 13, 0, 0, 0, 100, 512, 1300, 1300, 1300, 1300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1725.38, 1356.36, 19.8184, 0, ''),
(3590500, 9, 14, 0, 0, 0, 100, 512, 1300, 1300, 1300, 1300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1746.3, 1375.96, 19.97, 0, ''),
(3590500, 9, 15, 0, 0, 0, 100, 512, 1300, 1300, 1300, 1300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1766.16, 1404.17, 19.8109, 0, ''),
(3590500, 9, 16, 0, 0, 0, 100, 512, 4000, 4000, 4000, 4000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1771.46, 1430.1, 19.8183, 0, ''),
(3590500, 9, 17, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

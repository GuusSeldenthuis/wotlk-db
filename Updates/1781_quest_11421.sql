-- q.11421 'It Goes to 11...'

-- Dragonflayer Defender - summoned only
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 24533)
OR master_guid IN (SELECT guid FROM creature WHERE id = 24533);
DELETE FROM creature WHERE id = 24533;

-- Vrykul Harpoon Gun 27992/27993
DELETE FROM spell_script_target WHERE entry IN (50331);
INSERT INTO spell_script_target VALUES
(50331,1,27992,0),
(50331,1,27993,0);
DELETE FROM creature_template_spells WHERE entry IN (27992,27993);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(27992,43986,43997,0,0),
(27993,43986,43997,0,0);
-- spawntime corrected
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (27992,27993);

-- Dragonflayer Installation I / Dragonflayer Installation II / Dragonflayer Installation III
DELETE FROM creature_template_addon WHERE entry IN (24538,24646,24647);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24538,0,0,1,0,0,0,44179),
(24646,0,0,1,0,0,0,44179),
(24647,0,0,1,0,0,0,44179);

-- not req.
DELETE FROM dbscripts_on_spell WHERE id = 43990;

-- effect0 for spell:43999
DELETE FROM dbscripts_on_spell WHERE id = 43999;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(43999,0,15,42274,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- X4
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- X6
(43999,0,15,42274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43999,0,15,42267,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- main script
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20085 AND 20090;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
-- #20085
(20085,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20085,1,0,0,0,0,24665,100,3,2000001750,0,0,0,0,0,0,0,''), -- longhouse
(20085,2,10,24533,180000,1,0,0,0x08,1,0,0,0,1170.976,-5019.561,264.2884,4.6,'summon 24533'),
(20085,2,10,24533,180000,2,0,0,0x08,1,0,0,0,1183.287,-5024.771,193.7887,4.6,'summon 24533'),
(20085,2,10,24533,180000,3,0,0,0x08,1,0,0,0,1174.544,-4981.515,176.1924,4.6,'summon 24533'),
(20085,2,10,24533,180000,4,0,0,0x08,1,0,0,0,1082.604,-4917.729,214.5326,4.6,'summon 24533'),
(20085,3,0,0,0,0,24665,100,3,2000001751,0,0,0,0,0,0,0,''),
-- #20086
(20086,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20086,1,0,0,0,0,24665,100,3,2000001752,0,0,0,0,0,0,0,''), -- dockhouse
(20086,2,10,24533,180000,5,0,0,0x08,1,0,0,0,1197.274,-5036.285,71.81514,4.6,'summon 24533'),
(20086,2,10,24533,180000,6,0,0,0x08,1,0,0,0,1133.676,-4966.759,90.80428,4.6,'summon 24533'),
(20086,2,10,24533,180000,7,0,0,0x08,1,0,0,0,1158.312,-4991.479,99.45173,4.6,'summon 24533'),
(20086,3,0,0,0,0,24665,100,3,2000001753,0,0,0,0,0,0,0,''),
-- #20087
(20087,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20087,1,0,0,0,0,24665,100,3,2000001754,0,0,0,0,0,0,0,''), -- storage facility
(20087,2,10,24533,180000,8,0,0,0x08,1,0,0,0,1303.413,-5098.173,274.8228,4.6,'summon 24533'),
(20087,2,10,24533,180000,9,0,0,0x08,1,0,0,0,1215.011,-4987.676,272.6947,4.6,'summon 24533'),
(20087,2,10,24533,180000,10,0,0,0x08,1,0,0,0,1099.469,-4930.449,213.3144,4.6,'summon 24533'),
(20087,3,0,0,0,0,24665,100,3,2000001755,0,0,0,0,0,0,0,''),
-- #20088
(20088,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20088,1,0,0,0,0,24665,100,3,2000001750,0,0,0,0,0,0,0,''), -- longhouse
(20088,2,10,24533,180000,11,0,0,0x08,1,0,0,0,794.513,-5034.48,218.121,5.2,'summon 24533'),
(20088,2,10,24533,180000,12,0,0,0x08,1,0,0,0,749.509,-5048.37,224.537,5.2,'summon 24533'),
(20088,2,10,24533,180000,13,0,0,0x08,1,0,0,0,739.53,-5052.9,223.903,5.2,'summon 24533'),
(20088,2,10,24533,180000,14,0,0,0x08,1,0,0,0,724.44,-5051.89,226.408,5.2,'summon 24533'),
(20088,3,0,0,0,0,24665,100,3,2000001751,0,0,0,0,0,0,0,''),
-- #20089
(20089,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20089,1,0,0,0,0,24665,100,3,2000001752,0,0,0,0,0,0,0,''), -- dockhouse
(20089,2,10,24533,180000,15,0,0,0x08,1,0,0,0,896.804,-4956.31,201.996,5.2,'summon 24533'),
(20089,2,10,24533,180000,16,0,0,0x08,1,0,0,0,878.935,-4951.83,204.334,5.2,'summon 24533'),
(20089,2,10,24533,180000,17,0,0,0x08,1,0,0,0,863.553,-4952.52,208.139,45.2,'summon 24533'),
(20089,3,0,0,0,0,24665,100,3,2000001753,0,0,0,0,0,0,0,''),
-- #20090
(20090,0,10,24665,5000,0,0,0,0x08,0,0,0,0,967.721,-5248.5,189.299,4.60802,'summon Lieutenant Icehammer'),
(20090,1,0,0,0,0,24665,100,3,2000001754,0,0,0,0,0,0,0,''), -- storage facility
(20090,2,10,24533,180000,18,0,0,0x08,1,0,0,0,1038.05,-5013.17,209.92,5.2,'summon 24533'),
(20090,2,10,24533,180000,19,0,0,0x08,1,0,0,0,1100.08,-4981.22,214.499,5.2,'summon 24533'),
(20090,2,10,24533,180000,20,0,0,0x08,1,0,0,0,1022.7,-4998.97,211.529,5.2,'summon 24533'),
(20090,3,0,0,0,0,24665,100,3,2000001755,0,0,0,0,0,0,0,'');
-- Lieutenant Icehammer
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE entry = 24665;

-- Dragonflayer Defender
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 24533;
DELETE FROM creature_movement_template WHERE entry = 24533;
INSERT INTO creature_movement_template (entry,pathID,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- First Gun EVENT
-- path #1
(24533,1,1,1170.976,-5019.561,264.2884,0,0,100),
(24533,1,2,1164.781,-5026.434,251.2899,0,0,100),
(24533,1,3,1158.587,-5033.307,238.2915,0,0,100),
(24533,1,4,1143.378,-5050.324,238.2915,0,0,100),
(24533,1,5,1126.587,-5068.141,233.4859,0,0,100),
(24533,1,6,1102.885,-5091.837,225.4304,0,0,100),
(24533,1,7,1078.033,-5124.974,212.0693,0,0,100),
(24533,1,8,1052.411,-5155.555,199.6248,0,0,100),
(24533,1,9,1022.838,-5185.439,193.0137,0,0,100),
(24533,1,10,1021.715,-5219.111,190.7916,0,0,100),
(24533,1,11,1020.905,-5249.019,187.9304,0,0,100),
(24533,1,12,1020.905,-5249.019,187.9304,180000,2453301,100),
-- path #2
(24533,2,1,1183.287,-5024.771,193.7887,0,0,100),
(24533,2,2,1183.351,-5025.772,203.7383,0,0,100),
(24533,2,3,1183.406,-5026.643,212.3939,0,0,100),
(24533,2,4,1163.851,-5054.765,212.3939,0,0,100),
(24533,2,5,1153.11,-5091.497,212.3939,0,0,100),
(24533,2,6,1142.102,-5129.817,212.3939,0,0,100),
(24533,2,7,1133.478,-5166.35,212.3939,0,0,100),
(24533,2,8,1115.788,-5191.385,212.3939,0,0,100),
(24533,2,9,1098.542,-5203.515,212.3939,0,0,100),
(24533,2,10,1080.097,-5212.893,209.3662,0,0,100),
(24533,2,11,1069.128,-5219.335,207.0328,0,0,100),
(24533,2,12,1048.741,-5235.753,200.8106,0,0,100),
(24533,2,13,1022.927,-5266.217,193.3661,0,0,100),
(24533,2,14,1022.927,-5266.217,193.3661,180000,2453301,100),
-- path #3
(24533,3,1,1174.544,-4981.515,176.1924,0,0,100),
(24533,3,2,1161.819,-4989.018,176.9192,0,0,100),
(24533,3,3,1149.095,-4996.52,177.646,0,0,100),
(24533,3,4,1109.443,-5016.889,177.646,0,0,100),
(24533,3,5,1091.852,-5050.183,177.646,0,0,100),
(24533,3,6,1078.295,-5084.95,177.646,0,0,100),
(24533,3,7,1062.405,-5125.459,177.646,0,0,100),
(24533,3,8,1042.375,-5166.309,177.646,0,0,100),
(24533,3,9,1027.462,-5196.615,177.646,0,0,100),
(24533,3,10,1002.156,-5231.889,177.646,0,0,100),
(24533,3,11,997.4495,-5263.258,177.646,0,0,100),
(24533,3,12,997.4495,-5263.258,177.646,180000,2453301,100),
-- path #4
(24533,4,1,1082.604,-4917.729,214.5326,0,0,100),
(24533,4,2,1079.182,-4926.95,212.7214,0,0,100),
(24533,4,3,1078.439,-4928.952,212.328,0,0,100),
(24533,4,4,1071.224,-4943.73,212.328,0,0,100),
(24533,4,5,1052.615,-4989.348,212.328,0,0,100),
(24533,4,6,1040.502,-5032.064,191.7447,0,0,100),
(24533,4,7,1033.369,-5061.952,185.217,0,0,100),
(24533,4,8,1021.128,-5103.924,185.217,0,0,100),
(24533,4,9,1002.928,-5141.823,185.217,0,0,100),
(24533,4,10,978.4223,-5182.462,185.217,0,0,100),
(24533,4,11,960.366,-5221.397,185.217,0,0,100),
(24533,4,12,967.207,-5242.112,185.217,0,0,100),
(24533,4,13,967.207,-5242.112,185.217,180000,2453301,100),
-- path #5
(24533,5,1,1197.274,-5036.285,71.81514,0,0,100),
(24533,5,2,1194.215,-5044.285,76.97668,0,0,100),
(24533,5,3,1191.223,-5052.114,82.02743,0,0,100),
(24533,5,4,1180.045,-5067.137,85.55521,0,0,100),
(24533,5,5,1148.069,-5093.46,91.66631,0,0,100),
(24533,5,6,1121.694,-5102.051,107.0552,0,0,100),
(24533,5,7,1104.198,-5131.613,115.4997,0,0,100),
(24533,5,8,1081.754,-5162.557,124.6386,0,0,100),
(24533,5,9,1044.861,-5195.726,128.9997,0,0,100),
(24533,5,10,1026.013,-5230.396,158.9996,0,0,100),
(24533,5,11,1012.38,-5265.144,170.8052,0,0,100),
(24533,5,12,1012.38,-5265.144,170.8052,180000,2453301,100),
-- path #6
(24533,6,1,1133.676,-4966.759,90.80428,0,0,100),
(24533,6,2,1120.237,-4973.09,92.01161,0,0,100),
(24533,6,3,1106.798,-4979.422,93.21894,0,0,100),
(24533,6,4,979.5469,-5201.024,168.8578,0,0,100),
(24533,6,5,987.9144,-5250.999,167.5522,0,0,100),
(24533,6,6,987.9144,-5250.999,167.5522,180000,2453301,100),
-- path #7
(24533,7,1,1158.312,-4991.479,99.45173,0,0,100),
(24533,7,2,1142.984,-4999.109,90.36201,0,0,100),
(24533,7,3,1127.656,-5006.739,81.27229,0,0,100),
(24533,7,4,1084.44,-5025.011,81.27229,0,0,100),
(24533,7,5,1050.007,-5033.488,81.27229,0,0,100),
(24533,7,6,1021.34,-5059.764,81.27229,0,0,100),
(24533,7,7,911.3702,-5197.407,146.9389,0,0,100),
(24533,7,8,957.6042,-5251.851,167.1333,0,0,100),
(24533,7,9,957.6042,-5251.851,167.1333,180000,2453301,100),
-- path #8
(24533,8,1,1303.413,-5098.173,274.8228,0,0,100),
(24533,8,2,1294.535,-5109.049,264.3562,0,0,100),
(24533,8,3,1285.657,-5119.924,253.8896,0,0,100),
(24533,8,4,1269.157,-5154.458,253.8896,0,0,100),
(24533,8,5,1249.679,-5171.706,253.8896,0,0,100),
(24533,8,6,1223.257,-5184.479,250.723,0,0,100),
(24533,8,7,1201.094,-5196.179,243.8341,0,0,100),
(24533,8,8,1171.556,-5218.075,243.8341,0,0,100),
(24533,8,9,1131.43,-5247.657,243.8341,0,0,100),
(24533,8,10,1106.844,-5272.763,233.8341,0,0,100),
(24533,8,11,1077.58,-5278.874,205.1119,0,0,100),
(24533,8,12,1058.496,-5284.242,191.8896,0,0,100),
(24533,8,13,1038.334,-5302.147,183.1119,0,0,100),
(24533,8,14,1038.334,-5302.147,183.1119,180000,2453301,100),
-- path #9
(24533,9,1,1215.011,-4987.676,272.6947,0,0,100),
(24533,9,2,1216.197,-4997.367,267.3436,0,0,100),
(24533,9,3,1217.383,-5007.058,261.9925,0,0,100),
(24533,9,4,1211.652,-5034.964,261.9925,0,0,100),
(24533,9,5,1192.742,-5080.327,261.9925,0,0,100),
(24533,9,6,1181.345,-5121.768,261.9925,0,0,100),
(24533,9,7,1148.012,-5153.471,261.9925,0,0,100),
(24533,9,8,1129.448,-5173.74,261.9925,0,0,100),
(24533,9,9,1107.223,-5195.316,261.9925,0,0,100),
(24533,9,10,1089.076,-5214.322,257.6313,0,0,100),
(24533,9,11,1076.742,-5226.634,241.8259,0,0,100),
(24533,9,12,1055.34,-5246.319,214.5759,0,0,100),
(24533,9,13,1041.98,-5263.513,189.548,0,0,100),
(24533,9,14,1029.853,-5280.19,183.0203,0,0,100),
(24533,9,15,1029.853,-5280.19,183.0203,180000,2453301,100),
-- path #10
(24533,10,1,1099.469,-4930.449,213.3144,0,0,100),
(24533,10,2,1095.87,-4937.372,219.5699,0,0,100),
(24533,10,3,1092.911,-4943.063,224.7131,0,0,100),
(24533,10,4,1096.335,-4974.375,224.7131,0,0,100),
(24533,10,5,1107.828,-4999.914,224.7131,0,0,100),
(24533,10,6,1125.188,-5024.942,224.7131,0,0,100),
(24533,10,7,1137.079,-5049.923,224.7131,0,0,100),
(24533,10,8,1136.127,-5097.529,224.7131,0,0,100),
(24533,10,9,1122.048,-5142.752,208.5742,0,0,100),
(24533,10,10,1110.089,-5172.648,208.5742,0,0,100),
(24533,10,11,1091.717,-5207.962,208.5742,0,0,100),
(24533,10,12,1068.224,-5240.763,191.4353,0,0,100),
(24533,10,13,1034.633,-5274.821,187.0465,0,0,100),
(24533,10,14,1034.633,-5274.821,187.0465,180000,2453301,100),
-- Second Gun EVENT
-- path #11
(24533,11,1,794.513,-5034.48,218.121,0,0,100),
(24533,11,2,807.831,-5047.14,217.253,0,0,100),
(24533,11,3,823.1,-5068.46,215.219,0,0,100),
(24533,11,4,841.09,-5091.24,211.37,0,0,100),
(24533,11,5,854.779,-5111.48,207.176,0,0,100),
(24533,11,6,867.585,-5131.17,206.255,0,0,100),
(24533,11,7,886.126,-5156.57,201.626,0,0,100),
(24533,11,8,897.383,-5178.22,198.554,0,0,100),
(24533,11,9,908.49,-5200.86,191.898,0,0,100),
(24533,11,10,916.742,-5219.56,190.629,0,0,100),
(24533,11,11,926.443,-5243.67,186.087,0,0,100),
(24533,11,12,927.838,-5269.56,182.948,180000,2453302,100),
-- path #12
(24533,12,1,749.509,-5048.37,224.537,0,0,100),
(24533,12,2,773.533,-5078.05,218.786,0,0,100),
(24533,12,3,796.266,-5105.99,218.129,0,0,100),
(24533,12,4,826.515,-5146.19,206.982,0,0,100),
(24533,12,5,850.841,-5173.41,205.532,0,0,100),
(24533,12,6,874.756,-5208.23,199.764,0,0,100),
(24533,12,7,893.714,-5243.05,187.54,0,0,100),
(24533,12,8,910.374,-5270.96,182.307,180000,2453302,100),
-- path #13
(24533,13,1,739.53,-5052.9,223.903,0,0,100),
(24533,13,2,757.712,-5081.73,226.213,0,0,100),
(24533,13,3,780.66,-5112.94,220.284,0,0,100),
(24533,13,4,806.105,-5142.81,207.68,0,0,100),
(24533,13,5,832.945,-5173.26,201.772,0,0,100),
(24533,13,6,858.417,-5213.31,195.441,0,0,100),
(24533,13,7,881.977,-5242.89,184.256,0,0,100),
(24533,13,8,903.434,-5270.59,178.886,180000,2453302,100),
-- path #14
(24533,14,1,724.44,-5051.89,226.408,0,0,100),
(24533,14,2,748.471,-5091.19,224.071,0,0,100),
(24533,14,3,761.138,-5116.56,219.726,0,0,100),
(24533,14,4,781.454,-5138.62,217.228,0,0,100),
(24533,14,5,800.426,-5163.02,211.829,0,0,100),
(24533,14,6,816.804,-5194.66,204.603,0,0,100),
(24533,14,7,832.406,-5222.85,200.525,0,0,100),
(24533,14,8,850.49,-5238.65,196.456,0,0,100),
(24533,14,9,879.119,-5261.74,186.938,0,0,100),
(24533,14,10,896.672,-5276.24,185.101,180000,2453302,100),
-- path #15
(24533,15,1,896.804,-4956.31,201.996,0,0,100),
(24533,15,2,903.315,-4997.02,201.075,0,0,100),
(24533,15,3,910.908,-5042.34,198.448,0,0,100),
(24533,15,4,916.089,-5081.9,198.917,0,0,100),
(24533,15,5,921.158,-5125.8,195.272,0,0,100),
(24533,15,6,925.713,-5158.29,189.109,0,0,100),
(24533,15,7,929.79,-5187.14,186.359,0,0,100),
(24533,15,8,933.353,-5219.7,186.454,0,0,100),
(24533,15,9,930.881,-5262.6,183.806,0,0,100),
(24533,15,10,930.442,-5273.49,184.062,180000,2453302,100),
-- path #16
(24533,16,1,878.935,-4951.83,204.334,0,0,100),
(24533,16,2,877.413,-4980.34,208.123,0,0,100),
(24533,16,3,882.561,-5024.71,200.78,0,0,100),
(24533,16,4,889.911,-5054.77,205.281,0,0,100),
(24533,16,5,885.672,-5073.34,206.366,0,0,100),
(24533,16,6,896.082,-5113.07,203.752,0,0,100),
(24533,16,7,903.196,-5141,197.868,0,0,100),
(24533,16,8,901.748,-5169.55,198.863,0,0,100),
(24533,16,9,912.568,-5190.85,193.694,0,0,100),
(24533,16,10,918.438,-5220.07,187.222,0,0,100),
(24533,16,11,922.725,-5247.28,191.943,0,0,100),
(24533,16,12,923.878,-5271.9,185.485,180000,2453302,100),
-- path #17
(24533,17,1,863.553,-4952.52,208.139,0,0,100),
(24533,17,2,865.546,-4981.94,208.079,0,0,100),
(24533,17,3,876.753,-5028.79,200.504,0,0,100),
(24533,17,4,882.618,-5068.77,202.016,0,0,100),
(24533,17,5,889.402,-5101.04,202.654,0,0,100),
(24533,17,6,895.962,-5135.28,200.316,0,0,100),
(24533,17,7,896.192,-5156.68,200.46,0,0,100),
(24533,17,8,903.305,-5186.19,196.103,0,0,100),
(24533,17,9,905.851,-5217.68,193.719,0,0,100),
(24533,17,10,918.087,-5267.86,180.462,180000,2453302,100),
-- path #18
(24533,18,1,1038.05,-5013.17,209.92,0,0,100),
(24533,18,2,1023.32,-5057.15,214.064,0,0,100),
(24533,18,3,1007.18,-5107.65,209.198,0,0,100),
(24533,18,4,986.364,-5177.26,196.978,0,0,100),
(24533,18,5,967.518,-5231.09,191.378,0,0,100),
(24533,18,6,945.044,-5273.35,186.493,180000,2453302,100),
-- path #19
(24533,19,1,1100.08,-4981.22,214.499,0,0,100),
(24533,19,2,1078.7,-5031.4,211.882,0,0,100),
(24533,19,3,1062.28,-5069.22,217.491,0,0,100),
(24533,19,4,1042.54,-5113.77,221.151,0,0,100),
(24533,19,5,1016.61,-5172.56,202.581,0,0,100),
(24533,19,6,1002.6,-5206.42,208.44,0,0,100),
(24533,19,7,980.373,-5241.28,198.529,0,0,100),
(24533,19,8,950.154,-5279.66,192.264,180000,2453302,100),
-- path #20
(24533,20,1,1022.7,-4998.97,211.529,0,0,100),
(24533,20,2,996.15,-5043.46,211.76,0,0,100),
(24533,20,3,976.776,-5087.71,210.242,0,0,100),
(24533,20,4,970.938,-5144.53,201.91,0,0,100),
(24533,20,5,959.412,-5198.21,192.197,0,0,100),
(24533,20,6,946.128,-5235.81,191.237,0,0,100),
(24533,20,7,936.9,-5272.06,188.213,180000,2453302,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2453301 AND 2453302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2453301,0,31,27992,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27992'),
(2453301,1,26,0,0,0,27992,100,1,0,0,0,0,0,0,0,0,'attack'),
(2453302,0,31,27993,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27993'),
(2453302,1,26,0,0,0,27993,100,1,0,0,0,0,0,0,0,0,'attack');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001750 AND 2000001755;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001750,'The longhouse is destroyed! Alarms can be heard in the distance.',0,3,0,0,NULL),
(2000001751,'Defend yourself, soldier! Blow \'em out of the sky with the fiery lance! Give \'em a taste of their own medicine!',0,1,0,0,NULL),
(2000001752,'Direct hit on the dockhouse! Dragonflayer defenders have been alerted!',0,3,0,0,NULL),
(2000001753,'Don\'t give \'em an inch, soldier! Harpoon \'em out of the sky!',0,1,0,0,NULL),
(2000001754,'The Vrykul storage facility is up in flames! Dragonflayer defenders have been alerted!',0,3,0,0,NULL),
(2000001755,'Knock \'em out of the sky! Don\'t let them get in range of you, soldier!',0,1,0,0,NULL);

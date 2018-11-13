-- Howling Fjord - random updates

-- Lunk-tusk
UPDATE creature SET position_x = 1230.616943, position_y = -3349.278076, position_z = 203.635895, orientation = 3.385939 WHERE guid = 88315;

-- Duskwing Eagle
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid = 5711473;
DELETE FROM creature_movement WHERE id = 5711473;
DELETE FROM creature_linking WHERE guid = 5711473;
DELETE FROM creature_linking WHERE master_guid = 5711473;
DELETE FROM creature WHERE guid = 5711473;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711473,23693,571,1,1,0,0,1029.02,-3452.07,201.733,4.83812,300,300,0,0,7984,0,0,0);
-- Updates
UPDATE creature SET position_x = 1333.997, position_y = -3704.304, position_z = 138.3772, orientation = 4.992879 WHERE guid = 108900;
UPDATE creature SET position_x = 1535.262, position_y = -3661.017, position_z = 169.9189, orientation = 1.584843 WHERE guid = 108892;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (108900,5711473,108892);
DELETE FROM creature_movement WHERE id IN (108900,5711473,108892);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #108900
(108900,1,1333.997,-3704.304,138.3772,0,5,100),
(108900,2,1332.262,-3700.345,139.9032,0,0,100),
(108900,3,1338.991,-3666.837,146.8753,0,0,100),
(108900,4,1348.273,-3633.429,148.1809,0,0,100),
(108900,5,1362.422,-3601.535,153.9349,0,0,100),
(108900,6,1364.82,-3567.522,163.7675,0,0,100),
(108900,7,1333.64,-3542.006,173.3216,0,0,100),
(108900,8,1303.811,-3566.447,166.4327,0,0,100),
(108900,9,1291.073,-3599.908,161.0716,0,0,100),
(108900,10,1295.293,-3633.225,155.8494,0,0,100),
(108900,11,1293.934,-3666.294,153.2383,0,0,100),
(108900,12,1295.449,-3699.901,145.155,0,0,100),
(108900,13,1268.432,-3734.39,145.155,0,0,100),
(108900,14,1298.31,-3766.759,140.1273,0,0,100),
(108900,15,1333.559,-3761.111,135.9883,0,0,100),
(108900,16,1347.119,-3733.379,134.3495,0,0,100),
-- #5711473
(5711473,1,1029.015,-3452.07,201.7328,0,5,100),
(5711473,2,1033.073,-3466.602,201.7328,0,0,100),
(5711473,3,1066.891,-3489.324,201.7328,0,0,100),
(5711473,4,1100.247,-3489.887,201.7328,0,0,100),
(5711473,5,1133.825,-3487.617,201.7328,0,0,100),
(5711473,6,1166.263,-3477.151,201.7328,0,0,100),
(5711473,7,1199.829,-3449.172,201.7328,0,0,100),
(5711473,8,1200.966,-3415.037,201.7328,0,0,100),
(5711473,9,1167.617,-3393.304,201.7328,0,0,100),
(5711473,10,1133.349,-3387.871,201.7328,0,0,100),
(5711473,11,1098.96,-3390.657,201.7328,0,0,100),
(5711473,12,1065.28,-3388.31,201.7328,0,0,100),
(5711473,13,1032.886,-3411.647,201.7328,0,0,100),
-- #108892
(108892,1,1535.262,-3661.017,169.9189,0,5,100),
(108892,2,1533.755,-3658.538,169.0254,0,0,100),
(108892,3,1509.226,-3633.396,165.1643,0,0,100),
(108892,4,1491.983,-3589.653,169.0254,0,0,100),
(108892,5,1479.373,-3566.197,174.3309,0,0,100),
(108892,6,1471.563,-3532.822,174.0809,0,0,100),
(108892,7,1472.887,-3499.935,177.2943,0,0,100),
(108892,8,1499.845,-3465.976,183.4995,0,0,100),
(108892,9,1500.014,-3434.329,195.9161,0,0,100),
(108892,10,1466.471,-3400.213,207.2061,0,0,100),
(108892,11,1433.245,-3433.514,194.5301,0,0,100),
(108892,12,1433.386,-3466.898,183.4745,0,0,100),
(108892,13,1469.659,-3500.196,177.6412,0,0,100),
(108892,14,1469.107,-3533.258,173.5301,0,0,100),
(108892,15,1466.735,-3566.695,167.5023,0,0,100),
(108892,16,1467.485,-3600.201,160.3079,0,0,100),
(108892,17,1463.963,-3633.934,159.3634,0,0,100),
(108892,18,1466.525,-3666.029,158.3912,0,0,100),
(108892,19,1499.973,-3698.898,166.4468,0,0,100),
(108892,20,1527.744,-3713.448,173.0301,0,0,100),
(108892,21,1547.203,-3692.157,173.3356,0,0,100);

-- Deranged Explorer
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid = 5710839;

-- Ball and chain 175544
DELETE FROM gameobject WHERE guid IN (5710074,5710075);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5710074,175544,571,1,1407.669,-3107.788,166.078,1.274088,0,0,0.5948219,0.8038574,300,300,255,1),
(5710075,175544,571,1,1406.463,-3106.099,166.0601,3.909541,0,0,-0.9271832,0.3746083,300,300,255,1);
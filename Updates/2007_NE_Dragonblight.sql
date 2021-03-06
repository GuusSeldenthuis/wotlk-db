-- Dragonblight - Area between 'Westwind Refugee Camp' and 'Icemist Village'

-- Duplicates removed
DELETE FROM creature_addon WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM creature_movement WHERE id IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM game_event_creature WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM game_event_creature_data WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM creature_battleground WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM creature_linking WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977)
 OR master_guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
 119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
 97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);
DELETE FROM creature WHERE guid IN (119431,119441,119436,119494,119434,119496,119437,119491,119492,119465,119468,119432,119490,119440,119469,119475,119438,119430,
119439,119466,119456,119455,119497,119499,106759,109299,109290,109291,109478,109282,109495,109486,109252,106804,97970,97961,97953,97973,97965,97963,97964,97952,97954,97948,
97975,97960,97947,97946,97951,97976,97974,97949,97956,97959,97969,97977);

-- Anub'ar Ambusher 26402
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26402);
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 26402;
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712447 WHERE guid = 99059;
UPDATE creature SET guid = 5712448 WHERE guid = 99060;
UPDATE creature SET guid = 5712449 WHERE guid = 99061;
UPDATE creature SET guid = 5712450 WHERE guid = 99062;
UPDATE creature SET guid = 5712451 WHERE guid = 99063;
UPDATE creature SET guid = 5712452 WHERE guid = 99064;
UPDATE creature SET guid = 5712453 WHERE guid = 99065;
UPDATE creature SET guid = 5712454 WHERE guid = 99066;
UPDATE creature SET guid = 5712455 WHERE guid = 99067;
UPDATE creature SET guid = 5712456 WHERE guid = 99068;
UPDATE creature SET guid = 5712457 WHERE guid = 99070;
UPDATE creature SET guid = 5712458 WHERE guid = 99071;
UPDATE creature SET guid = 5712459 WHERE guid = 99072;
UPDATE creature SET guid = 5712460 WHERE guid = 99073;
UPDATE creature SET guid = 5712461 WHERE guid = 99074;
UPDATE creature SET guid = 5712462 WHERE guid = 99075;
UPDATE creature SET guid = 5712463 WHERE guid = 99076;
UPDATE creature SET guid = 5712464 WHERE guid = 99077;
UPDATE creature SET guid = 5712465 WHERE guid = 99080;
UPDATE creature SET guid = 5712466 WHERE guid = 99081;
UPDATE creature SET guid = 5712467 WHERE guid = 99082;
UPDATE creature SET guid = 5712468 WHERE guid = 99119;
UPDATE creature SET guid = 5712469 WHERE guid = 99120;
UPDATE creature SET guid = 5712470 WHERE guid = 99121;
UPDATE creature SET guid = 5712471 WHERE guid = 99122;
UPDATE creature SET guid = 5712472 WHERE guid = 99123;
UPDATE creature SET guid = 5712473 WHERE guid = 99124;
UPDATE creature SET guid = 5712474 WHERE guid = 99125;
UPDATE creature SET guid = 5712475 WHERE guid = 99164;
UPDATE creature SET guid = 5712476 WHERE guid = 99165;
UPDATE creature SET guid = 5712477 WHERE guid = 99166;
UPDATE creature SET guid = 5712478 WHERE guid = 99167;
UPDATE creature SET guid = 5712479 WHERE guid = 99168;
UPDATE creature SET guid = 5712480 WHERE guid = 99169;
UPDATE creature SET guid = 5712481 WHERE guid = 99170;
UPDATE creature SET guid = 5712482 WHERE guid = 99171;
UPDATE creature SET guid = 5712483 WHERE guid = 99173;
UPDATE creature SET guid = 5712484 WHERE guid = 99174;
UPDATE creature SET guid = 5712485 WHERE guid = 99175;
UPDATE creature SET position_x = 3796.78, position_y = 2775.54, position_z = 113.983 WHERE guid = 5712476;
UPDATE creature SET position_x = 3801.19, position_y = 2684.32, position_z = 129.114 WHERE guid = 5712453;
UPDATE creature SET position_x = 3784.89, position_y = 2724.11, position_z = 120.427 WHERE guid = 5712459;
UPDATE creature SET position_x = 3762.23, position_y = 2435.29, position_z = 119.08 WHERE guid = 5712457;
UPDATE creature SET position_x = 3803.39, position_y = 2400.5,  position_z = 127.082 WHERE guid = 5712461;
UPDATE creature SET position_x = 3777.22, position_y = 2389.87, position_z = 128.22 WHERE guid = 5712469;
UPDATE creature SET position_x = 3822.36, position_y = 2722.21, position_z = 125.039 WHERE guid = 5712462;
UPDATE creature SET position_x = 3863.9,  position_y = 2704.5,  position_z = 138.359 WHERE guid = 5712481;
UPDATE creature SET position_x = 3775.519043, position_y = 2607.519287, position_z = 130.828064 WHERE guid = 5712479;
UPDATE creature SET position_x = 3743.042725, position_y = 2620.325684, position_z = 126.978012 WHERE guid = 5712471;
UPDATE creature SET position_x = 3612.767578, position_y = 2702.889160, position_z = 83.269867 WHERE guid = 5712458;
UPDATE creature SET position_x = 3732.243408, position_y = 2525.311279, position_z = 111.962196 WHERE guid = 5712466;
UPDATE creature SET position_x = 3815.118896, position_y = 2626.177734, position_z = 134.227921 WHERE guid = 5712483;
UPDATE creature SET position_x = 3782.749756, position_y = 2533.861816, position_z = 120.159775 WHERE guid = 5712463;
UPDATE creature SET position_x = 3753.444336, position_y = 2688.781738, position_z = 132.586624 WHERE guid = 5712484;
UPDATE creature SET position_x = 3712.027344, position_y = 2708.594238, position_z = 108.930115 WHERE guid = 5712474;
UPDATE creature SET position_x = 3719.210205, position_y = 2748.327637, position_z = 107.474670 WHERE guid = 5712472;
UPDATE creature SET position_x = 3688.337158, position_y = 2691.168945, position_z = 103.033211 WHERE guid = 5712464;
UPDATE creature SET position_x = 3754.912109, position_y = 2487.585205, position_z = 113.801620 WHERE guid = 5712460;
UPDATE creature SET position_x = 3649.147705, position_y = 2612.742676, position_z = 103.177811 WHERE guid = 5712465;
UPDATE creature SET position_x = 3725.870850, position_y = 2386.390869, position_z = 123.345154 WHERE guid = 5712480;

-- Blighted Elk 26616
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26616);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 26616;
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712486 WHERE guid = 119383;
UPDATE creature SET guid = 5712487 WHERE guid = 119384;
UPDATE creature SET guid = 5712488 WHERE guid = 119399;
UPDATE creature SET guid = 5712489 WHERE guid = 119400;
UPDATE creature SET guid = 5712490 WHERE guid = 119401;
UPDATE creature SET guid = 5712491 WHERE guid = 119402;
UPDATE creature SET guid = 5712492 WHERE guid = 119403;
UPDATE creature SET guid = 5712493 WHERE guid = 119404;
UPDATE creature SET guid = 5712494 WHERE guid = 119407;
UPDATE creature SET guid = 5712495 WHERE guid = 119408;
UPDATE creature SET guid = 5712496 WHERE guid = 119409;
UPDATE creature SET guid = 5712497 WHERE guid = 119410;
UPDATE creature SET guid = 5712498 WHERE guid = 119411;
UPDATE creature SET guid = 5712499 WHERE guid = 119412;
UPDATE creature SET guid = 5712500 WHERE guid = 119413;
UPDATE creature SET guid = 5712501 WHERE guid = 119414;
UPDATE creature SET guid = 5712502 WHERE guid = 119415;
UPDATE creature SET guid = 5712503 WHERE guid = 119429;
UPDATE creature SET guid = 5712504 WHERE guid = 119433;
UPDATE creature SET guid = 5712505 WHERE guid = 119442;
UPDATE creature SET guid = 5712506 WHERE guid = 119443;
UPDATE creature SET guid = 5712507 WHERE guid = 119444;
UPDATE creature SET guid = 5712508 WHERE guid = 119447;
UPDATE creature SET guid = 5712509 WHERE guid = 119451;
UPDATE creature SET guid = 5712510 WHERE guid = 119452;
UPDATE creature SET guid = 5712511 WHERE guid = 119460;
UPDATE creature SET guid = 5712512 WHERE guid = 119461;
UPDATE creature SET guid = 5712513 WHERE guid = 119462;
UPDATE creature SET guid = 5712514 WHERE guid = 119474;
UPDATE creature SET guid = 5712515 WHERE guid = 119476;
UPDATE creature SET guid = 5712516 WHERE guid = 119485;
UPDATE creature SET guid = 5712517 WHERE guid = 119486;
UPDATE creature SET guid = 5712518 WHERE guid = 119488;
UPDATE creature SET guid = 5712519 WHERE guid = 119489;
UPDATE creature SET guid = 5712520 WHERE guid = 119493;
UPDATE creature SET guid = 5712521 WHERE guid = 119495;
UPDATE creature SET guid = 5712522 WHERE guid = 119498;
UPDATE creature SET guid = 5712523 WHERE guid = 119500;
UPDATE creature SET guid = 5712524 WHERE guid = 119501;
UPDATE creature SET guid = 5712525 WHERE guid = 119503;
UPDATE creature SET guid = 5712526 WHERE guid = 138624;
UPDATE creature SET guid = 5712527 WHERE guid = 138628;
UPDATE creature SET position_x = 3841.1, position_y = 2662.3, position_z = 133.67 WHERE guid = 5712525;
UPDATE creature SET position_x = 3888.1, position_y = 2717.51, position_z = 143.771 WHERE guid = 5712519;
UPDATE creature SET position_x = 3808.74, position_y = 2747.15, position_z = 120.394 WHERE guid = 5712508;
UPDATE creature SET position_x = 3786.03, position_y = 2414.58, position_z = 123.809 WHERE guid = 5712507;
UPDATE creature SET position_x = 3754.96, position_y = 1978.46, position_z = 88.5398 WHERE guid = 5712504;
UPDATE creature SET position_x = 3741.37, position_y = 2516.52, position_z = 112.06 WHERE guid = 5712509;
UPDATE creature SET position_x = 3725.913086, position_y = 2438.976074, position_z = 116.508057 WHERE guid = 5712499;
UPDATE creature SET position_x = 3744.072021, position_y = 2372.260986, position_z = 128.279556 WHERE guid = 5712518;
UPDATE creature SET position_x = 3735.438721, position_y = 2250.294678, position_z = 94.017960  WHERE guid = 5712512;
UPDATE creature SET position_x = 3727.361328, position_y = 2706.755615, position_z = 113.577896 WHERE guid = 5712517;
UPDATE creature SET position_x = 3728.047607, position_y = 2643.047852, position_z = 122.702919 WHERE guid = 5712501;
UPDATE creature SET position_x = 3697.319824, position_y = 2520.161621, position_z = 106.847481 WHERE guid = 5712491;

-- Anub'ar Dreadweaver 26413
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712528 WHERE guid = 100146;
UPDATE creature SET guid = 5712529 WHERE guid = 100161;
UPDATE creature SET guid = 5712530 WHERE guid = 100204;
UPDATE creature SET guid = 5712531 WHERE guid = 100223;
UPDATE creature SET guid = 5712532 WHERE guid = 100253;
UPDATE creature SET guid = 5712533 WHERE guid = 100255;
UPDATE creature SET position_x = 3832.82, position_y = 2739.28, position_z = 125.919, orientation = 1.18579 WHERE guid = 5712530;
UPDATE creature SET position_x = 3871.86, position_y = 2742.04, position_z = 139.414, orientation = 1.4186 WHERE guid = 5712532;
UPDATE creature SET position_x = 3808.96, position_y = 2562.39, position_z = 128.994, orientation = 4.90608 WHERE guid = 5712529;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5712529,5712530,5712531,5712528,5712532,5712533);
DELETE FROM creature_movement WHERE id IN (5712529,5712530,5712531,5712528,5712532,5712533);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- #5712529 -- partly missing (need data)
(5712529,1,3804.25,2535.71,122.442,4.53833,0,0),
(5712529,2,3800.71,2518.13,119.914,4.58938,0,0),
(5712529,3,3799.47,2502.06,117.717,4.68755,0,0),
(5712529,4,3800.39,2486.44,117.099,4.76609,0,0),
(5712529,5,3801.51,2466.8,117.848,4.6208,0,0),
(5712529,6,3799.75,2449.01,119.923,4.61294,0,0),
(5712529,7,3798.27,2435.62,121.793,4.81714,0,0),
(5712529,8,3799.44,2421.61,123.621,4.84463,0,0),
(5712529,9,3793.98,2412.11,124.96,3.87467,0,0),
(5712529,10,3784.7,2419.19,122.548,2.00542,0,0),
(5712529,11,3781.39,2438.96,119.529,1.74232,0,0),
(5712529,12,3775.81,2454.24,117.77,2.00542,0,0),
(5712529,13,3768.23,2469.29,116.541,1.93081,0,0),
(5712529,14,3759.35,2491.72,114.089,1.75017,0,0),
(5712529,15,3756,2507.96,113.702,1.73054,0,0),
(5712529,16,3759.13,2526.16,115.9,1.22395,0,0),
(5712529,17,3768.19,2538.92,118.597,0.980479,0,0),
(5712529,18,3776.18,2553.23,122.301,1.1729,0,0),
(5712529,19,3779.94,2568.67,127.468,1.45172,0,0),
(5712529,20,3781.31,2579.07,130.833,1.40459,0,0),
(5712529,21,3785.79,2589.51,132.899,0.929429,0,0),
(5712529,22,3793.11,2595.67,134.343,0.320745,0,0),
(5712529,23,3801.03,2592.26,135.222,5.57507,0,0),
(5712529,24,3808.32,2563.75,129.431,4.88785,0,0), 
-- #5712530
(5712530,1,3841.89,2759.93,127.718,1.16615,0,0),
(5712530,2,3846.29,2770.26,129.986,1.17794,0,0),
(5712530,3,3849.04,2783.61,131.974,1.55885,0,0),
(5712530,4,3841.28,2795.01,127.659,2.54453,0,0),
(5712530,5,3832.41,2796.96,123.763,3.11757,0,0),
(5712530,6,3815.19,2790.88,117.471,3.57702,0,0),
(5712530,7,3800.7,2785.99,113.369,3.43958,0,0),
(5712530,8,3789.75,2773.68,113.487,4.13858,0,0),
(5712530,9,3784.68,2759.42,114.551,4.50771,0,0),
(5712530,10,3781.73,2742.19,117.752,4.5784,0,0),
(5712530,11,3779.2,2716.32,121.635,4.69228,0,0),
(5712530,12,3776.98,2690.18,129.848,4.61374,0,0),
(5712530,13,3785.94,2678.32,131.35,5.40699,0,0),
(5712530,14,3795.12,2669.92,132.034,5.41641,0,0),
(5712530,15,3804.86,2659.95,132.845,5.09283,0,0),
(5712530,16,3806.16,2650,133.527,4.84543,0,0),
(5712530,17,3805.69,2641.61,133.418,4.64516,0,0),
(5712530,18,3803.15,2628.17,132.826,4.36948,0,0),
(5712530,19,3799.8,2619.7,133.062,4.33414,0,0),
(5712530,20,3804.2,2614.73,134.251,0.395361,0,0),
(5712530,21,3809.26,2619.49,134.019,0.82733,0,0),
(5712530,22,3812.28,2627.47,133.939,1.22788,0,0),
(5712530,23,3814.25,2643.23,133.608,1.5067,0,0),
(5712530,24,3814.08,2662.57,132.011,1.56168,0,0),
(5712530,25,3814.16,2674.41,129.618,1.45958,0,0),
(5712530,26,3817.98,2699.47,126.343,1.38889,0,0),
(5712530,27,3820.2,2709.43,125.878,1.22788,0,0),
(5712530,28,3832.84,2739.48,125.919,1.14982,0,0),
-- #5712531
(5712531,1,3699.86,2669.97,112.147,1.84747,0,0),
(5712531,2,3692.15,2696.44,103.247,1.81998,0,0),
(5712531,3,3689.31,2709.76,101.32,1.78464,0,0),
(5712531,4,3685.3,2723.19,99.5768,1.90245,0,0),
(5712531,5,3695.32,2735.08,102.278,0.829844,0,0),
(5712531,6,3706.5,2746.03,104.308,0.715961,0,0),
(5712531,7,3718.53,2754.7,106.005,0.570663,0,0),
(5712531,8,3731.38,2762.14,106.941,0.150474,0,0),
(5712531,9,3750.33,2757.77,109.166,5.26789,0,0),
(5712531,10,3753.91,2741.74,112.985,4.66708,0,0),
(5712531,11,3741.68,2724.91,114.3,4.07018,0,0),
(5712531,12,3731.79,2710.06,114.828,4.25474,0,0),
(5712531,13,3724.75,2688.54,115.894,4.44716,0,0),
(5712531,14,3728.49,2665.73,120.697,4.95767,0,0),
(5712531,15,3732.86,2649.73,123.365,5.0205,0,0),
(5712531,16,3738.55,2632.65,124.671,5.03228,0,0),
(5712531,17,3741.78,2620.69,126.861,4.93411,0,0),
(5712531,18,3737.57,2616.5,126.382,3.43792,0,0),
(5712531,19,3728.81,2626.61,124.09,2.29124,0,0),
(5712531,20,3706.5,2649.24,118.072,2.30695,0,0),
-- #5712528
(5712528,1,3668.38,2456.05,104.267,1.64142,0,0),
(5712528,2,3668.63,2476.53,104.036,1.449,0,0),
(5712528,3,3671.36,2490.66,104.317,1.22516,0,0),
(5712528,4,3679.07,2498.36,104.929,0.424051,0,0),
(5712528,5,3701.24,2508.46,107.06,0.424051,0,0),
(5712528,6,3713.06,2511.04,108.655,0.0117166,0,0),
(5712528,7,3722.24,2508.07,109.277,5.68622,0,0),
(5712528,8,3734.28,2493.19,110.833,5.26211,0,0),
(5712528,9,3743.8,2476.69,113.875,5.25819,0,0),
(5712528,10,3751.19,2464.8,115.736,5.27782,0,0),
(5712528,11,3765.05,2442.96,118.628,5.27782,0,0),
(5712528,12,3753.71,2427.16,119.588,3.94265,0,0),
(5712528,13,3743.97,2417.11,120.45,3.94265,0,0),
(5712528,14,3727.21,2399.24,121.69,3.96621,0,0),
(5712528,15,3714.14,2386.97,122.331,3.79342,0,0),
(5712528,16,3706.51,2382.06,122.035,3.58922,0,0),
(5712528,17,3699.25,2381.03,121.319,3.05515,0,0),
(5712528,19,3693.83,2385.66,119.776,2.34044,0,0),
(5712528,20,3687.34,2397.27,116.027,2.10089,0,0),
(5712528,21,3672.35,2425.69,107.169,2.06162,0,0),
-- #5712532
(5712532,1,3873.4,2754.37,140.778,1.43038,0,0),
(5712532,2,3873.8,2770.43,140.856,1.54511,0,0),
(5712532,3,3872.77,2795.99,140.411,1.58045,0,0),
(5712532,4,3879.37,2808.32,143.094,0.995331,0,0),
(5712532,5,3886.75,2816.84,146.241,0.637975,0,0),
(5712532,6,3897.91,2816.18,151.189,6.00617,0,0),
(5712532,7,3904.51,2810.41,153.293,5.40535,0,0),
(5712532,8,3903.65,2791.64,151.076,4.53749,0,0),
(5712532,9,3899.77,2765.77,146.274,4.5689,0,0),
(5712532,10,3897.68,2752.61,145.342,4.5689,0,0),
(5712532,11,3894.75,2738.31,144.399,4.53749,0,0),
(5712532,12,3888.76,2719.12,143.825,4.38434,0,0),
(5712532,13,3889.49,2712.02,144.596,5.0205,0,0),
(5712532,14,3892.1,2704.14,145.819,5.03621,0,0),
(5712532,15,3892.27,2692.18,146.63,4.64744,0,0),
(5712532,16,3887.78,2668.58,148.16,4.52571,0,0),
(5712532,17,3864.82,2664.9,138.109,3.18268,0,0),
(5712532,18,3851.77,2667.15,134.855,2.85281,0,0),
(5712532,19,3841.98,2670.28,133.588,2.75463,0,0),
(5712532,20,3846.25,2688.07,135.074,1.23096,0,0),
(5712532,21,3850.47,2698.77,136.648,1.07388,0,0),
(5712532,22,3859.59,2713.71,137.736,1.03068,0,0),
(5712532,23,3869.64,2730.19,139.248,1.05425,0,0),
(5712532,24,3872.06,2741.57,139.428,1.45873,0,0),
-- #5712533
(5712533,1,3633.91,2693.11,90.4249,5.58937,0,0),
(5712533,2,3649.65,2679.86,95.0575,5.58833,0,0),
(5712533,3,3658.78,2679.98,96.4259,0.424336,0,0),
(5712533,4,3662.3,2696.3,94.5625,1.35111,0,0),
(5712533,5,3664.25,2716.18,93.2836,1.49248,0,0),
(5712533,6,3667.52,2747.68,93.091,1.43357,0,0),
(5712533,7,3665.75,2757.17,91.7422,1.98728,0,0),
(5712533,8,3655.52,2770.88,88.2632,2.45459,0,0),
(5712533,9,3638.44,2778.33,83.5019,2.78838,0,0),
(5712533,10,3622.35,2785.12,78.1875,2.80409,0,0),
(5712533,11,3609.72,2785.97,73.6803,3.46383,0,0),
(5712533,12,3602.25,2779.8,71.0261,3.97434,0,0),
(5712533,13,3592.88,2765.46,69.975,4.50447,0,0),
(5712533,14,3594.49,2745.55,72.1061,5.09351,0,0),
(5712533,15,3604.47,2727.05,76.9857,5.3252,0,0),
(5712533,16,3616.9,2709.22,83.7152,5.35662,0,0);

-- Dragonbone Condor 26483
-- waypoints likely for most.. but req. more data
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 26483;

-- Rabid Grizzly 26643
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 26483;
UPDATE creature SET position_x = 3761.706787, position_y = 2238.042969, position_z = 96.035294 WHERE guid = 97979;
UPDATE creature SET position_x = 3648.899658, position_y = 2182.451416, position_z = 82.783043 WHERE guid = 97957;

-- Objects
-- Horde Armaments
-- Moved to WoTLK Range 571x
UPDATE gameobject SET guid = 5710861 WHERE guid = 57809;
UPDATE gameobject SET guid = 5710862 WHERE guid = 57810;
UPDATE gameobject SET guid = 5710863 WHERE guid = 57811;
UPDATE gameobject SET guid = 5710864 WHERE guid = 57812;
UPDATE gameobject SET guid = 5710865 WHERE guid = 57844;
UPDATE gameobject SET guid = 5710866 WHERE guid = 91437;
UPDATE gameobject SET guid = 5710867 WHERE guid = 88001;
UPDATE gameobject SET guid = 5710868 WHERE guid = 88002;
UPDATE gameobject SET guid = 5710869 WHERE guid = 88003;
UPDATE gameobject SET guid = 5710870 WHERE guid = 88004;
UPDATE gameobject SET guid = 5710871 WHERE guid = 88005;
UPDATE gameobject SET guid = 5710872 WHERE guid = 88006;
UPDATE gameobject SET guid = 5710873 WHERE guid = 88828;
UPDATE gameobject SET guid = 5710874 WHERE guid = 88007;
UPDATE gameobject SET guid = 5710875 WHERE guid = 88008;
UPDATE gameobject SET guid = 5710876 WHERE guid = 88009;
UPDATE gameobject SET guid = 5710877 WHERE guid = 88010;
UPDATE gameobject SET guid = 5710878 WHERE guid = 88011;
UPDATE gameobject SET guid = 5710879 WHERE guid = 88012;
UPDATE gameobject SET guid = 5710880 WHERE guid = 88455;
UPDATE gameobject SET guid = 5710881 WHERE guid = 88829;
UPDATE gameobject SET guid = 5710882 WHERE guid = 88832;
UPDATE gameobject SET guid = 5710883 WHERE guid = 88833;
UPDATE gameobject SET guid = 5710884 WHERE guid = 88834;
UPDATE gameobject SET guid = 5710885 WHERE guid = 88835;
UPDATE gameobject SET guid = 5710886 WHERE guid = 57855;
UPDATE gameobject SET guid = 5710887 WHERE guid = 57856;
UPDATE gameobject SET guid = 5710888 WHERE guid = 57857;
UPDATE gameobject SET guid = 5710889 WHERE guid = 57859;
UPDATE gameobject SET guid = 5710890 WHERE guid = 57875;
UPDATE gameobject SET guid = 5710891 WHERE guid = 57877;
UPDATE gameobject SET guid = 5710892 WHERE guid = 57885;
UPDATE gameobject SET guid = 5710893 WHERE guid = 88013;
UPDATE gameobject SET guid = 5710894 WHERE guid = 88014;
UPDATE gameobject SET guid = 5710895 WHERE guid = 88015;
UPDATE gameobject SET guid = 5710896 WHERE guid = 88016;
UPDATE gameobject SET guid = 5710897 WHERE guid = 88017;
UPDATE gameobject SET guid = 5710898 WHERE guid = 88018;
UPDATE gameobject SET guid = 5710899 WHERE guid = 88460;
UPDATE gameobject SET guid = 5710900 WHERE guid = 88461;
UPDATE gameobject SET guid = 5710901 WHERE guid = 88462;
UPDATE gameobject SET guid = 5710902 WHERE guid = 88838;
UPDATE gameobject SET guid = 5710903 WHERE guid = 88840;
UPDATE gameobject SET guid = 5710904 WHERE guid = 88871;
UPDATE gameobject SET guid = 5710905 WHERE guid = 88872;
UPDATE gameobject SET guid = 5710906 WHERE guid = 91444;
UPDATE gameobject SET guid = 5710907 WHERE guid = 91445;
UPDATE gameobject SET guid = 5710908 WHERE guid = 91446;
-- spawntimes corrected
UPDATE gameobject SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id IN (188236,188237,188238);

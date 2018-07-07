-- ==================
-- Salve via Skinning
-- ==================
UPDATE quest_template SET RewMoneyMaxLevel=3660 WHERE entry IN (4106); -- Alliance Non-repeatable - Add missing XP reward
UPDATE quest_template SET RewMoneyMaxLevel=0 WHERE entry=5890; -- Horde Repeatable - Remove XP reward


-- ==================
-- Salve via Hunting
-- ==================
UPDATE quest_template SET RewMoneyMaxLevel=3660 WHERE entry IN (4103); -- Alliance Non-repeatable - Add missing XP reward
UPDATE quest_template SET RewMoneyMaxLevel=0 WHERE entry=5887; -- Horde Repeatable - Remove XP reward

-- ==================
-- Salve via Mining
-- ==================
UPDATE quest_template SET RewMoneyMaxLevel=3660 WHERE entry IN (4104); -- Alliance Non-repeatable - Add missing XP reward
UPDATE quest_template SET RewMoneyMaxLevel=0 WHERE entry=5888; -- Horde Repeatable - Remove XP reward


-- ==================
-- Salve via Gathering
-- ==================
UPDATE quest_template SET RewMoneyMaxLevel=3660 WHERE entry IN (4105); -- Alliance Non-repeatable - Add missing XP reward
UPDATE quest_template SET RewMoneyMaxLevel=0 WHERE entry=5889; -- Horde Repeatable - Remove XP reward


-- =======================
-- Salve via Disenchanting
-- =======================
UPDATE quest_template SET RewMoneyMaxLevel=3660 WHERE entry IN (4107); -- Alliance Non-repeatable - Add missing XP reward
UPDATE quest_template SET RewMoneyMaxLevel=0 WHERE entry=5891; -- Horde Repeatable - Remove XP reward

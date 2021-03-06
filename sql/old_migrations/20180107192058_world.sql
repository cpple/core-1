DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180107192058');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180107192058');
-- Add your query below.

UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry` IN (11981,14601);

UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry` IN (
11981,
60,
2033,
3343,
3502,
3625,
4255,
4257,
5086,
5134,
5135,
5139,
7022,
7939,
8338,
9460,
9526,
10177,
10364,
10367,
10411,
10437,
10472,
10478,
10491,
10502,
10504,
10505,
10799,
10901,
10917,
10919,
10981,
10991,
11064,
11190,
11196,
11261,
11460,
11461,
11464,
11465,
11476,
11477,
11492,
11598,
11636,
11661,
11662,
11666,
11667,
11668,
11669,
11672,
11837,
11838,
11839,
11840,
11982,
11997,
11998,
12050,
12053,
12056,
12096,
12097,
12098,
12118,
12123,
12259,
12264,
12378,
12379,
12380,
12795,
13022,
13276,
13326,
13328,
13448,
13676,
14020,
14185,
14186,
14187,
14188,
14267,
14282,
14455,
14458,
14460,
15286,
15288,
15290,
16479,
15542);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;

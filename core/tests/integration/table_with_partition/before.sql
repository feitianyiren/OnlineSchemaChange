-- Copyright (c) 2017-present, Facebook, Inc.
-- All rights reserved.
-- 
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.

drop TABLE IF EXISTS `table1` ;
CREATE TABLE IF NOT EXISTS `table1` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0' ,
  `data` mediumtext COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`id`) COMMENT 'id'
) ENGINE=InnoDB
/*!50100 PARTITION BY RANGE (id)
(PARTITION p1 VALUES LESS THAN (2) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (3) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
insert into table1 values (1,'a');
insert into table1 values (2,'b');

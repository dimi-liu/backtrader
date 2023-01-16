/*
 Navicat Premium Data Transfer

 Source Server         : finance
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 03/11/2022 14:58:47
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for stock_all_221102
-- ----------------------------
DROP TABLE IF EXISTS "{0}";
CREATE TABLE "{0}" (
  "date" TEXT(20) NOT NULL,
  "code" TEXT(12) NOT NULL,
  "name" TEXT(20) NOT NULL,
  "open" REAL,
  "high" REAL,
  "close" REAL,
  "low" REAL,
  "volume" REAL,
  "price_change" REAL,
  "p_change" REAL,
  "ma5" REAL,
  "ma10" REAL,
  "ma20" REAL,
  "v_ma5" REAL,
  "v_ma10" REAL,
  "v_ma20" REAL,
  "turnover" REAL,
  "pk" text(20) NOT NULL,
  PRIMARY KEY ("pk")
);

-- ----------------------------
-- Indexes structure for table stock_all_221102
-- ----------------------------
CREATE INDEX "{0}_code"
ON "{0}" (
  "code" ASC
);
CREATE INDEX "{0}_date"
ON "{0}" (
  "date" DESC
);
CREATE INDEX "{0}_name"
ON "{0}" (
  "name" DESC
);

PRAGMA foreign_keys = true;

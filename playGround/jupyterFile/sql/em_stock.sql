/*
 Navicat Premium Data Transfer

 Source Server         : stock
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 17/11/2022 17:41:48
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for em_stock_hfq_20210101_20211231_20221117
-- ----------------------------
DROP TABLE IF EXISTS "{0}";
CREATE TABLE "{0}" (
  "日期" TEXT NOT NULL,
  "开盘" REAL,
  "收盘" REAL,
  "最高" REAL,
  "最低" REAL,
  "成交量" INTEGER,
  "成交额" REAL,
  "振幅" REAL,
  "涨跌幅" REAL,
  "涨跌额" REAL,
  "换手率" REAL,
  "code" TEXT NOT NULL,
  "pk" TEXT NOT NULL,
  PRIMARY KEY ("pk")
);

PRAGMA foreign_keys = true;

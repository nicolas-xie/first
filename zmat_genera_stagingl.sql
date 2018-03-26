/*
Navicat MySQL Data Transfer

Source Server         : LCC PrePRD
Source Server Version : 50712
Source Host           : 10.99.206.164:3306
Source Database       : lenovo_emea

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2018-03-23 17:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zmat_general_staging
-- ----------------------------
DROP TABLE IF EXISTS `zmat_general_staging`;
CREATE TABLE `zmat_general_staging` (
  `PRODUCT_ID` char(40) NOT NULL COMMENT 'Product ID',
  `gtin` char(40) DEFAULT NULL COMMENT 'Global Trade Item Number (GTIN)',
  `unit` char(3) DEFAULT NULL COMMENT 'Units of Measure of Product',
  `gross_weight` decimal(13,3) DEFAULT NULL COMMENT 'Gross Weight',
  `net_weight` decimal(13,3) DEFAULT NULL COMMENT 'Net Weight',
  `weight_unit` char(3) DEFAULT NULL COMMENT 'Weight Unit',
  `length` decimal(13,3) DEFAULT NULL COMMENT 'Length of the Product or of the Packaging of the Product',
  `width` decimal(13,3) DEFAULT NULL COMMENT 'Width of the Product or of the Packaging of the Product',
  `height` decimal(13,3) DEFAULT NULL COMMENT 'Height of the Product or of the Packaging of the Product',
  `unit_of_dim` char(3) DEFAULT NULL COMMENT 'Unit in Which Length/Width/Height Is Measured',
  `EAN` char(18) DEFAULT NULL COMMENT 'International Article Number (EAN/UPC)',
  `EAN_Category` char(2) DEFAULT NULL COMMENT 'Category of International Article Number (EAN)',
  `Material_Type` char(4) DEFAULT NULL COMMENT 'Material Type',
  `Product_hierarchy` char(18) DEFAULT NULL COMMENT 'Product hierarchy',
  `MFGNUMBER` char(40) DEFAULT NULL COMMENT 'Manufacturer Part#',
  `CONFIGURABLE` char(1) DEFAULT NULL COMMENT 'Determines Whether a Product Is Configurable',
  `MSTAE` char(2) DEFAULT NULL COMMENT 'Cross-Plant Material Status',
  `CREATEDATE` date DEFAULT NULL COMMENT 'Date',
  `UPDATEDATE` date DEFAULT NULL COMMENT 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)',
  `integration_updatedate` datetime DEFAULT NULL,
  `integration_createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `zmat_general_index1` (`Product_hierarchy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

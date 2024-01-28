
CREATE TABLE `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_id` INT NOT NULL,
  `city_id` INT NOT NULL,
  `area_id` INT NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `nearest_landmark` VARCHAR(255) DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)) ;




CREATE TABLE `areas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_id` INT NOT NULL,
  `city_id` INT NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `bank_accounts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bank` VARCHAR(64) NOT NULL,
  `account_title` VARCHAR(64) NOT NULL,
  `iban` VARCHAR(34) NOT NULL,
  `branch_address` VARCHAR(150) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `cities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `country_id` INT NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `countries` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `designation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`) );


CREATE TABLE `donations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `account_id` INT NOT NULL,
  `member_id` INT NOT NULL,
  `amount` DECIMAL(10,0) NOT NULL,
  `tyoe_list_id` INT NOT NULL,
  `donation_date` DATETIME NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `gender` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `members` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `contact_no` INT NOT NULL,
  `whatsapp_no` INT NOT NULL,
  `age` INT NOT NULL,
  `gender_id` INT NOT NULL,
  `profession_id` INT NOT NULL,
  `designation_id` INT DEFAULT NULL,
  `address_id` INT DEFAULT NULL,
  `member_type_id` INT NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)) ;
  
  
  CREATE TABLE `members_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)) ;


CREATE TABLE `profession` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `type_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `type_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type_category_id` INT NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) DEFAULT NULL,
  `modified_by` VARCHAR(100) DEFAULT NULL,
  `active` ENUM('Yes','No') DEFAULT 'Yes',
  `deleted_by` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;



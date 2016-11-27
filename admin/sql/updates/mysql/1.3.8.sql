CREATE TABLE IF NOT EXISTS `#__sermondistributor_external_source` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`build` TINYINT(1) NOT NULL DEFAULT '0',
	`description` VARCHAR(255) NOT NULL DEFAULT '',
	`dropboxoptions` TINYINT(1) NOT NULL DEFAULT '1',
	`externalsources` INT(11) NOT NULL DEFAULT '0',
	`filetypes` TEXT NOT NULL,
	`folder` TEXT NOT NULL,
	`not_required` INT(1) NOT NULL DEFAULT '0',
	`oauthtoken` TEXT NOT NULL,
	`permissiontype` VARCHAR(64) NOT NULL DEFAULT '',
	`sharedurl` TEXT NOT NULL,
	`update_method` TINYINT NOT NULL DEFAULT '0',
	`update_timer` INT(1) NOT NULL DEFAULT '0',
	`params` TEXT NOT NULL,
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`ordering` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`id`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_description` (`description`),
	KEY `idx_externalsources` (`externalsources`),
	KEY `idx_update_method` (`update_method`),
	KEY `idx_build` (`build`),
	KEY `idx_dropboxoptions` (`dropboxoptions`),
	KEY `idx_permissiontype` (`permissiontype`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__sermondistributor_local_listing` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`build` TINYINT(1) NOT NULL DEFAULT '0',
	`external_source` int(11) NOT NULL DEFAULT '0',
	`key` VARCHAR(255) NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`size` INT(50) NOT NULL DEFAULT '0',
	`url` TEXT NOT NULL,
	`params` TEXT NOT NULL,
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`ordering` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`id`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_build` (`build`),
	KEY `idx_key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

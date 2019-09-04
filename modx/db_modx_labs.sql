-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 04 2019 г., 10:17
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_modx_labs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 11),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(6, 'web', 'modUserGroup', 4, 9999, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_view', 'perm.file_view_desc', 1),
(59, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(60, 1, 'frames', 'perm.frames_desc', 1),
(61, 1, 'help', 'perm.help_desc', 1),
(62, 1, 'home', 'perm.home_desc', 1),
(63, 1, 'import_static', 'perm.import_static_desc', 1),
(64, 1, 'languages', 'perm.languages_desc', 1),
(65, 1, 'lexicons', 'perm.lexicons_desc', 1),
(66, 1, 'list', 'perm.list_desc', 1),
(67, 1, 'load', 'perm.load_desc', 1),
(68, 1, 'logout', 'perm.logout_desc', 1),
(69, 1, 'logs', 'perm.logs_desc', 1),
(70, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(71, 1, 'menu_security', 'perm.menu_security_desc', 1),
(72, 1, 'menu_site', 'perm.menu_site_desc', 1),
(73, 1, 'menu_support', 'perm.menu_support_desc', 1),
(74, 1, 'menu_system', 'perm.menu_system_desc', 1),
(75, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(76, 1, 'menu_user', 'perm.menu_user_desc', 1),
(77, 1, 'menus', 'perm.menus_desc', 1),
(78, 1, 'messages', 'perm.messages_desc', 1),
(79, 1, 'namespaces', 'perm.namespaces_desc', 1),
(80, 1, 'new_category', 'perm.new_category_desc', 1),
(81, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(82, 1, 'new_context', 'perm.new_context_desc', 1),
(83, 1, 'new_document', 'perm.new_document_desc', 1),
(84, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(85, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(86, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(87, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(88, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(89, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(90, 1, 'new_role', 'perm.new_role_desc', 1),
(91, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(92, 1, 'new_template', 'perm.new_template_desc', 1),
(93, 1, 'new_tv', 'perm.new_tv_desc', 1),
(94, 1, 'new_user', 'perm.new_user_desc', 1),
(95, 1, 'packages', 'perm.packages_desc', 1),
(96, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(97, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(98, 1, 'policy_new', 'perm.policy_new_desc', 1),
(99, 1, 'policy_save', 'perm.policy_save_desc', 1),
(100, 1, 'policy_view', 'perm.policy_view_desc', 1),
(101, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(102, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(103, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(104, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(105, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(106, 1, 'property_sets', 'perm.property_sets_desc', 1),
(107, 1, 'providers', 'perm.providers_desc', 1),
(108, 1, 'publish_document', 'perm.publish_document_desc', 1),
(109, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(110, 1, 'remove', 'perm.remove_desc', 1),
(111, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(112, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(113, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(114, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(115, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(116, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(117, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(118, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(119, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(120, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(121, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(122, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(123, 1, 'save', 'perm.save_desc', 1),
(124, 1, 'save_category', 'perm.save_category_desc', 1),
(125, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(126, 1, 'save_context', 'perm.save_context_desc', 1),
(127, 1, 'save_document', 'perm.save_document_desc', 1),
(128, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(129, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(130, 1, 'save_role', 'perm.save_role_desc', 1),
(131, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(132, 1, 'save_template', 'perm.save_template_desc', 1),
(133, 1, 'save_tv', 'perm.save_tv_desc', 1),
(134, 1, 'save_user', 'perm.save_user_desc', 1),
(135, 1, 'search', 'perm.search_desc', 1),
(136, 1, 'settings', 'perm.settings_desc', 1),
(137, 1, 'source_save', 'perm.source_save_desc', 1),
(138, 1, 'source_delete', 'perm.source_delete_desc', 1),
(139, 1, 'source_edit', 'perm.source_edit_desc', 1),
(140, 1, 'source_view', 'perm.source_view_desc', 1),
(141, 1, 'sources', 'perm.sources_desc', 1),
(142, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(143, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(144, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(145, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(146, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(147, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(148, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(149, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(150, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(151, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(152, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(153, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(154, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(155, 1, 'view', 'perm.view_desc', 1),
(156, 1, 'view_category', 'perm.view_category_desc', 1),
(157, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(158, 1, 'view_context', 'perm.view_context_desc', 1),
(159, 1, 'view_document', 'perm.view_document_desc', 1),
(160, 1, 'view_element', 'perm.view_element_desc', 1),
(161, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(162, 1, 'view_offline', 'perm.view_offline_desc', 1),
(163, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(164, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(165, 1, 'view_role', 'perm.view_role_desc', 1),
(166, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(167, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(168, 1, 'view_template', 'perm.view_template_desc', 1),
(169, 1, 'view_tv', 'perm.view_tv_desc', 1),
(170, 1, 'view_user', 'perm.view_user_desc', 1),
(171, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(172, 1, 'workspaces', 'perm.workspaces_desc', 1),
(173, 2, 'add_children', 'perm.add_children_desc', 1),
(174, 2, 'copy', 'perm.copy_desc', 1),
(175, 2, 'create', 'perm.create_desc', 1),
(176, 2, 'delete', 'perm.delete_desc', 1),
(177, 2, 'list', 'perm.list_desc', 1),
(178, 2, 'load', 'perm.load_desc', 1),
(179, 2, 'move', 'perm.move_desc', 1),
(180, 2, 'publish', 'perm.publish_desc', 1),
(181, 2, 'remove', 'perm.remove_desc', 1),
(182, 2, 'save', 'perm.save_desc', 1),
(183, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(184, 2, 'undelete', 'perm.undelete_desc', 1),
(185, 2, 'unpublish', 'perm.unpublish_desc', 1),
(186, 2, 'view', 'perm.view_desc', 1),
(187, 3, 'load', 'perm.load_desc', 1),
(188, 3, 'list', 'perm.list_desc', 1),
(189, 3, 'view', 'perm.view_desc', 1),
(190, 3, 'save', 'perm.save_desc', 1),
(191, 3, 'remove', 'perm.remove_desc', 1),
(192, 4, 'add_children', 'perm.add_children_desc', 1),
(193, 4, 'create', 'perm.create_desc', 1),
(194, 4, 'copy', 'perm.copy_desc', 1),
(195, 4, 'delete', 'perm.delete_desc', 1),
(196, 4, 'list', 'perm.list_desc', 1),
(197, 4, 'load', 'perm.load_desc', 1),
(198, 4, 'remove', 'perm.remove_desc', 1),
(199, 4, 'save', 'perm.save_desc', 1),
(200, 4, 'view', 'perm.view_desc', 1),
(201, 5, 'create', 'perm.create_desc', 1),
(202, 5, 'copy', 'perm.copy_desc', 1),
(203, 5, 'list', 'perm.list_desc', 1),
(204, 5, 'load', 'perm.load_desc', 1),
(205, 5, 'remove', 'perm.remove_desc', 1),
(206, 5, 'save', 'perm.save_desc', 1),
(207, 5, 'view', 'perm.view_desc', 1),
(208, 6, 'load', 'perm.load_desc', 1),
(209, 6, 'list', 'perm.list_desc', 1),
(210, 6, 'view', 'perm.view_desc', 1),
(211, 6, 'save', 'perm.save_desc', 1),
(212, 6, 'remove', 'perm.remove_desc', 1),
(213, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(214, 6, 'copy', 'perm.copy_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_resource_groups`
--

INSERT INTO `modx_access_resource_groups` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(7, '4', 'modUserGroup', 4, 9999, 4, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`) VALUES
(1, 0, 'Frontend'),
(2, 0, 'Backend');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(1, 1, 0),
(0, 1, 0),
(2, 2, 0),
(0, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_documentgroup_names`
--

INSERT INTO `modx_documentgroup_names` (`id`, `name`, `private_memgroup`, `private_webgroup`) VALUES
(4, 'Users', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_document_groups`
--

INSERT INTO `modx_document_groups` (`id`, `document_group`, `document`) VALUES
(9, 4, 5),
(10, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2019-07-29 10:46:59', 'template_create', 'modTemplate', '2'),
(2, 1, '2019-07-29 10:47:37', 'template_delete', 'modTemplate', '2'),
(3, 1, '2019-07-29 10:48:55', 'template_update', 'modTemplate', '1'),
(4, 1, '2019-07-29 10:51:53', 'template_update', 'modTemplate', '1'),
(5, 1, '2019-07-29 10:54:37', 'template_update', 'modTemplate', '1'),
(6, 1, '2019-07-29 10:55:58', 'template_update', 'modTemplate', '1'),
(7, 1, '2019-07-30 02:55:23', 'chunk_create', 'modChunk', '1'),
(8, 1, '2019-07-30 02:55:41', 'template_update', 'modTemplate', '1'),
(9, 1, '2019-07-30 02:56:39', 'template_update', 'modTemplate', '1'),
(10, 1, '2019-07-30 02:59:02', 'chunk_create', 'modChunk', '2'),
(11, 1, '2019-07-30 02:59:15', 'chunk_update', 'modChunk', '2'),
(12, 1, '2019-07-30 02:59:32', 'template_update', 'modTemplate', '1'),
(13, 1, '2019-07-30 03:00:26', 'chunk_create', 'modChunk', '3'),
(14, 1, '2019-07-30 03:01:18', 'chunk_create', 'modChunk', '4'),
(15, 1, '2019-07-30 03:01:31', 'template_update', 'modTemplate', '1'),
(16, 1, '2019-07-30 03:06:34', 'template_update', 'modTemplate', '1'),
(17, 1, '2019-07-30 03:06:39', 'template_update', 'modTemplate', '1'),
(18, 1, '2019-07-30 03:07:05', 'chunk_update', 'modChunk', '4'),
(19, 1, '2019-07-30 03:08:12', 'chunk_update', 'modChunk', '3'),
(20, 1, '2019-07-30 03:14:20', 'template_update', 'modTemplate', '1'),
(21, 1, '2019-07-30 03:14:41', 'chunk_update', 'modChunk', '1'),
(22, 1, '2019-07-30 03:15:16', 'template_update', 'modTemplate', '1'),
(23, 1, '2019-07-30 03:15:50', 'chunk_update', 'modChunk', '4'),
(24, 1, '2019-07-30 03:21:34', 'chunk_update', 'modChunk', '4'),
(25, 1, '2019-07-30 03:21:43', 'chunk_update', 'modChunk', '4'),
(26, 1, '2019-07-30 03:49:12', 'category_create', 'modCategory', '1'),
(27, 1, '2019-07-30 03:49:18', 'category_create', 'modCategory', '2'),
(28, 1, '2019-07-30 03:49:28', 'template_update', 'modTemplate', '1'),
(29, 1, '2019-07-30 03:49:38', 'chunk_update', 'modChunk', '4'),
(30, 1, '2019-07-30 03:49:54', 'chunk_update', 'modChunk', '3'),
(31, 1, '2019-07-30 04:43:54', 'user_group_create', 'modUserGroup', '2'),
(32, 1, '2019-07-30 04:47:51', 'template_create', 'modTemplate', '3'),
(33, 1, '2019-07-30 04:49:06', 'resource_create', 'modDocument', '2'),
(34, 1, '2019-07-30 04:49:54', 'resource_create', 'modDocument', '3'),
(35, 1, '2019-07-30 04:50:06', 'resource_update', 'modResource', '2'),
(36, 1, '2019-07-30 04:51:46', 'resource_create', 'modDocument', '4'),
(37, 1, '2019-07-30 04:52:06', 'resource_create', 'modDocument', '5'),
(38, 1, '2019-07-30 04:53:22', 'resource_create', 'modDocument', '6'),
(39, 1, '2019-07-30 04:53:56', 'resource_create', 'modDocument', '7'),
(40, 1, '2019-07-30 04:58:59', 'resource_update', 'modResource', '3'),
(41, 1, '2019-07-30 04:59:01', 'resource_update', 'modResource', '3'),
(42, 1, '2019-07-30 05:00:38', 'resource_update', 'modResource', '5'),
(43, 1, '2019-07-30 05:02:43', 'user_create', 'modUser', '2'),
(44, 1, '2019-07-30 05:09:28', 'resource_update', 'modResource', '7'),
(45, 1, '2019-07-30 05:12:42', 'template_update', 'modTemplate', '3'),
(46, 1, '2019-07-30 05:12:58', 'template_update', 'modTemplate', '3'),
(47, 1, '2019-07-30 05:13:24', 'template_update', 'modTemplate', '3'),
(48, 1, '2019-07-30 05:23:49', 'resource_update', 'modResource', '2'),
(49, 1, '2019-07-30 05:24:26', 'resource_update', 'modResource', '3'),
(50, 1, '2019-07-30 05:24:48', 'template_update', 'modTemplate', '3'),
(51, 1, '2019-07-30 05:24:57', 'template_update', 'modTemplate', '3'),
(52, 1, '2019-07-30 05:25:07', 'template_update', 'modTemplate', '3'),
(53, 1, '2019-07-30 05:25:12', 'template_update', 'modTemplate', '3'),
(54, 1, '2019-07-30 05:27:42', 'resource_update', 'modResource', '3'),
(55, 1, '2019-07-30 05:27:47', 'resource_update', 'modResource', '2'),
(56, 1, '2019-07-30 05:27:58', 'resource_update', 'modResource', '3'),
(57, 1, '2019-07-30 05:28:16', 'resource_update', 'modResource', '4'),
(58, 1, '2019-07-30 05:28:27', 'resource_update', 'modResource', '5'),
(59, 1, '2019-07-30 05:28:48', 'resource_update', 'modResource', '7'),
(60, 1, '2019-07-30 05:28:55', 'resource_update', 'modResource', '6'),
(61, 1, '2019-07-30 05:30:50', 'user_group_update', 'modUserGroup', '2'),
(62, 1, '2019-07-30 05:38:46', 'template_update', 'modTemplate', '3'),
(63, 1, '2019-07-30 05:40:04', 'resource_update', 'modResource', '5'),
(64, 1, '2019-07-30 05:40:11', 'delete_resource', 'modDocument', '7'),
(65, 1, '2019-07-30 05:40:17', 'undelete_resource', 'modResource', '7'),
(66, 1, '2019-07-30 05:40:29', 'unpublish_resource', 'modResource', '7'),
(67, 1, '2019-07-30 05:40:34', 'delete_resource', 'modDocument', '7'),
(68, 1, '2019-07-30 05:40:45', 'resource_update', 'modResource', '7'),
(69, 1, '2019-07-30 05:40:53', 'resource_update', 'modResource', '7'),
(70, 1, '2019-07-30 05:42:31', 'resource_update', 'modResource', '3'),
(71, 1, '2019-07-30 05:43:27', 'resource_update', 'modResource', '5'),
(72, 1, '2019-07-30 05:44:46', 'delete_resource', 'modDocument', '6'),
(73, 1, '2019-07-30 05:44:49', 'delete_resource', 'modDocument', '4'),
(74, 1, '2019-07-30 05:45:10', 'resource_update', 'modResource', '3'),
(75, 1, '2019-07-30 05:49:30', 'resource_update', 'modResource', '5'),
(76, 1, '2019-07-30 05:50:32', 'resource_update', 'modResource', '5'),
(77, 1, '2019-07-30 05:51:04', 'resource_update', 'modResource', '5'),
(78, 1, '2019-07-30 05:51:24', 'resource_update', 'modResource', '5'),
(79, 1, '2019-07-30 05:52:17', 'resource_update', 'modResource', '5'),
(80, 1, '2019-07-30 05:54:37', 'user_update', 'modUser', '2'),
(81, 1, '2019-07-30 05:54:49', 'resource_update', 'modResource', '5'),
(82, 1, '2019-07-30 05:56:03', 'resource_update', 'modResource', '5'),
(83, 1, '2019-07-30 05:56:15', 'resource_update', 'modResource', '5'),
(84, 1, '2019-07-30 05:56:34', 'user_update', 'modUser', '2'),
(85, 1, '2019-07-30 05:56:46', 'user_update', 'modUser', '2'),
(86, 1, '2019-07-30 05:57:19', 'resource_update', 'modResource', '5'),
(87, 1, '2019-07-30 06:05:47', 'user_group_update', 'modUserGroup', '2'),
(88, 1, '2019-07-30 06:06:15', 'user_update', 'modUser', '2'),
(89, 1, '2019-07-30 06:07:05', 'resource_update', 'modResource', '5'),
(90, 1, '2019-07-30 06:07:21', 'resource_update', 'modResource', '5'),
(91, 1, '2019-07-30 06:07:27', 'resource_update', 'modResource', '5'),
(92, 1, '2019-07-30 06:10:38', 'resource_update', 'modResource', '2'),
(93, 1, '2019-07-30 06:11:30', 'resource_update', 'modResource', '2'),
(94, 1, '2019-07-30 06:12:05', 'resource_update', 'modResource', '5'),
(95, 1, '2019-07-30 06:24:03', 'resource_group_create', 'modResourceGroup', '2'),
(96, 1, '2019-07-30 06:24:10', 'delete_resource_group', 'modResourceGroup', '1'),
(97, 1, '2019-07-30 06:25:33', 'user_group_create', 'modUserGroup', '3'),
(98, 1, '2019-07-30 06:25:38', 'user_group_delete', 'modUserGroup', '2'),
(99, 1, '2019-07-30 06:27:32', 'resource_update', 'modResource', '5'),
(100, 1, '2019-07-30 06:29:00', 'user_group_update', 'modUserGroup', '3'),
(101, 1, '2019-07-30 06:33:24', 'setting_update', 'modSystemSetting', 'friendly_alias_max_length'),
(102, 1, '2019-07-30 06:34:05', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(103, 1, '2019-07-30 06:34:45', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(104, 1, '2019-07-30 06:34:50', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(105, 1, '2019-07-30 06:35:55', 'resource_update', 'modResource', '5'),
(106, 1, '2019-07-30 06:35:57', 'resource_update', 'modResource', '5'),
(107, 1, '2019-07-30 06:40:33', 'chunk_update', 'modChunk', '3'),
(108, 1, '2019-07-30 06:40:53', 'chunk_update', 'modChunk', '3'),
(109, 1, '2019-07-30 06:42:44', 'chunk_update', 'modChunk', '3'),
(110, 1, '2019-07-30 06:43:41', 'chunk_update', 'modChunk', '3'),
(111, 1, '2019-07-30 06:46:36', 'chunk_update', 'modChunk', '3'),
(112, 1, '2019-07-30 06:47:37', 'chunk_update', 'modChunk', '3'),
(113, 1, '2019-07-30 06:47:44', 'chunk_update', 'modChunk', '3'),
(114, 1, '2019-07-30 06:48:11', 'chunk_update', 'modChunk', '3'),
(115, 1, '2019-07-30 06:48:59', 'chunk_update', 'modChunk', '3'),
(116, 1, '2019-07-30 06:50:18', 'chunk_update', 'modChunk', '5'),
(117, 1, '2019-07-30 06:50:20', 'chunk_update', 'modChunk', '5'),
(118, 1, '2019-07-30 06:50:27', 'chunk_update', 'modChunk', '3'),
(119, 1, '2019-07-30 06:50:30', 'chunk_update', 'modChunk', '3'),
(120, 1, '2019-07-30 06:51:21', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(121, 1, '2019-07-30 06:51:23', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(122, 1, '2019-07-30 06:51:58', 'chunk_update', 'modChunk', '3'),
(123, 1, '2019-07-30 06:52:53', 'chunk_update', 'modChunk', '5'),
(124, 1, '2019-07-30 06:53:25', 'chunk_update', 'modChunk', '5'),
(125, 1, '2019-07-30 06:53:55', 'chunk_update', 'modChunk', '3'),
(126, 1, '2019-07-30 06:57:16', 'chunk_update', 'modChunk', '3'),
(127, 1, '2019-07-30 06:57:51', 'chunk_update', 'modChunk', '3'),
(128, 1, '2019-07-30 06:59:09', 'chunk_update', 'modChunk', '3'),
(129, 1, '2019-07-30 07:00:54', 'chunk_update', 'modChunk', '3'),
(130, 1, '2019-07-30 07:01:21', 'chunk_update', 'modChunk', '3'),
(131, 1, '2019-07-30 07:01:52', 'chunk_update', 'modChunk', '3'),
(132, 1, '2019-07-30 07:02:22', 'chunk_update', 'modChunk', '3'),
(133, 1, '2019-07-30 07:02:30', 'chunk_update', 'modChunk', '3'),
(134, 1, '2019-07-30 07:03:52', 'chunk_update', 'modChunk', '3'),
(135, 1, '2019-07-30 07:03:55', 'chunk_update', 'modChunk', '3'),
(136, 1, '2019-07-30 07:04:44', 'chunk_update', 'modChunk', '3'),
(137, 1, '2019-07-30 07:05:20', 'chunk_update', 'modChunk', '3'),
(138, 1, '2019-07-30 07:06:28', 'chunk_update', 'modChunk', '3'),
(139, 1, '2019-07-30 07:06:55', 'chunk_update', 'modChunk', '3'),
(140, 1, '2019-07-30 07:07:43', 'resource_update', 'modResource', '3'),
(141, 1, '2019-07-30 07:08:35', 'resource_update', 'modResource', '3'),
(142, 1, '2019-07-30 07:09:35', 'chunk_update', 'modChunk', '3'),
(143, 1, '2019-07-30 07:11:49', 'chunk_update', 'modChunk', '3'),
(144, 1, '2019-07-30 07:12:01', 'resource_update', 'modResource', '3'),
(145, 1, '2019-07-30 07:12:32', 'resource_update', 'modResource', '3'),
(146, 1, '2019-07-30 07:16:29', 'chunk_update', 'modChunk', '3'),
(147, 1, '2019-07-30 07:18:01', 'chunk_update', 'modChunk', '3'),
(148, 1, '2019-07-30 07:18:04', 'chunk_create', 'modChunk', '17'),
(149, 1, '2019-07-30 07:18:13', 'chunk_update', 'modChunk', '17'),
(150, 1, '2019-07-30 07:18:31', 'chunk_update', 'modChunk', '3'),
(151, 1, '2019-07-30 07:19:18', 'chunk_update', 'modChunk', '17'),
(152, 1, '2019-07-30 07:19:43', 'chunk_update', 'modChunk', '3'),
(153, 1, '2019-07-30 07:20:33', 'chunk_update', 'modChunk', '17'),
(154, 1, '2019-07-30 07:21:09', 'chunk_update', 'modChunk', '17'),
(155, 1, '2019-07-30 07:21:44', 'chunk_update', 'modChunk', '3'),
(156, 1, '2019-07-30 07:21:48', 'chunk_update', 'modChunk', '3'),
(157, 1, '2019-07-30 07:22:04', 'delete_resource', 'modDocument', '3'),
(158, 1, '2019-07-30 07:22:30', 'chunk_update', 'modChunk', '17'),
(159, 1, '2019-07-30 07:23:16', 'chunk_update', 'modChunk', '3'),
(160, 1, '2019-07-30 07:23:18', 'chunk_update', 'modChunk', '3'),
(161, 1, '2019-07-30 07:24:17', 'chunk_create', 'modChunk', '18'),
(162, 1, '2019-07-30 07:25:36', 'chunk_update', 'modChunk', '18'),
(163, 1, '2019-07-30 07:26:55', 'chunk_update', 'modChunk', '18'),
(164, 1, '2019-07-30 07:27:41', 'chunk_update', 'modChunk', '18'),
(165, 1, '2019-07-30 07:27:48', 'chunk_update', 'modChunk', '18'),
(166, 1, '2019-07-30 07:29:55', 'resource_update', 'modResource', '5'),
(167, 1, '2019-07-30 07:30:08', 'resource_update', 'modResource', '5'),
(168, 1, '2019-07-30 07:30:30', 'resource_update', 'modResource', '5'),
(169, 1, '2019-07-30 07:34:04', 'user_group_update', 'modUserGroup', 'unknown'),
(170, 1, '2019-07-30 07:34:57', 'resource_group_create', 'modResourceGroup', '3'),
(171, 1, '2019-07-30 07:35:00', 'delete_resource_group', 'modResourceGroup', '2'),
(172, 1, '2019-07-30 07:36:55', 'user_group_update', 'modUserGroup', 'unknown'),
(173, 1, '2019-07-30 07:37:20', 'user_group_update', 'modUserGroup', '3'),
(174, 1, '2019-07-30 07:40:57', 'update_resource_group', 'modResourceGroup', '3'),
(175, 1, '2019-07-30 07:42:14', 'delete_resource_group', 'modResourceGroup', '3'),
(176, 1, '2019-07-30 07:42:28', 'user_group_delete', 'modUserGroup', '3'),
(177, 1, '2019-07-30 07:42:46', 'user_group_update', 'modUserGroup', 'unknown'),
(178, 1, '2019-07-30 07:44:12', 'resource_group_create', 'modResourceGroup', '4'),
(179, 1, '2019-07-30 07:44:36', 'user_group_create', 'modUserGroup', '4'),
(180, 1, '2019-07-30 07:45:01', 'user_group_update', 'modUserGroup', '4'),
(181, 1, '2019-07-30 07:45:42', 'user_group_update', 'modUserGroup', '4'),
(182, 1, '2019-07-30 07:47:53', 'user_group_update', 'modUserGroup', '4'),
(183, 1, '2019-07-30 07:48:19', 'user_group_update', 'modUserGroup', '4'),
(184, 1, '2019-07-30 07:48:34', 'user_group_update', 'modUserGroup', '4'),
(185, 1, '2019-07-30 07:50:07', 'user_update', 'modUser', '2'),
(186, 1, '2019-07-30 07:52:01', 'user_group_update', 'modUserGroup', '4'),
(187, 1, '2019-07-30 07:52:31', 'resource_update', 'modResource', '2'),
(188, 1, '2019-07-30 07:52:47', 'resource_update', 'modResource', '5'),
(189, 1, '2019-07-30 07:55:23', 'resource_update', 'modResource', '5'),
(190, 1, '2019-07-30 07:55:53', 'template_update', 'modTemplate', '3'),
(191, 1, '2019-07-30 07:56:01', 'template_update', 'modTemplate', '3'),
(192, 1, '2019-07-30 08:00:42', 'chunk_update', 'modChunk', '1'),
(193, 1, '2019-07-30 08:00:48', 'chunk_update', 'modChunk', '2'),
(194, 1, '2019-07-30 08:04:48', 'chunk_create', 'modChunk', '19'),
(195, 1, '2019-07-30 08:04:58', 'chunk_update', 'modChunk', '19'),
(196, 1, '2019-07-30 08:05:12', 'chunk_update', 'modChunk', '17'),
(197, 1, '2019-07-30 08:05:23', 'chunk_update', 'modChunk', '3'),
(198, 1, '2019-07-30 08:05:43', 'chunk_update', 'modChunk', '3'),
(199, 1, '2019-07-30 08:05:46', 'chunk_update', 'modChunk', '3'),
(200, 1, '2019-07-30 08:06:09', 'template_update', 'modTemplate', '1'),
(201, 1, '2019-07-30 08:06:18', 'template_update', 'modTemplate', '3'),
(202, 1, '2019-07-30 08:08:13', 'snippet_create', 'modSnippet', '11'),
(203, 1, '2019-07-30 08:09:29', 'chunk_update', 'modChunk', '3'),
(204, 1, '2019-07-30 08:10:08', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(205, 1, '2019-07-30 08:14:54', 'chunk_delete', 'modChunk', '26'),
(206, 1, '2019-07-30 08:14:59', 'chunk_delete', 'modChunk', '27'),
(207, 1, '2019-07-30 08:15:02', 'chunk_delete', 'modChunk', '20'),
(208, 1, '2019-07-30 08:15:04', 'chunk_delete', 'modChunk', '24'),
(209, 1, '2019-07-30 08:15:08', 'chunk_delete', 'modChunk', '25'),
(210, 1, '2019-07-30 08:15:10', 'chunk_delete', 'modChunk', '28'),
(211, 1, '2019-07-30 08:15:13', 'chunk_delete', 'modChunk', '29'),
(212, 1, '2019-07-30 08:15:15', 'chunk_delete', 'modChunk', '23'),
(213, 1, '2019-07-30 08:15:18', 'chunk_delete', 'modChunk', '31'),
(214, 1, '2019-07-30 08:15:21', 'chunk_delete', 'modChunk', '22'),
(215, 1, '2019-07-30 08:15:24', 'chunk_delete', 'modChunk', '21'),
(216, 1, '2019-07-30 08:15:27', 'chunk_delete', 'modChunk', '30'),
(217, 1, '2019-07-30 08:15:30', 'category_delete', 'modCategory', '4'),
(218, 1, '2019-07-30 08:15:44', 'snippet_delete', 'modSnippet', '21'),
(219, 1, '2019-07-30 08:15:47', 'snippet_delete', 'modSnippet', '12'),
(220, 1, '2019-07-30 08:15:49', 'snippet_delete', 'modSnippet', '13'),
(221, 1, '2019-07-30 08:15:52', 'snippet_delete', 'modSnippet', '14'),
(222, 1, '2019-07-30 08:15:54', 'snippet_delete', 'modSnippet', '15'),
(223, 1, '2019-07-30 08:15:57', 'snippet_delete', 'modSnippet', '16'),
(224, 1, '2019-07-30 08:15:59', 'snippet_delete', 'modSnippet', '17'),
(225, 1, '2019-07-30 08:16:02', 'snippet_delete', 'modSnippet', '18'),
(226, 1, '2019-07-30 08:16:04', 'snippet_delete', 'modSnippet', '19'),
(227, 1, '2019-07-30 08:16:07', 'snippet_delete', 'modSnippet', '20'),
(228, 1, '2019-07-30 08:16:26', 'snippet_update', 'modSnippet', '11'),
(229, 1, '2019-07-30 08:16:51', 'chunk_update', 'modChunk', '3'),
(230, 1, '2019-07-30 08:16:52', 'chunk_update', 'modChunk', '3'),
(231, 1, '2019-07-30 08:21:51', 'snippet_create', 'modSnippet', '32'),
(232, 1, '2019-07-30 08:22:06', 'chunk_delete', 'modChunk', '40'),
(233, 1, '2019-07-30 08:22:09', 'chunk_delete', 'modChunk', '41'),
(234, 1, '2019-07-30 08:22:18', 'snippet_delete', 'modSnippet', '22'),
(235, 1, '2019-07-30 08:22:21', 'snippet_delete', 'modSnippet', '23'),
(236, 1, '2019-07-30 08:22:24', 'snippet_delete', 'modSnippet', '25'),
(237, 1, '2019-07-30 08:22:28', 'snippet_delete', 'modSnippet', '24'),
(238, 1, '2019-07-30 08:22:31', 'snippet_delete', 'modSnippet', '26'),
(239, 1, '2019-07-30 08:22:34', 'snippet_delete', 'modSnippet', '27'),
(240, 1, '2019-07-30 08:22:36', 'snippet_delete', 'modSnippet', '29'),
(241, 1, '2019-07-30 08:22:38', 'snippet_delete', 'modSnippet', '28'),
(242, 1, '2019-07-30 08:22:41', 'snippet_delete', 'modSnippet', '31'),
(243, 1, '2019-07-30 08:22:44', 'snippet_delete', 'modSnippet', '30'),
(244, 1, '2019-07-30 08:22:49', 'chunk_delete', 'modChunk', '38'),
(245, 1, '2019-07-30 08:22:52', 'chunk_delete', 'modChunk', '42'),
(246, 1, '2019-07-30 08:22:54', 'chunk_delete', 'modChunk', '33'),
(247, 1, '2019-07-30 08:22:56', 'chunk_delete', 'modChunk', '35'),
(248, 1, '2019-07-30 08:22:59', 'chunk_delete', 'modChunk', '43'),
(249, 1, '2019-07-30 08:23:01', 'chunk_delete', 'modChunk', '34'),
(250, 1, '2019-07-30 08:23:07', 'chunk_delete', 'modChunk', '36'),
(251, 1, '2019-07-30 08:23:10', 'chunk_delete', 'modChunk', '37'),
(252, 1, '2019-07-30 08:23:13', 'chunk_delete', 'modChunk', '39'),
(253, 1, '2019-07-30 08:23:16', 'chunk_delete', 'modChunk', '32'),
(254, 1, '2019-07-30 08:23:26', 'category_delete', 'modCategory', '5'),
(255, 1, '2019-07-30 08:23:53', 'snippet_update', 'modSnippet', '32'),
(256, 1, '2019-07-30 08:23:55', 'snippet_update', 'modSnippet', '32'),
(257, 1, '2019-07-30 08:24:39', 'resource_update', 'modResource', '1'),
(258, 1, '2019-07-30 08:24:51', 'resource_update', 'modResource', '5'),
(259, 1, '2019-07-30 08:25:05', 'template_update', 'modTemplate', '1'),
(260, 1, '2019-07-30 08:40:03', 'chunk_update', 'modChunk', '18'),
(261, 1, '2019-07-30 08:40:43', 'chunk_update', 'modChunk', '18'),
(262, 1, '2019-07-30 08:40:56', 'chunk_update', 'modChunk', '18'),
(263, 1, '2019-07-30 08:41:36', 'chunk_update', 'modChunk', '18'),
(264, 1, '2019-07-30 08:41:41', 'chunk_update', 'modChunk', '18'),
(265, 1, '2019-07-30 08:41:59', 'chunk_update', 'modChunk', '18'),
(266, 1, '2019-07-30 08:42:16', 'chunk_update', 'modChunk', '18'),
(267, 1, '2019-07-30 08:42:41', 'chunk_update', 'modChunk', '18'),
(268, 1, '2019-07-30 08:42:55', 'chunk_update', 'modChunk', '18'),
(269, 1, '2019-07-31 05:35:29', 'chunk_update', 'modChunk', '4'),
(270, 1, '2019-07-31 05:35:35', 'chunk_update', 'modChunk', '2'),
(271, 1, '2019-07-31 05:35:40', 'chunk_update', 'modChunk', '1'),
(272, 1, '2019-07-31 05:36:02', 'chunk_update', 'modChunk', '17'),
(273, 1, '2019-07-31 05:36:13', 'chunk_update', 'modChunk', '18'),
(274, 1, '2019-07-31 05:36:29', 'chunk_update', 'modChunk', '3'),
(275, 1, '2019-07-31 05:37:04', 'template_update', 'modTemplate', '1'),
(276, 1, '2019-07-31 05:37:15', 'template_update', 'modTemplate', '3'),
(277, 1, '2019-07-31 05:41:55', 'chunk_create', 'modChunk', '44'),
(278, 1, '2019-07-31 05:48:07', 'chunk_create', 'modChunk', '45'),
(279, 1, '2019-07-31 05:52:33', 'chunk_update', 'modChunk', '45'),
(280, 1, '2019-07-31 05:54:04', 'template_create', 'modTemplate', '4'),
(281, 1, '2019-07-31 05:54:41', 'resource_update', 'modResource', '5'),
(282, 1, '2019-07-31 05:55:00', 'template_update', 'modTemplate', '4'),
(283, 1, '2019-07-31 06:01:04', 'chunk_create', 'modChunk', '46'),
(284, 1, '2019-07-31 06:01:24', 'template_update', 'modTemplate', '4'),
(285, 1, '2019-07-31 06:14:00', 'chunk_create', 'modChunk', '47'),
(286, 1, '2019-07-31 06:14:22', 'template_update', 'modTemplate', '4'),
(287, 1, '2019-07-31 06:15:19', 'template_update', 'modTemplate', '4'),
(288, 1, '2019-07-31 06:16:18', 'template_update', 'modTemplate', '4'),
(289, 1, '2019-07-31 06:17:01', 'template_update', 'modTemplate', '4'),
(290, 1, '2019-07-31 06:17:57', 'chunk_update', 'modChunk', '47'),
(291, 1, '2019-07-31 06:20:02', 'template_update', 'modTemplate', '4'),
(292, 1, '2019-07-31 06:21:03', 'chunk_update', 'modChunk', '4'),
(293, 1, '2019-07-31 06:21:28', 'chunk_create', 'modChunk', '48'),
(294, 1, '2019-07-31 06:21:40', 'template_update', 'modTemplate', '4'),
(295, 1, '2019-07-31 06:23:32', 'chunk_update', 'modChunk', '46'),
(296, 1, '2019-07-31 06:25:04', 'chunk_update', 'modChunk', '46'),
(297, 1, '2019-07-31 06:25:11', 'chunk_update', 'modChunk', '46'),
(298, 1, '2019-07-31 06:25:29', 'chunk_update', 'modChunk', '46'),
(299, 1, '2019-07-31 06:26:13', 'chunk_create', 'modChunk', '49'),
(300, 1, '2019-07-31 06:26:31', 'chunk_update', 'modChunk', '49'),
(301, 1, '2019-07-31 06:26:47', 'chunk_update', 'modChunk', '49'),
(302, 1, '2019-07-31 06:27:02', 'chunk_update', 'modChunk', '49'),
(303, 1, '2019-07-31 06:27:13', 'chunk_update', 'modChunk', '49'),
(304, 1, '2019-07-31 06:27:43', 'chunk_update', 'modChunk', '49'),
(305, 1, '2019-07-31 06:28:39', 'chunk_update', 'modChunk', '49'),
(306, 1, '2019-07-31 06:29:22', 'chunk_update', 'modChunk', '46');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1),
(4, 'Users', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0),
(8, 4, 2, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', '\nMODx.msg.confirm({\n    title: _(\'remove_locks\')\n    ,text: _(\'confirm_remove_locks\')\n    ,url: MODx.config.connectors_url\n    ,params: {\n        action: \'system/remove_locks\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() {\n            var tree = Ext.getCmp(\"modx-resource-tree\");\n            if (tree && tree.rendered) {\n                tree.refresh();\n            }\n         },scope:this}\n    }\n});', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', '', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_contexts', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('login', '{core_path}components/login/', '{assets_path}components/login/');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2019-07-29 10:22:11', NULL, NULL),
(2, 2, '/resourcereload/', '2019-07-29 10:47:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('1a41ea91b6f35495fc507cdf2178f5d1', 1564628596, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:7:{s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"view\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"copy\";b:1;s:16:\"view_unpublished\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}'),
('b6ba4baa0625465dfedfcc2a34290a2a', 1565165733, 'modx.user.contextTokens|a:2:{s:3:\"mgr\";i:1;s:3:\"web\";i:1;}modx.mgr.user.token|s:52:\"modx5d3eabe11e07d8.56218495_15d4a87bc85f124.18527392\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.web.user.token|s:52:\"modx5d3eabe11e07d8.56218495_15d4a87c976a777.97118253\";modx.web.session.cookie.lifetime|i:0;modx.web.user.config|a:0:{}newResourceTokens|a:5:{i:0;s:23:\"5d4a87d5ca5100.27097046\";i:1;s:23:\"5d4a87e238d014.34033583\";i:2;s:23:\"5d4a87e5acba88.29974546\";i:3;s:23:\"5d4a88a0545556.16350078\";i:4;s:23:\"5d4a88a5720418.75740922\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', '', 'Главная страница сайта', 'index', '', 1, 0, 0, 0, 0, '', '', 1, 1, 0, 1, 1, 1, 1564388325, 1, 1564467879, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Пользователи', '', '', 'user', '', 1, 0, 0, 0, 1, '', '', 0, 3, 1, 1, 1, 1, 1564454946, 1, 1564465951, 0, 0, 0, 1564455000, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'user/', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Страница пользователя', '', 'Личный кабинет пользователя', 'lk', '', 1, 0, 0, 2, 0, '', '[[!Profile]]\r\n<div class=\"jumbotron\">\r\n  <div class=\"container\">\r\n    <p>Логин: [[+username]]</p>\r\n    <p>Полное имя: [[+fullname]]</p>\r\n    <p>Email: [[+email]]</p>\r\n  </div>\r\n</div>', 0, 4, 2, 1, 1, 1, 1564455126, 1, 1564545281, 0, 0, 0, 1564455120, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'user/lk.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'headFront', 'Головная часть страницы заключается в теги <head></head>', 0, 1, 0, '<meta charset=\"utf-8\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<meta name=\"description\" content=\"\">\n<meta name=\"author\" content=\"\">\n<link href=\"../../assets/templates/jumbotron-bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/jumbotron-bootstrap/css/ie10-viewport-bug-workaround.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/jumbotron-bootstrap/css/jumbotron.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/jumbotron-bootstrap/css/style.css\" rel=\"stylesheet\">\n<script src=\"../../assets/templates/jumbotron-bootstrap/js/ie-emulation-modes-warning.js\"></script>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'footerScriptFront', 'JS-скрипты, подключаемые после <footer></footer>', 0, 1, 0, '<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n<script>window.jQuery || document.write(\'<script src=\"../../assets/templates/jumbotron-bootstrap/js/vendor/jquery.min.js\"><\\/script>\')</script>\n<script src=\"../../assets/templates/jumbotron-bootstrap/js/bootstrap.min.js\"></script>\n<script src=\"../../assets/templates/jumbotron-bootstrap/js/ie10-viewport-bug-workaround.js\"></script>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'navFront', 'Шапка сайта (Navbar)', 0, 1, 0, '<nav class=\"navbar navbar-inverse navbar-fixed-top\">\n      <div class=\"container\">\n        <div class=\"navbar-header\">\n          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n            <span class=\"sr-only\">Toggle navigation</span>\n            <span class=\"icon-bar\"></span>\n            <span class=\"icon-bar\"></span>\n            <span class=\"icon-bar\"></span>\n          </button>\n          <a class=\"navbar-brand\" href=\"/\">Hello, World!</a>\n        </div>\n        <div id=\"navbar\" class=\"navbar-collapse collapse\">\n          [[!Auth? &loginTpl=`loginFront` &logoutTpl=`logoutFront` &errTpl=`errorMsg` &loginResourceId=`5` &logoutResourceId=`1`]]\n        </div>\n      </div>\n    </nav>\n    <div class=\"container\">\n      <div class=\"loginMessage\">[[+errors]]</div>\n    </div>\n', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'footerFront', 'Подвал сайта (footer)', 0, 1, 0, '<footer class=\"footer\">\n    <div class=\"container\">\n        <p>&copy; 2019 Hello World, Inc.</p>\n    </div>\n</footer>', 0, 'a:0:{}', 0, ''),
(44, 1, 0, 'headBack', 'Головная часть страницы заключается в теги <head></head>', 0, 2, 0, '<meta charset=\"utf-8\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n<link href=\"../../assets/templates/adminLTE/css/bootstrap.min.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/adminLTE/css/font-awesome.min.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/adminLTE/css/ionicons.min.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/adminLTE/css/jquery-jvectormap.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/adminLTE/css/AdminLTE.min.css\" rel=\"stylesheet\">\n<link href=\"../../assets/templates/adminLTE/css/_all-skins.min.css\" rel=\"stylesheet\">\n<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic\">\n', 0, 'a:0:{}', 0, ''),
(45, 1, 0, 'footerScriptBack', 'JS-скрипты, подключаемые после <footer></footer>', 0, 2, 0, '<script src=\"../../assets/templates/adminLTE/js/jquery.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/bootstrap.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/fastclick.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/adminlte.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/jquery.sparkline.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/jquery-jvectormap-1.2.2.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/jquery-jvectormap-world-mill-en.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/jquery.slimscroll.min.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/Chart.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/pages/dashboard2.js\"></script>\n<script src=\"../../assets/templates/adminLTE/js/demo.js\"></script>', 0, 'a:0:{}', 0, ''),
(46, 0, 0, 'navBack', 'Шапка кабинета пользователя (header)', 0, 2, 0, '<header class=\"main-header\">\n    <a href=\"/\" class=\"logo\">\n      <span class=\"logo-mini\"><b>H</b>W</span>\n      <span class=\"logo-lg\"><b>Hello, </b>World!</span>\n    </a>\n    <nav class=\"navbar navbar-static-top\">\n      <div id=\"navbar\" class=\"navbar-collapse collapse\">\n        [[!Auth? &logoutTpl=`logoutBack` &errTpl=`errorMsg` &logoutResourceId=`1`]]\n      </div>\n    </nav>\n  </header>', 0, 'a:0:{}', 0, ''),
(47, 1, 0, 'asideBack', 'Боковое меню кабинета пользователя', 0, 2, 0, '<aside class=\"main-sidebar\">\n    <section class=\"sidebar\">\n      <div class=\"user-panel\">\n        <div class=\"pull-left image\">\n          <img src=\"../../assets/templates/adminLTE/img/avatar.png\" class=\"img-circle\" alt=\"User Image\">\n        </div>\n        <div class=\"pull-left info\">\n          <p>[[+username]]</p>\n        </div>\n      </div>\n      <ul class=\"sidebar-menu\" data-widget=\"tree\">\n        <li class=\"treeview\">\n          <a href=\"#\">\n            <span>Выпадающий список</span>\n          </a>\n          <ul class=\"treeview-menu\">\n            <li><a href=\"#\"></i> Кнопка 1</a></li>\n            <li><a href=\"#\"></i> Кнопка 2</a></li>\n            <li><a href=\"#\"></i> Кнопка 3</a></li>\n            <li><a href=\"#\"></i> Кнопка 4</a></li>\n          </ul>\n        </li>\n      </ul>\n    </section>\n  </aside>', 0, 'a:0:{}', 0, ''),
(48, 1, 0, 'footerBack', 'Подвал сайта (footer)', 0, 2, 0, '<footer class=\"main-footer\">\n    <div class=\"pull-right hidden-xs\">\n      <b>Version</b> 2.4.13\n    </div>\n    <strong>Copyright &copy; 2014-2019 <a href=\"https://adminlte.io\">AdminLTE</a>.</strong> All rights\n    reserved.\n</footer>', 0, 'a:0:{}', 0, ''),
(49, 0, 0, 'logoutBack', 'Кнопка выхода', 0, 2, 0, '<div class=\"container\">\n  <div class=\"navbar-form navbar-right\">\n    <div class=\"loginRegister\">\n        <a class=\"btn btn-danger\" href=\"[[+logoutUrl]]\" title=\"Выход\">[[+actionMsg]]</a>\n    </div>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(17, 1, 0, 'loginFront', 'Форма авторизации', 0, 1, 0, '          <form class=\"navbar-form navbar-right\" action=\"[[~[[*id]]]]\" method=\"post\">\n            <div class=\"form-group\">\n              <input type=\"text\" placeholder=\"Логин\" class=\"form-control\" name=\"username\">\n            </div>\n            <div class=\"form-group\">\n              <input type=\"password\" placeholder=\"Пароль\" class=\"form-control\" name=\"password\">\n            </div>\n            <input class=\"returnUrl\" type=\"hidden\" name=\"returnUrl\" value=\"[[+request_uri]]\" />\n            <input class=\"loginLoginValue\" type=\"hidden\" name=\"service\" value=\"login\" />\n            <input type=\"submit\" class=\"btn btn-success\" name=\"Login\" value=\"Войти\" />\n          </form>', 0, 'a:0:{}', 0, ''),
(18, 1, 0, 'logoutFront', 'Кнопка выхода', 0, 1, 0, '<div class=\"navbar-form navbar-right\">\n    <div class=\"loginRegister\">\n        <a class=\"btn btn-info\" href=\"[[~5]]\" title=\"Личный кабинет\">Личный кабинет</a>\n        <a class=\"btn btn-danger\" href=\"[[+logoutUrl]]\" title=\"Выход\">[[+actionMsg]]</a>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(19, 1, 0, 'errorMsg', 'Вывод ошибки авторизации', 0, 1, 0, '<p class=\"error\">[[+msg]]</p>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(32, 1, 0, 'Profile', '', 0, 2, 0, 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'Profile\');\nreturn $controller->run($scriptProperties);', 0, 'a:0:{}', '', 0, ''),
(11, 1, 0, 'Auth', '', 0, 2, 0, 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\nif (!is_object($login) || !($login instanceof Login)) return \'\';\n\n$controller = $login->loadController(\'Login\');\n$output = $controller->run($scriptProperties);\nreturn $output;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Начальный шаблон', 'Шаблон главной страницы', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    [[$headFront]]\n    <title>[[++site_name]] - [[*pagetitle]]</title>\n  </head>\n\n  <body>\n\n    [[$navFront]]\n\n    <div class=\"jumbotron\">\n      <div class=\"container\">\n        <h1>Hello, world!</h1>\n        <p>Тестовый сайт на MODX Revolution</p>\n        <p><a class=\"btn btn-primary btn-lg\" href=\"#\" role=\"button\">Бесполезная кнопка</a></p>\n      </div>\n    </div>\n\n    <div class=\"container\">\n      <div class=\"row\">\n        <div class=\"col-md-4\">\n          <h2>Заголовок-1</h2>\n          <p>Рандомный текст-1</p>\n          <p><a class=\"btn btn-default\" href=\"#\" role=\"button\">Кнопка</a></p>\n        </div>\n        <div class=\"col-md-4\">\n          <h2>Заголовок-2</h2>\n          <p>Рандомный текст-2</p>\n          <p><a class=\"btn btn-default\" href=\"#\" role=\"button\">Кнопка</a></p>\n       </div>\n        <div class=\"col-md-4\">\n          <h2>Заголовок-3</h2>\n          <p>Рандомный текст-3</p>\n          <p><a class=\"btn btn-default\" href=\"#\" role=\"button\">Кнопка</a></p>\n        </div>\n      </div>\n\n      <hr>\n\n    </div>\n\n    [[$footerFront]]\n    \n    [[$footerScriptFront]]\n  </body>\n</html>\n', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'Шаблон страницы', 'Базовый шаблон для страниц сайта', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    [[$headFront]]\n    <title>[[++site_name]] - [[*pagetitle]]</title>\n  </head>\n\n  <body>\n\n    [[$navFront]]\n\n    [[*content]]\n\n    [[$footerFront]]\n    \n    [[$footerScriptFront]]\n  </body>\n</html>\n', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'Шаблон кабинета пользователя', 'Базовый шаблон страницы админки', 0, 2, '', 0, '<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    [[$headBack]]\n    <title>[[++site_name]] - [[*pagetitle]]</title>\n  </head>\n\n  <body class=\"hold-transition skin-blue sidebar-mini\">\n    <div class=\"wrapper\">\n      \n      [[$navBack]]\n\n      [[$asideBack]]\n\n      <div class=\"content-wrapper\">\n        [[*content]]\n      </div>\n\n    </div>\n    \n    [[$footerBack]]\n\n    [[$footerScriptBack]]\n  \n  </body>\n</html>\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 1, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('base_help_url', '//rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('compress_css', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2019-07-29 08:18:45'),
('date_timezone', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('debug', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', '0000-00-00 00:00:00'),
('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_context', 'web', 'modx-combo-context', 'core', 'site', '0000-00-00 00:00:00'),
('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00'),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', '0000-00-00 00:00:00'),
('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('emailsender', 'pavel@biletavto.ru', 'textfield', 'core', 'authentication', '2019-07-29 08:18:45'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_max_length', '70', 'textfield', 'core', 'furls', '2019-07-30 04:33:24'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', '2019-07-30 04:51:21'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', '2019-07-30 04:51:23'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('inline_help', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('locale', '', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('log_level', '1', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('log_target', 'FILE', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('lock_ttl', '360', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_html5_cache', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_document_root', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2019-07-29 08:18:45'),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2019-07-29 08:18:45'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_week_start', '0', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00'),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_path', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_name', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_maxsize', '134217728', 'textfield', 'core', 'file', '2019-07-29 08:18:45'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2019-07-30 04:34:45'),
('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2019-07-29 08:18:45'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2019-07-29 08:21:34'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.23.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00'),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('settings_version', '2.3.3-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('recaptcha.private_key', '', 'textfield', 'login', 'reCaptcha', '0000-00-00 00:00:00'),
('recaptcha.public_key', '', 'textfield', 'login', 'reCaptcha', '0000-00-00 00:00:00'),
('login.forgot_password_email_subject', 'Password Retrieval Email', 'textfield', 'login', 'security', '0000-00-00 00:00:00'),
('recaptcha.use_ssl', 'false', 'combo-boolean', 'login', 'reCaptcha', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('login-1.9.7-pl', '2019-07-30 08:13:32', '2019-07-30 06:20:36', '2019-07-30 08:20:36', 0, 1, 1, 0, 'login-1.9.7-pl.transport.zip', NULL, 'a:33:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:2998:\"--------------------\nSnippet: Login\n--------------------\n- Version: 1.9.6\n- Since: June 21, 2010\n- Author: Jason Coward <jason@modx.com>,\n        Shaun McCormick <shaun+login@modx.com>\n\nThis component loads a simple login and logout form. It also comes packaged\nwith ForgotPassword and ResetPassword snippets, which allow the user to put\nin their username or email to receive a confirmation email which will reset\ntheir password.\n\nExample for Login:\n```\n[[!Login]]\n```\n\nYou can also specify the template:\n\n```\n[[!Login? &tpl=`myLoginChunk`]]\n```\n\nSee the snippet properties for more options.\n\n--------------\nForgotPassword\n--------------\n\nTo use the password retrieval functionality, first create the Resource the\nuser will log in to should they click on the confirmation email, and put\nthe Reset Password snippet in. Tell it what Resource the Login snippet is\nin - or where you\'d like it to provide a link back to:\n\n```\n[[ResetPassword? &loginResourceId=`72`]]\n```\n\nThen create another resource with the Forgot Password snippet, and tell it\nwhat Resource the Reset snippet is in:\n\n```\n[[!ForgotPassword? &resetResourceId=`123`]]\n```\n\n--------\nRegister\n--------\n\nTo use the Register snippet, simply place the Snippet in the Resource where\nyour HTML register form is. (A default one called lgnRegisterFormTpl has\nbeen provided.). This snippet also requires Activation by the User, so they\nwill get an email in their inbox regarding their signup.\n\nIn your form field names, you can use validation filters to validate your\nfields. They are separated with the colon : symbol. Example:\n\n```\n<input type=\"password\" name=\"password:required:minLength=6\" id=\"password\" value=\"[[+password]]\" />\n```\n\nwill require that the password field not be empty, and have a minimum\nlength of 6 chars. You can encapsulate validator params (6 here) with ` if\nthe param has spaces in the name. The default validators provided are:\n\n```\nrequired\nblank\nemail\npassword_confirm=`nameOfPasswordField`\nminLength=`123`\nmaxLength=`123`\nminValue=`123`\nmaxValue=`123`\n```\n\nYou can also do custom validators by creating a Snippet and using that as\nthe validator name. Example: We create a Snippet called \'equalTo\' and\non our field, we set:\n\n```\n<input type=\"text\" name=\"field:equalTo=`123`\" id=\"field\" />\n```\n\nNow, in our snippet, our code would look like so:\n\n```\n<?php\nif ($scriptProperties[\'value\'] !== $scriptProperties[\'param\']) {\n    return \'Value not equal to: \'.$scriptProperties[\'param\'];\n}\nreturn true;\n?>\n```\n\nReturning true will make the field valid. Any other return value will\nbe the error message. Snippets get passed the following parameters:\n\n- key: The name of the field.\n- value: The value of the field.\n- param: The parameter, if applicable, passed to the validator.\n- type: The name of the validator.\n- validator: A reference to the lgnValidator instance.\n\nSee the Snippet Properties and the [MODX Docs](https://docs.modx.com/extras/revo/login) for more options.\n\nThanks,\nJason Coward & Shaun McCormick\nMODX, LLC\n\";s:9:\"changelog\";s:12664:\"Changelog for Login\n===================\n\nLogin 1.9.7\n------------------------------------\n- Generate the password directly with modx->user->generatePassword()\n- Make it possible to set the usergroup rank when register a new user [#135]\n- Set an action in the default password reset form [#134]\n- Update Translations\n\nLogin 1.9.6\n------------------------------------\n- Register snippet PII improvements [#130]\n- JSON responses for the Login controller/snippet [#121]\n- Use Crowdin for translations: https://crowdin.com/project/modx-login\n- Update Translations [#132]\n- Use $modx->user->generatePassword for generating passwords [#131]\n- Escape MODX tags after htmlspecialchars because of the ampersand sign\n\nLogin 1.9.5\n------------------------------------\n- Fix ResetPassword passing null instead of an array to getChunk\n- Remove hash_class, salt and sessionid from placeholders\n- Prevent potential XSS in placeholders\n- Added two missing default template chunks\n- Fixing a charset issue in some language files\n- Fixing email validation [#110]\n- Disable User/E-mail Enumeration in ForgotPassword snippet by an empty sentTpl property (default)\n- New jsonResponse property for returning a JSON by the Register snippet (for an AJAX call response)\n- Possibility to reset the registration fields after successful registration\n\nLogin 1.9.4\n------------------------------------\n- Disable User/E-mail Enumeration\n- Enable login via email\n- Convert deprecated ereg functions to preg_* [#86]\n- Fixing error placeholders with empty placeholderPrefix\n- Fixing recoverable error, Argument 2 to getChunk() must be of the type array, null given [#87]\n\nLogin 1.9.3\n------------------------------------\n- Added activePage property to ConfirmRegister controller\n- Added danish language files\n- Normalize placeholder prefix usage\n- Improved PHP7 compatibility\n- Added loggedinResourceId and loggedoutResourceId to the Login controller\n- Fix errors with square brackets in changed password\n- Add confirm password and password length validation messages to the field error placeholders too\n- Fill lu/lp placeholders in the change password form\n- Added hidden lu/lp fields to the lgnResetPassChangePassTpl chunk\n- Fix for array fields in Register/Profile/UpdateProfile snippet\n\nLogin 1.9.2\n------------------------------------\n- Fix sending register activation email\n- Fix ConfirmRegister processor\n\nLogin 1.9.1\n------------------------------------\n- [[!+error.message]] returns detailed error\n- [#42] Fixed URL encoding/decoding\n- Sanitise Login placeholders\n- Fixed namespace paths\n\nLogin 1.9.0\n------------------------------------\n- Expired/used password reset link notification\n- Added autoLogin and forceChangePassword to ResetPassword snippet\n- Added autoLogin param to Register snippet\n- Improved password reset functionality\n- Update form fields with new values when reloadOnSuccess=0\n- Replace parseChunk with getChunk\n- Added Arabic lexicons\n- Fixed invalid properties in logindictionary and updateprofile\n- Added czech lexicons\n\nLogin 1.8.1\n------------------------------------\n- Add password strength algorithm and checking properties to Register, via &ensurePasswordStrength property\n\nLogin 1.8.0\n------------------------------------\n- [#5946] Add ability to set User Group for a new user via the &usergroupsField property\n- [#7520] Fix bug with ConfirmRegister logging the user in as anonymous\n\nLogin 1.7.3\n------------------------------------\n- [#7035] Fix regression error with email field in Register snippet\n\nLogin 1.7.2\n------------------------------------\n- [#6194] Fix issue with UpdateProfile when specifying the non-active user to update\n- [#6538] Add removeExpiredRegistrations property to Register snippet for handling expired, unactivated registrations\n- [#6256] Ensure Register respects passwordField and emailField properties\n- [#6288] Fix error message display in ChangePassword\n\nLogin 1.7.1\n------------------------------------\n- [#5947] Fix issue with Profile with unauthenticated users\n- [#5979] Fix issue with ConfirmRegister and non-FURL sites\n- [#5734] Add &allowedFields to Register to allow restricting of submitted fields to a specific set\n- [#6010] Fix typo in UpdateProfile mismatching ID of profile to internalKey\n- [#5961] Add &trimPassword to automatically trim whitespace from submitted passwords\n- Add &generatePassword to automatically generate a password instead of having to provide one manually\n- [#6146] Add &validatePassword to Register to allow for manual password generation\n- [#5969] Add &user property to UpdateProfile to allow specifying user to update\n\nLogin 1.7.0\n------------------------------------\n- [#49] Update reCaptcha URLs\n- [#5793] Add errTpl and errTplType properties to ForgotPassword\n- [#5823] Fix issue where postHooks did not have fields available\n- [#5797] Fix issue where &authenticate was not respected in ConfirmRegister snippet\n- [#5796] Fix issue where errors could appear twice if user used validators on username/email/password fields\n- Add ActiveUsers snippet that shows a list of active, logged-in users\n- Add file-based hooks to Login hook calls\n- Complete OOP refactoring to provide more stable development and better code isolation\n- Add unit test framework and over 30 tests\n- Add alternative plaintext email option for ability to send both html and plaintext in emails\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.5\n------------------------------------\n- [#5176] Fix issue with Registration in Revo 2.0 installations\n- Fix issue with some error messages not being wrapped with errTpl\n- Email validator now only checks for email validation, not required status\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.4\n------------------------------------\n- [#3588] Add &allowedFields and &allowedExtendedFields to UpdateProfile to restrict fields that are updated\n- [#4744] Add &redirectToOnFailedAuth parameter for redirecting to a separate page on failed logins\n- [#3263] Remove duplicate error spans in validator output\n\nLogin 1.6.3\n------------------------------------\n- Better support for checkboxes/radios/bracketed fields in login validator\n- [#5088] Fix issue with ChangePassword &validateOldPassword and Revo 2.1.1\n\nLogin 1.6.2\n------------------------------------\n- [#4844] Automatically trim trailing whitespace/newlines in validator calls\n- [#4843] Fix issue with sentTplType not being respected in ForgotPassword\n- [#4936] Fix issue in ForgotPassword that occurred if no user was found with that username\n- [#5019] Add backwards compatibility for Revo 2.0.x users in ResetPassword\n- Fix reference to $this->modx->lexicon in Login Snippet\n\nLogin 1.6.0/1\n------------------------------------\n- [#4886] Fix issue with variable variable in main login class when loading hooks\n- [#4487] Prevent usage of mb_ereg if not installed\n- [#3500] Fix issues with inline tplType params in Login snippets\n- [#4545] Fix issue with OnBeforeUserActivate event\n- Revolution 2.1 support, specifically with the password changes\n\nLogin 1.5.3\n------------------------------------\n- Add preHooks to ForgotPassword snippet\n- Fix issue that occurs when Login and Register forms are on same page with math register hook\n\nLogin 1.5.2\n------------------------------------\n- [#3330] Add sanity checks to prevent possible submitVar data adding in UpdateProfile\n- Add support for moderation of users when done in a prehook\n- Add support for redirectBackParams that can send encoded data through a login/registration process\n- Add a generic validation error in Register to allow for general messages\n- Ensure preHooks run before password validation in ChangePassword snippet\n- Fix issue with placeholderPrefix in UpdateProfile snippet\n\nLogin 1.5.1\n------------------------------------\n- [#44] Fix bug with login validator, &validate parameter\n- [#40] Fix issue with syncUsername in UpdateProfile\n- [#42] Respect allow_multiple_emails setting that prevents users with same email addresses\n- [#43] Add workaround for xPDO bug with NULL fields in modUserProfile\n- Trim each hook specification in hooks calls\n- [#28] Fixed validator issue in UpdateProfile\n- Added redirectTo and redirectParams on ForgotPassword snippet\n- Updated events in ResetPassword snippet to pass user object\n- Fixed UpdateProfile to properly update user obj so derivative User classes can manage profile updates\n\nLogin 1.5.0\n------------------------------------\n- Fixed security vulnerability\n- Added authenticate and authenticateContexts to ConfirmRegister to allow for authentication after confirming registration\n- Fixed persisting request alias params issue in ConfirmRegister\n- [#15] Added ability to assign roles when using &usergroups in Register, ie: &usergroups=`my-group-name:Member`\n- Added math hook to Register, allowing anti-spam math field measure\n- Added fix to allow overriding of class_key for new users in Register\n\nLogin 1.4.0\n------------------------------------\n- Added redirectBack to Register, Login and ConfirmRegister that allows dynamic redirection handling for other forms needing login/registration\n- Added redirectTo, redirectParams to ConfirmRegister that will redirect after successful confirmation\n- Added persistParams to Register snippet, useful for shopping cart implementations to persist parameters across the registration process\n- [#27] Fixed issue with activationEmail always overriding normal email\n- [#29] Added loginResourceParams, logoutResourceParams, which allows attaching REQUEST parameters to login/logout redirection URLs\n- Added changelog to build\n- [#26],[#14] Added activationEmail property for better handling of middle men in activation steps\n\nLogin 1.3.2-pl\n------------------------------------\n- [#25] Added isLoggedIn snippet for checking auth status\n- [#24] Fixed issue where inactive user could re-register\n- Fixed issue with embedded chunk type display\n- Fixed issue with redirects and non-FURLs on Register snippet\n\nLogin 1.3.1-pl (October 15, 2010)\n------------------------------------\n- Fixed issue with Login snippet on invalid logins\n\nLogin 1.3.0-pl (October 14, 2010)\n------------------------------------\n- Modified experimental multi-context support to use new login processor add_contexts parameter\n- Added ChangePassword snippet for changing passwords in the front-end\n- Fixed bugs with usernameField property, now works as expected\n- Added Dutch translation\n\nLogin 1.2.0\n------------------------------------\n- Fixed issues with placement of prehooks and such\n- Added excludeExtended property to Register, UpdateProfile snippets to allow for excluding fields from extended fields\n- Added new hook API methods for easier setting/retrieving of fields\n- Added experimental multiple-context login support\n- Fixed bug in login snippet with hard-coded action keys\n- Added support to set subject in ForgotPassword email\n- Added reCaptcha support to login form via a preHook\n- Added preHooks and postHooks ability to Login snippet\n- i18n of snippet properties\n\nLogin 1.1.0\n------------------------------------\n- Added Profile snippet, which outputs Profile data of a User in placeholders\n- Added &useExtended to UpdateProfile/Register, which allows users to set additional fields passed to be set in extended column\n- Fixed bug in UpdateProfile where validators were broken\n\nLogin 1.0.3\n------------------------------------\n- Fixed bug where logout link generation was ignorant of xhtml_urls setting\n- Fixed bug where ForgotPassword was sending invalid confirmUrl\n- Added preHooks and postHooks properties for doing pre and post register scripting to UpdateProfile snippet\n- Added preHooks and postHooks properties for doing pre and post register scripting to Register snippet\n- Added syncUsername property to UpdateProfile snippet\n- Fixed bug with embedded output in Login snippet\n- Added Russian translation\n\nLogin 1.0.2\n------------------------------------\n- Updated copyright information\n- Ensure username,password and email are always passed to register snippet to prevent blank logins\n\nLogin 1.0.1\n------------------------------------\n- Consolidated elements into own dir\n- Added extra checks and fixes to lgnValidator class\n- Added UpdateProfile snippet to enable updating of profile from front-end\n\nLogin 1.0.0\n------------------------------------\n- [#ADDON-129] Added name to default Register form\n- [#ADDON-106] Fixed incorrect plugin event invoking\n- [#ADDON-107] Added missing lexicon entry register.password_confirm\n- [#ADDON-103] Fixed context-specific issue with register email\n- [#ADDON-118] Force lexicon topic to load on lgnRegisterForm\n- Fixed alias issue in ForgotPassword snippet\n- Added changelog.txt\n\";s:9:\"signature\";s:14:\"login-1.9.7-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:556:\"function(va){var g=Ext.getCmp(\'modx-package-grid\');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=\'/workspace/package/install/\'+r.signature+\'/\';g.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:\'workspace/packages/install\',signature:r.signature,register:\'mgr\',topic:topic});MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{\'success\':{fn:function(){this.activate();Ext.getCmp(\'modx-package-grid\').refresh();},scope:this},\'failure\':{fn:function(){this.activate();},scope:this}}});}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:42:\"/workspace/package/install/login-1.9.7-pl/\";s:14:\"package_action\";i:0;}', 'Login', 'a:38:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"5ba3f620bc8dd3277b8b4567\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c31b2b083396d000a75\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"login-1.9.7-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"Login\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.9.7\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"9\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"7\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:3:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"jako\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:501:\"<p>Loads a simple login/logout form, with password retrieval functionality and a register form snippet.</p><p>See the Official Documentation here:&nbsp;<a href=\"http://rtfm.modx.com/extras/revo/login\">http://rtfm.modx.com/extras/revo/login</a></p><p>See bugs here:&nbsp;<a href=\"https://github.com/modxcms/Login/issues\">https://github.com/modxcms/Login/issues</a></p><p>Translate it on: <a href=\"https://crowdin.com/project/modx-login\" title=\"\" target=\"\">https://crowdin.com/project/modx-login</a></p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:10206:\"<p></p><p><b>New in 1.9.7</b></p><p><ul><li>Generate the password directly with modx-&gt;user-&gt;generatePassword()</li><li>Make it possible to set the usergroup rank when register a new user</li><li>Set an action in the default password reset form</li><li>Update Translations</li></ul></p><p><b>New in 1.9.6</b></p><p><ul><li>Register snippet PII improvements</li><li>JSON responses for the Login controller/snippet</li><li>Use Crowdin for translations: https://crowdin.com/project/modx-login</li><li>Update Translations</li><li>Use $modx-&gt;user-&gt;generatePassword for generating passwords</li><li>Escape MODX tags after htmlspecialchars because of the ampersand sign</li></ul></p><p><b>New in 1.9.5</b></p><ul><li>Fix ResetPassword passing null instead of an array to getChunk</li><li>Remove hash_class, salt and sessionid from placeholders</li><li>Prevent potential XSS in placeholders</li><li>Added two missing default template chunks</li><li>Fixing a charset issue in some language files</li><li>Fixing email validation &#91;#110&#93;</li><li>Disable User/E-mail Enumeration in ForgotPassword snippet by an empty sentTpl property (default)</li><li>New jsonResponse property for returning a JSON by the Register snippet (for an AJAX call response)</li><li>Possibility to reset the registration fields after successful registration</li></ul><p><b>New in 1.9.4</b></p><ul><li>Disable User/E-mail Enumeration</li><li>Enable login via email</li><li>Convert deprecated ereg functions to preg_*</li><li>Fixing error placeholders with empty placeholderPrefix</li><li>Fixing recoverable error, Argument 2 to getChunk() must be of the type array, null given</li></ul><p><b>New in 1.9.3</b></p><p></p><ul><li>Added activePage property to ConfirmRegister controller</li><li>Added danish language files</li><li>Normalize placeholder prefix usage</li><li>Improved PHP7 compatibility</li><li>Added loggedinResourceId and loggedoutResourceId to the Login controller</li><li>Fix errors with square brackets in changed password</li><li>Add confirm password and password length validation messages to the field error placeholders too</li><li>Fill lu/lp placeholders in the change password form</li><li>Added hidden lu/lp fields to the lgnResetPassChangePassTpl chunk</li><li>Fix for array fields in Register/Profile/UpdateProfile snippet</li></ul><p><b>New in 1.9.2</b></p><p></p><ul><li>Fix sending register activation email</li><li>Fix ConfirmRegister processor</li></ul><p><b>New in 1.9.1</b></p><p></p><ul><li>&#91;&#91;!+error.message&#93;&#93; returns detailed error</li><li>&#91;#42&#93; Fixed URL encoding/decoding</li><li>Sanitise Login placeholders</li><li>Fixed namespace paths</li></ul><p></p><p></p><p><b>New in 1.9.0</b></p><p></p><ul><li>Expired/used password reset link notification</li><li>Added autoLogin and forceChangePassword to ResetPassword snippet</li><li>Added autoLogin param to Register snippet</li><li>Improved password reset functionality</li><li>Update form fields with new values when reloadOnSuccess=0</li><li>Replace parseChunk with getChunk</li><li>Added Arabic lexicons</li><li>Fixed invalid properties in logindictionary and updateprofile</li><li>Added czech lexicons</li></ul><p style=\"margin-bottom: 15px; \"><b>New in 1.8.1</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>Add password strength algorithm and checking properties to Register, via &amp;ensurePasswordStrength property</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>New in 1.8.0</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#5946&#93; Add ability to set User Group for a new user via the &amp;usergroupsField property</li><li>&#91;#7520&#93; Fix bug with ConfirmRegister logging the user in as anonymous</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>New in 1.7.3</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#7035&#93; Fix regression error with email field in Register snippet</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b><b><b>New in 1.7.2</b></b></b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#6194&#93; Fix issue with UpdateProfile when specifying the non-active user to update</li><li>&#91;#6538&#93; Add removeExpiredRegistrations property to Register snippet for handling expired, unactivated registrations</li><li>&#91;#6256&#93; Ensure Register respects passwordField and emailField properties</li><li>&#91;#6288&#93; Fix error message display in ChangePassword</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b><b><b>New in 1.7.1</b></b></b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#5947&#93; Fix issue with Profile with unauthenticated users</li><li>&#91;#5979&#93; Fix issue with ConfirmRegister and non-FURL sites</li><li>&#91;#5734&#93; Add &amp;allowedFields to Register to allow restricting of submitted fields to a specific set</li><li>&#91;#6010&#93; Fix typo in UpdateProfile mismatching ID of profile to internalKey</li><li>&#91;#5961&#93; Add &amp;trimPassword to automatically trim whitespace from submitted passwords</li><li>Add &amp;generatePassword to automatically generate a password instead of having to provide one manually</li><li>&#91;#6146&#93; Add &amp;validatePassword to Register to allow for manual password generation</li><li>&#91;#5969&#93; Add &amp;user property to UpdateProfile to allow specifying user to update</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b><b><b>New in 1.7.0</b></b></b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#49&#93; Update reCaptcha URLs</li><li>&#91;#5793&#93; Add errTpl and errTplType properties to ForgotPassword</li><li>&#91;#5823&#93; Fix issue where postHooks did not have fields available</li><li>&#91;#5797&#93; Fix issue where &amp;authenticate was not respected in ConfirmRegister snippet</li><li>&#91;#5796&#93; Fix issue where errors could appear twice if user used validators on username/email/password fields</li><li>Add ActiveUsers snippet that shows a list of active, logged-in users</li><li>Fix errors with Register snippet in 1.7.0-rc1</li><li>Add file-based hooks to Login hook calls</li><li>Complete OOP refactoring to provide more stable development and better code isolation</li><li>Add unit test framework and over 30 tests</li><li>Add alternative plaintext email option for ability to send both html and plaintext in emails</li><li>&#91;#5166&#93; Add additional sanity decoding to ConfirmRegister processing</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b><b><b>New in 1.6.5</b></b></b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#5176&#93; Fix issue with Registration in Revo 2.0 installations</li><li>Fix issue with some error messages not being wrapped with errTpl</li><li>Email validator now only checks for email validation, not required status</li><li>&#91;#5166&#93; Add additional sanity decoding to ConfirmRegister processing</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b>New in 1.6.4</b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#3588&#93; Add &amp;allowedFields and &amp;allowedExtendedFields to UpdateProfile to restrict fields that are updated</li><li>&#91;#4744&#93; Add &amp;redirectToOnFailedAuth parameter for redirecting to a separate page on failed logins</li><li>&#91;#3263&#93; Remove duplicate error spans in validator output</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b><b>New in 1.6.3</b></b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#5088&#93; Fix issue with ChangePassword &amp;validateOldPassword and Revo 2.1.1</li><li>Better support for checkboxes/radios/bracketed fields in login validator</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>New in 1.6.2</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#4844&#93; Automatically trim trailing whitespace/newlines in validator calls</li><li>&#91;#4843&#93; Fix issue with sentTplType not being respected in ForgotPassword</li><li>&#91;#4936&#93; Fix issue in ForgotPassword that occurred if no user was found with that username</li><li>&#91;#5019&#93; Add backwards compatibility for Revo 2.0.x users in ResetPassword</li><li>Fix reference to $this-&gt;modx-&gt;lexicon in Login Snippet</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>New in 1.6.1</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>&#91;#4886&#93; Fix issue with variable variable in main login class when loading validators/hooks</li><li>&#91;#4487&#93; Prevent usage of mb_ereg if not installed</li><li>&#91;#3500&#93; Fix issues with inline tplType params in Login snippets</li><li>&#91;#4545&#93; Fix issue with OnBeforeUserActivate event</li><li>Support for MODX Revolution 2.1.x</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>New in 1.5.2&nbsp;</b></p><ul style=\"margin-bottom: 15px; \"><li>&#91;#3330&#93; Add sanity checks to prevent possible submitVar data adding in UpdateProfile</li><li>Add support for moderation of users when done in a prehook</li><li>Add support for redirectBackParams that can send encoded data through a login/registration process</li><li>Add a generic validation error in Register to allow for general messages</li><li>Ensure preHooks run before password validation in ChangePassword snippet</li><li>Fix issue with placeholderPrefix in UpdateProfile snippet</li></ul><p style=\"margin-bottom: 15px; \"><b>&nbsp;New in 1.5.1</b></p><ul style=\"margin-bottom: 15px; \"><li>&#91;#44&#93; Fix bug with login validator, &amp;validate parameter</li><li>&#91;#40&#93; Fix issue with syncUsername in UpdateProfile</li><li>&#91;#42&#93; Respect allow_multiple_emails setting that prevents users with same email addresses</li><li>&#91;#43&#93; Add workaround for xPDO bug with NULL fields in modUserProfile</li><li>Add &amp;validate ability to Register/UpdateProfile snippets</li><li>Enhance Validators in Register/UpdateProfile to FormIt-standards</li><li>Trim each hook specification in hooks calls</li><li>&#91;#28&#93; Fixed validator issue in UpdateProfile</li><li>Added redirectTo and redirectParams on ForgotPassword snippet</li><li>Updated events in ResetPassword snippet to pass user object</li><li>Fixed UpdateProfile to properly update user obj so derivative User classes can manage profile updates</li></ul><ul style=\"margin-bottom: 15px; \"></ul><p></p>\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"2018-09-20T19:33:52+0000\";s:8:\"children\";a:0:{}}i:16;a:4:{s:4:\"name\";s:9:\"createdby\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"jako\";s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"2019-07-30T01:55:43+0000\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"2018-09-20T19:33:52+0000\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"109529\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:24;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:25;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.5\";s:8:\"children\";a:0:{}}i:28;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=5ba3f620bc8dd3277b8b4568\";s:8:\"children\";a:0:{}}i:29;a:4:{s:4:\"name\";s:9:\"signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"login-1.9.7-pl\";s:8:\"children\";a:0:{}}i:30;a:4:{s:4:\"name\";s:11:\"supports_db\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"mysql,sqlsrv\";s:8:\"children\";a:0:{}}i:31;a:4:{s:4:\"name\";s:16:\"minimum_supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.5\";s:8:\"children\";a:0:{}}i:32;a:4:{s:4:\"name\";s:9:\"breaks_at\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"10000000\";s:8:\"children\";a:0:{}}i:33;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:34;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"5ba3f620bc8dd3277b8b4568\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"5ba3f620bc8dd3277b8b4567\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:28:\"login-1.9.7-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"5069\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:10:\"95.85.64.2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=5ba3f620bc8dd3277b8b4568\";s:8:\"children\";a:0:{}}}}i:35;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"login-1.9.7-pl\";s:8:\"children\";a:0:{}}i:36;a:4:{s:4:\"name\";s:10:\"categories\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"security\";s:8:\"children\";a:0:{}}i:37;a:4:{s:4:\"name\";s:4:\"tags\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:84:\"security,login,profile,user,access,restrict,community,password,forgot password,reset\";s:8:\"children\";a:0:{}}}', 1, 9, 7, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`) VALUES
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2015-01-29 14:12:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`) VALUES
(1, 'joker', 'QC81hbtK4PICvBlAX/DU6bV7iCySfzFEIZL92vhmncA=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '6354b119a950370cf6e3f09185770792', 1, 'a:2:{i:0;s:3:\"mgr\";i:1;s:3:\"web\";}', 1),
(2, 'test', '+J9bSuC4krUJL63lLPdH1dk4jqhA76z+moiGOlqY+Sc=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '5baf5d997817576bec46053bf7f64547', 4, 'a:1:{i:0;s:3:\"mgr\";}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Учётная запись администратора по умолчанию', 'pavel@biletavto.ru', '', '', 0, 0, 0, 11, 1565165500, 1565165513, 0, 'b6ba4baa0625465dfedfcc2a34290a2a', 0, 0, '', '', '', '', '', '', '', '', '', NULL),
(2, 2, 'Тестовый пользователь', 'pavel@biletavto.ru', '', '', 0, 0, 0, 47, 1564547711, 1564628572, 0, 'bfe8c8a4d6830e805ba38121aeecad83', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2019-07-29 10:18:44', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(333)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `tv_cnt` (`tmplvarid`,`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# SQL file for Google App Module
CREATE TABLE `google_app` (
   `google_app_id` mediumint(8) unsigned NOT NULL,
   `course_id` mediumint(8) unsigned NOT NULL,
   `value` VARCHAR( 30 ) NOT NULL ,
   PRIMARY KEY ( `google_app_id` )
); 

# Table for Google App Module Admin Settings
CREATE TABLE  `my_admin_settings` (
  `idx` INT UNIQUE ,
  `flags` VARCHAR( 20 ) NOT NULL ,
  PRIMARY KEY (  `idx` )
) ENGINE = MYISAM ;

# Table for Google Calendars Admin Settings
CREATE TABLE  `calendar_settings` (
  `idx` INT UNIQUE ,
  `client_id` VARCHAR( 50 ) NOT NULL ,
  `client_secret` VARCHAR( 50 ) NOT NULL ,
  `redirect_uri` VARCHAR( 256 ) NOT NULL ,
  `developer_key` VARCHAR( 256 ) NOT NULL ,  
  PRIMARY KEY (  `idx` )
) ENGINE = MYISAM ;


# Language texts
INSERT INTO `language_text` VALUES ('en', '_module','google_app','Google App',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','google_app_text','Google App - Details',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','access_calendars','Access Google Calendars',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','access_docs','Access Google Docs',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','access_youtube','Access Youtube',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','admin_public','Welcome to Google App Module for ATutor that helps you create and share highly interactive course content using Google Apps from within ATutor.<br />Features:<br /><ul>  <li>Use Google Docs to share your documents, presentations and spreadsheets in the ATutor course cartridge.</li>  <li>Use Youtube to upload and share course videos in the courses as well.</li><li>Use Google Calendars to include and share important dates and events with respect to the course.</li></ul><br /><br /><center><h2><b>Login with your</b> <a href="mods/google_app/google/login.php?login=true&openid_provider=google"><img src="./mods/google_app/login.jpg"/></a></h2></center>',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','change_admin_settings_msg','',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','change_calendar_settings_msg','',NOW(),'');


#Configuration Settings :
#Google App Module - Default
INSERT INTO `my_admin_settings` VALUES (1,'1111');
#Google Calendars - 
INSERT INTO `calendar_settings` VALUES (1,
  '555975419430.apps.googleusercontent.com',
    'K2nH9SB_8LiaSJpJRkEIKiYd',
      'http://localhost/atutor/ATutor/mods/google_app/calendar.php',
	'AI39si7MpDpXAQb6cBshuZjZ6p-n4oTcmfxO0_Mfy_zkGuzY88BSeYb8AwgRWtXBvolLjWZKu6pMK3vboJR4EDYTSlUhw8Yknw');
# Google Calendars - using _config table :
INSERT INTO `config` VALUES ('google_app_client_id','555975419430.apps.googleusercontent.com');
INSERT INTO `config` VALUES ('google_app_client_secret','K2nH9SB_8LiaSJpJRkEIKiYd');
INSERT INTO `config` VALUES ('google_app_redirect_uri','http://localhost/atutor/ATutor/mods/google_app/calendar.php');
INSERT INTO `config` VALUES ('google_app_developer_key','AI39si7MpDpXAQb6cBshuZjZ6p-n4oTcmfxO0_Mfy_zkGuzY88BSeYb8AwgRWtXBvolLjWZKu6pMK3vboJR4EDYTSlUhw8Yknw');

# Execution messages
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_ADMIN_SETTINGS_SAVED_SUCCESSFULLY','Desired admin settings have been applied.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_ADMIN_SETTINGS_SAVED_FAILED','Failed to save settings. Check your settings again.',NOW(),'');


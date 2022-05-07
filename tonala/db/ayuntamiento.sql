-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ayuntamiento
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add proceedings',7,'add_proceedings'),
(26,'Can change proceedings',7,'change_proceedings'),
(27,'Can delete proceedings',7,'delete_proceedings'),
(28,'Can view proceedings',7,'view_proceedings'),
(29,'Can add constitutive_ act',8,'add_constitutive_act'),
(30,'Can change constitutive_ act',8,'change_constitutive_act'),
(31,'Can delete constitutive_ act',8,'delete_constitutive_act'),
(32,'Can view constitutive_ act',8,'view_constitutive_act'),
(33,'Can add location',9,'add_location'),
(34,'Can change location',9,'change_location'),
(35,'Can delete location',9,'delete_location'),
(36,'Can view location',9,'view_location'),
(37,'Can add status',10,'add_status'),
(38,'Can change status',10,'change_status'),
(39,'Can delete status',10,'delete_status'),
(40,'Can view status',10,'view_status'),
(41,'Can add identification_ type',11,'add_identification_type'),
(42,'Can change identification_ type',11,'change_identification_type'),
(43,'Can delete identification_ type',11,'delete_identification_type'),
(44,'Can view identification_ type',11,'view_identification_type'),
(45,'Can add identification',12,'add_identification'),
(46,'Can change identification',12,'change_identification'),
(47,'Can delete identification',12,'delete_identification'),
(48,'Can view identification',12,'view_identification'),
(49,'Can add request',13,'add_request'),
(50,'Can change request',13,'change_request'),
(51,'Can delete request',13,'delete_request'),
(52,'Can view request',13,'view_request'),
(53,'Can add user_ proceedings',14,'add_user_proceedings'),
(54,'Can change user_ proceedings',14,'change_user_proceedings'),
(55,'Can delete user_ proceedings',14,'delete_user_proceedings'),
(56,'Can view user_ proceedings',14,'view_user_proceedings'),
(57,'Can add ownership_ type',15,'add_ownership_type'),
(58,'Can change ownership_ type',15,'change_ownership_type'),
(59,'Can delete ownership_ type',15,'delete_ownership_type'),
(60,'Can view ownership_ type',15,'view_ownership_type'),
(61,'Can add user',16,'add_user'),
(62,'Can change user',16,'change_user'),
(63,'Can delete user',16,'delete_user'),
(64,'Can view user',16,'view_user'),
(65,'Can add plane',17,'add_plane'),
(66,'Can change plane',17,'change_plane'),
(67,'Can delete plane',17,'delete_plane'),
(68,'Can view plane',17,'view_plane'),
(69,'Can add not_ applicable',18,'add_not_applicable'),
(70,'Can change not_ applicable',18,'change_not_applicable'),
(71,'Can delete not_ applicable',18,'delete_not_applicable'),
(72,'Can view not_ applicable',18,'view_not_applicable'),
(73,'Can add property_ accreditation',19,'add_property_accreditation'),
(74,'Can change property_ accreditation',19,'change_property_accreditation'),
(75,'Can delete property_ accreditation',19,'delete_property_accreditation'),
(76,'Can view property_ accreditation',19,'view_property_accreditation'),
(77,'Can add power_ letter',20,'add_power_letter'),
(78,'Can change power_ letter',20,'change_power_letter'),
(79,'Can delete power_ letter',20,'delete_power_letter'),
(80,'Can view power_ letter',20,'view_power_letter'),
(81,'Can add privilege',21,'add_privilege'),
(82,'Can change privilege',21,'change_privilege'),
(83,'Can delete privilege',21,'delete_privilege'),
(84,'Can view privilege',21,'view_privilege');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$320000$f909Ksxel9Q7IpNkgfbcLY$EgfEgEaM3AlBvJKF0b+8ja+WINCJPBW9B8E+xf42GUY=','2022-05-07 00:25:39.903901',1,'tristan','','','tristanhdez0@gmail.com',1,1,'2022-05-07 00:21:44.547575');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_constitutive_act`
--

DROP TABLE IF EXISTS `capture_constitutive_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_constitutive_act` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `act_pdf` longblob NOT NULL,
  `not_applicable_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_constitutive_not_applicable_id_973578c4_fk_capture_n` (`not_applicable_id`),
  CONSTRAINT `capture_constitutive_not_applicable_id_973578c4_fk_capture_n` FOREIGN KEY (`not_applicable_id`) REFERENCES `capture_not_applicable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_constitutive_act`
--

LOCK TABLES `capture_constitutive_act` WRITE;
/*!40000 ALTER TABLE `capture_constitutive_act` DISABLE KEYS */;
INSERT INTO `capture_constitutive_act` VALUES
(1,'%PDF-1.4\n%����\n1 0 obj\n<</Creator (Chromium)\n/Producer (Skia/PDF m101)\n/CreationDate (D:20220502132232+00\'00\')\n/ModDate (D:20220502132232+00\'00\')>>\nendobj\n3 0 obj\n<</ca 1\n/BM /Normal>>\nendobj\n4 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 4\n/SA true\n/BM /Normal>>\nendobj\n5 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 10\n/SA true\n/BM /Normal>>\nendobj\n7 0 obj\n<</Filter /FlateDecode\n/Length 16012>> stream\nx��}ۮ%���{}�y6��	H���x���g�ۀ���q!��ά��F������;v�HF�Z�c:���c�����k��������ӧ��I~/1���jy��o��??�����Ə��<[;�^e�2�\ro����7��o���7�������%C���S.�/��y���*��3��*���������6.�ޏ����)^$x���ǅR���8�?�8>��#�S���P�㍃s�ل-�\\��|?ʸ����ʣ���SI�{i)U��B�o%��Ï,gMm\\2�q\\�v\\?S������%�!>Gg��ql�?F����#�������1��|��q�.8�s)��8��-���7��c��0����3��T9���ʩϟ�{;B�C<Fc�����S�:Z\"��bӋ���S�Lc�����4�\n9�ǣ�&7}5~/*<G��[)�{JI�/�}<g)r~	�U�3����؆����c<D8����EK\Z�:�4k��^�.,Ca[-C��]K��(�=��.�m�*l�C%��4���r�>�����q�z�q�8v�k�ۆq���a�.e7��R�ԡ�!}㶡�1�����Br�qۡ����j��Y�MG�]���q�S��|?S���C��0������e4aXg9N�q�28k�:T����gLA:|���8)�9��{�����uؖ=�P�<����$��gǨ�ѩ��*�ja<nh�裟�)�����3�7�����zm<M�u^;�á���{�=�si>��1����I��X������*k����a���>�ܷЃa�#�Z�x�>��pr�q�.6/焷|�_ǎgP/`�i��G�	��>�C|�)�z�|4�hO>Nuhw�z��f=�CT`�f=�CR����9d7/���g#�CSӯ4��j��[vMQ���P�/oP�ѯj�a�ٸqLn�����y�ЦZ>57�#��(����G����ic���a8y8�>��$�õ���P/s�÷ej��ù��W2����7����9���m�)�n\'y�<��=��=�Q�۞^k���\\nWz���t�9�q��\"���^��{y���e�ķ���*���ӹ79,˨]��ׅ,�Q�\0^�L��\"\"S7�	BY�,��?�D68�ly�j��9$G@�e�y\0���p��\"�y(�-��0�$x<AZe�ч\n�Y��.�$-F�c�J����\0�%E�Սy�\\zl��8��̇�>:��lK}5�<W�EOF����wƑ�|b�^LY�g�[�7{�����8���.��m��E���t\"V���B��<���HA���1����TMTk�[�\\�Ų�Qh���/>K��\"�W�2�ͮ��\\ml��(\0�I0�����]�U���u�r\0Ý\n(�\n��A�B�u�\"�)y0�&����iD���S]�J!�֔�����5e@U��=dU�TE�ؓ*�R�k�K����Y�� �is��H���>)��瞨��&\n�衺b��\0ΜoQ�����G��(K킄�\\rv0B�E����T�BB��B��!(`���l!�I���U�����?����~�H���t�I�N�@#���7�Nf&�p����Yc�\'�HF���R�mK_��M�j;t�q��ń^ot&@ԕ��X.Y�F���?���&��x9�\"��\ZD��`�W���z�8��tYx�h˷��n\"\0\'��8Kz݁_�^����5j���/\\ӫ���l@�9\0��S��C��I������.�WY�$��N<m��1��ޤ���ν�����}��O�M��=\r�7�/�%/��������y��������y��������y��������y������?h�!���A�㋼���%���O?����舡���9�?�fxI���Fʗn/����uޏ\Zu�g����`�Z���1C�p)������ǰ�|�n����kc~��~�|�G9ބ��4,:���P�CpX�#���3�WA�j�c��&6+.��3�[ ��M�K�8�<���j�E2T�#\r���ڋ�<c>���y�$>�]y.;�. 6ܟ��UXBm�܆8��T���6z��\nǰ�8^��k�����IPD��;���j�آ��hKU�<Z!�-��,�[��D� ��>n:|���(8d�=^��ឳ�_@I�����ыPh���K�i8�����2!�dT8\\m)*R�\0�8:����\'�!��	0ə��S�C����8��8?���7�H\Z>Y�W��p������J��Z!B}n���6�~���Q?�A�d�+z<Eq�G�=�c#b��F�(B��#�*���\Z��!�qZ��r�>N�0E8$h���\"-�NP�����\"���n3nI߯�xo�����D(c�\\*b��FF�B}�\n:��x��Nv�R:j��h���u�!�i����U�gzH}�\ZF�P>Ի紵{H�:��\0������Tt���z}HG���h��\\�w|�a�����r�\'l�\"�W�NJ$�aA�\\��X�A窱�����Q	_���4� t]�ytW\ndC�~����������eo8�L&�����Z��ͤ�x��1��(��u18	ܔ�	�̀�B�ٝ�k��V�C��ٙbP�u���;c�ّC��5\0ׯ�6�&q�����b�\0w��\"l�!��]F��Cl�j��b����\\p����\\���t���n�������7�����?������������O�������/�_W���*3\0qh���?����%�?��&����o��y�������O���?��>�ß��@�]��1�tH�X��~�A�31i�x�O���EE�?�g$\rn��V��L>�z?|�����$�i�!�$�����8�)��rٔ�|}9#�v���ۚ�A��B�\'\nPd���K-A�\'G�.�\\_�US����v��l M�S��J�8��iTiB�J���u{�d��,g7O�س�УJ��i�?��!�s�����i!�nx��9�qC�&�U&�$�L��N6*#R�w���y��ī�h@��j��LN����y���T�y��ܬj�[�~��8���Wm-�Ʃ��)T�?��7\\cػ�N����F��f�%@2��\r�/2�D-͇B�1[j]\"R��u2��#�:Y��&*c8Dj��FMDs����|\0� R��\r\n#S_r�B�%2�\"v�TB�\ni�AppLr��dA0\0�w]�`(\"�.MӤ삓��D:GzZg�G���j��b�\'Y�G�J׈Mu�M\'��z��Q�u��Ǘ�\rg;O�����G�@EYIZ9&݋��q��hȝ�Ft��4jѹ@��7:iȤ	��E!��NC�Z��\n+a4^�?�5:ʛZG�J� \Z�\nl(��W�L*:MKd|1�y�7;VM�G�4M|^����[Z�b�\rnن\Z�����B�,�����C\'���p��b��v1�쟡\n��Px|(c�(2�5�L��q	\0��\0�`S���>�\'�S�u\"�W�8P?@�\0��P?@�\0�_��70>���zd����-2�Q�?H��Ebj�T	Xr�~��dL�12�\'�ΰ���oט�]�\r҄6�I!JDBW�� �eQ��=A����m���1��%����W�6����A5�H�Yi�dPdW2(R��B��t�3QSdW2(�W2(���dPd�v�����n.�[ٌ\0/Z!y��ͥ,�!2�M�N5l\\PW%LT0ts�����礍J��������4L�,ts���E*>�+��No��&�qr��I�����(��D&%l\\0�9�������RI!��[�\"$��@T0�9q�>�	3w��t�3�0�4��=7TP������T�z%2�<d\"(By�@Dpt���S�E&��x����@�Iw�W+���{�x�He�2�@��*�i���v6��J������#є�	���}�	g�$�މ\'���cX���0�0�Z@!@A�7 +S�����`?KeA��nǍN+(D��4\"�Ӯ6>��MԿ9s��?M3�#\0d�>�ǇBC�]�G���s�����Qb0�GŘ��bt�CC\r�ˡ.��wҫ�;�8��o@����0	��Ĩ�~�@դ��!n�@��T?P�@��T�u��{#7�K��h��f�ft�Fl$rS���ď��S)q�?�m.M�s_\n緔=����\\���WB\Z�N���Γr�5h��R���Nl){�U��R��Y�\\��\\�s��Ɩr���\\�l)SzMZ�D4��h�Y��n�R����R�T��0�TGS5+���tV�M���i����R�Af0�s	�Ɨ�g��Vn<͕��K%L�T�u����4W�tɖ7�T<�2_*�:�U��4W��B��X�gm��ųD�F�J�LsO;��-�0�x!L��]��O�*�w�T,��DbL%^S�w�\\%^g�J��r�x7�UV�0lT�QҮ�d�ĝ,�wxk\\~���c)���&q;A��#\0)�������\0@�A���s��f�@�h+���?�R�i@�A�`& JlP`J0=�A0N��L)�ɔ`�`J�]\'����S�[�I:w?����QՍ)M�FDiz>��bIs�˛����4���9͋.�O3�\r4�Z��\\\0P�\\���BTi�y0$��O��^ ;��bf?��`���f?��`�/��7ȑ�����C�+�N_9T�J���+�J�?��c��DA�\"����i���OA�H�Zž��H�\Z�J[Z�j)R���1��[�m�����mL,�������K\nMy=c�V���o�����}�1��엲/���$g��栽�1����kc~��>ߘ��1��19�ͥJ_y=c�����o�����}�1��~)���8�\r�u���t�-n7�߮�����|cj�Ë@������e�,nU\Z5�?��%���O��p��u���;���tҠۗ�A�\'\rR;�A��G;p$��:�?�z?��ƙ��tF=H=L�x]�i⹖2��-��O\n!��7�3?�_���8�x�8�x�t~�UZ��~kQ��l֓V�)9�\\/�\"sڹ^��A��\"u*��H�vʻVR+��^bQ\"u\Z����P(�^�l���e&\'Rc�ka�Ԧ���~\\d���+�Ej�&]�ݎ���i���u$n�ܵ,��B��E��7kټ��M�؋�ߙ�.V�TFo�p5R�Z�f��������TO\0���h\n\n��\\�\0݃��F�@�s�\r�-�DY5�o�R�B�ԃ��q��#jL@oQ�\Z�E+`(o�A�e\\\\.V��\Z�S�(q����:���+\'�:B����PGh3ȃB��`*u��Z�U�՗>�RG(s�*uh�Z��̕:B���P�#�:kU��W	l�:���.�⌾�TG��F�Ra�j�ZaF��VG��^�C�[;����w��V�|��ju�+3��ു�b�ֱ�u��\\Ǽ��X�[����\\�c6��u�F��:f�P��ՍT�cu�V�c\r\r�XCH;�`o;�VPŎ�=T�c��V�ci$U옊K;��o;�-PɎe3T�cY�V�c�!��X�*�;�+�� ���� �����Eϟ��g�E��C��tx����%x��k5qL�U\ZE9��r���,���3XL�4��[�\0\r��G>�z_���|xE1[���ꦵ�@]�����|��d�=b�F�DjJ$��Nd��c*[�� �#FeS-Ez���.{V�*Y7�0���\0�M��Y11َT��Bdg.gWod6ֳ��l�`�\"�E��}��mϊ�͜�ٷȆ�?L6=�H�Q��mR�`���k�@�f.���ɺ��?�����-�>$�h��a�M�hN&�T�#�*5�T�uP�.U�Y]�~*§�r�d6]�>�Mw�X�O�X��*��\Z�p����V?ٻ�\Z0�7�b����%�$��u�LULL�\r`���4��Pv*�+E��Hy��`s����X������r��є;�3�(n\ZnuN����9��\0�!������ɑԄ��YۜYR�LG��=GW�Щ8o+�H�^��\'2�4��	2�`�:���ii���%L��EjH��!&����<�\"uD]���DkW�U6���U�� RA�2Qn�DAGo����Pż)�H���4\r@$�\'ىȆ��.�E�t��¶���Fe�(�`=C���-^m���|��Y6�\"/�Ϩ��M\Z5[R�_j��\\��j��y:�B�Rif$xg�8]����e9Y\Z��i��m�J,O�����L��\02H���.\"\'�\"SX�F&�\0�EHI&�0u��܉�_��<�����x?����޿D����G�|�ch�-�����,;.�$%QP�!�D�`���F�ǆG,/L�����Ю1,��+��9\n\'�2�0���Ep�ԲV0\"��V�,�]y�H_y��Z_y��_}�1�R�b^\'�,	�ھ\0_�����gI<x���g�L�\"���Cg��ag�7�x���m�6(���/<KB�f��0\"��%؎֯<K��<K���g�f����<+ՙ\rN�k3_���,0�6����G�ĳD&0sr����F�Dj�{tc��N Z���t��is�F��\Z놹Ҋf�����@_�%	V�h���\Z�h�6�$�h�lν��9KC���l���fIO��v%Z*[D+�I�l/��q�<����o��_� 7�����A������*�̃��:\0ӧ�0�r{�ZSq-h,�����\\F\0�cٚf�q-�8�T�X�q-�l�Z�{�^�r-�$�Z�9�Z�M�k�ׂ�ׂW�b�I�-��r�4��I\'��\'�Y`\0�ŰA��\\@D\Z���lf� ��В�p��Յ���!\\����?`���������{�\'��Y5��0eѶ�O~�o���G�ł\Z=)��8J��zŸS/��?�]f�DfK��t��u�Jd��\Z�Kd���I�H_I����k ]Z��B�D�:S%����Xdי��f)9@��lM6H��fm�����԰������K�w1�\"�|���Ă1)[8����D�ʹ�8���V]N�s��g�ەs�~�\\\"sp�G�ss	jJ�k����D��g�\0tb��0���4,}B\'\r_��S\rx�����|����\Z�U$;�GA�Dj�� \\�τT.�]	�H_��D�:M%��4�H_	���}�ؙp�(�z\\ma���Ƞ!�#n2���C\'�pqw41$\0�5r@ab�5����b��Zz�m�b�^t\0�C�\"�=��t5і̀�nŴ�-�<]/]�;�-��-��I��}�n�сn�?���t�i�[p�4|��@��y*�wҜx��b� mth)D��t�~�;�5a��\00-�I���:O%�;1��&t?��@��t?��@�/��7FҾ�b=F�Zb�<6R�U�8�.�����+)����U�]�ZO���HH�d���,�\'?��Jd���hO�����\rL��*d\"�%B�ݶ3-��L�Br��k�PM\'odK�be��\n�:;%21ܴӭ��*]&�%B1��$�%B��1�\Z�\\���ĹB6W�����k�TR�F2{�F�K�����\'ds��n�K�b��\n��pT��^���k|�P�p^��Ȅ\Z��+�s�&5�+<�����n)��<�U��4D��̂��^а�wU\"D��*��4�~�NT��u�*�׉*��(d�u�Jd��T\"��S��\n���]Y��m�+�̺�|=��@a�j���Ce�����ʰ������L|�{��Q\0�b���<�@lh\0���5u*n��Ƶt���y.h=����h\'\\08)��,1[#\\�&\\d�tA�P���s���\"�4Y��@��ׁw�W��(��-\r$�2�9�pR�|��\"X\0�� ��pCZ`\"�g#�\0��\Zan��d�@�e��XXH�@y�����l������ư�{#,��:ƽ�([��R��\")e��ʀk�eFZd3��qQ�ܵvد7��ϵ>�|Y}n�ϛ�������f}�y�>��]}ެ�>o�G�wSW\"}��\Z*rY-2�[�[�n��r��قm�l.�[��s5 H�p!VslCDsy!xI9�2D�������.�W��SW�(ӷ�c��s���Ǜ�Wu�s���*�:Zd6��肽(�w�eꪔ����z�H�>�4r%�h��⟘]��΁�e�����0Z���K�.���cz%R+�;�u#�Ȯ�V�\\��T�#����I�Ja�����q�����@	< �\r�p�R��:T���!�b�\0�<�@h��j�Um\'ɂ��dAK��X�˂�e�@��Ȓ@�`r`O0M�V%O�%��,�N�;�SV�y�SVp3`XpG�`���Z�\r�\nn��%\r��4p����&e8nE��+�	Z}�,�>oE����ϛE��uQ�y�(��,�>}Q��mM�~�A���~�A�_bo��R�z���\'���Z��C�N>.�Q���ǯ7�!sƥJ۹Ti̥�7/�.%�+���)aI�n��R\"���:����L���N���ٵ6�H�N	;��ܶ�Ud7L��0�~ä�Mm��o�T�ֆ�\r���e�\"f�O&4]���w*�疲D���W#R}�\Zw\"U�uz������.D�����^�vk�#R\"}!R5ͅ� R5ݥ��u���^�v� �L/���N��tJ�]��D�J�j��)�]�vE���+�׼]�]�H_����iҩ��N�(�s\\m9~�-$AC�9�d�:(�N���2bH��:`-2P�\0�ڀN���TAA��� U�ۋT�@�`, UdU A0?�%��P)1b\'U��T���Z��(9�T����+��}����pp�ĩ�s��7���p�~˩�\'\"�p\0������z	XD���ba\Z�~,��{J�cT����ӌQ�$�Wc n?������n?����/��7�/-��ܦ�\n9=�c�?����L��\r�|6t�h�.��\")E݌O^�X����U�K�}&2��\\hàT��o��a��V�p�R<���9�\"�����T�;�Rg�,���Y�]�Dj+���O)�6�[[�.�27^+\r�,R�n�M�����ڴ���,�9�H-W��Y(��s�o7u�̲��mLeͮ��r��,+/2���ʼ�N=<Y�4��R\rK�~&�|�m�埛)�|��O��ֺB�3�{U����{�S�8��x�\Zg���\"\ZzD�^Vl�\\�3�>��Ŭwmj�E��p�8#��\Z���8a�R�7�T�����8!ZZm�8�����6�k�m����6tZ8n�G�sv�-�.hdON�&Wm<�Y����I(����+1㪹]1�����<w���D&zT�;Ǽ��zD�Y@M�Y=s��,B\'�wb6W�V/���݊�\";ks`d�e�^Xs�U�<�\"uޱ�\"fC�B�#2q\Zv��\"5�M��е�Ɗ�J�n�Ԋ�\nD&��Ed�*ٮb�-�Y�����7;V��G�dV>��^`�+m�J6?]�O�v��B����������\'1\Z�5x^�/�hh�94N���\0%�Le�8S����\00X	��Đ�x�B�h��WBN?8����N?8���_��;4>\Z�m�=4��nO}����C��8�O���(ϡq�?�%9��.�r�`ё6��_t�����\"#��R��X�����A}�#��(f�#^�%31u�u�#����\0��މP�WFUf#��Pub#Պ�Rz��sc#�͑�H5��Z�@i3𼑑����ufD<����H]�הlX\"W�/���c��pX�	����n&B�ʰӑa�6Е��e����`�4��N�,�\'\\��ŉ�I�/eݙ��m��\Z:�`\'\Z�qa��6n\"b9)F\"\'x�~��T1ꓤ���X�ڕ��vt�/㄂�L��ٲK��JE����E�E�9��u�\"����9�I;=��p�tx�y�Z6jB��L�X�dk0�	��@���FPhp�K4���mȁv��E�\0t�8`-i\'@�����<���2���#ش9�I���}\n�	�7�*uR���U�$�U؝�����Z�8<�����M�Ht��(��n�`.�LT��7���艩,< �B�ALea1��E�T���,|#��p���W�;WY�J\\ũʷE�A���A�_\"�w�!~K����\Z|���+��J��ݭ�bZP1�m+*���sM��-��ȋ~a�ƙFWT��P�X�z)z~��Wu���W7b��*�q�!^���\\�B�oֹZh��JŊ�E*����ת[gx�q�SG��3Z\'�Y-{�T(q�Ѹ�U���h��=Z���C��z��״\n��7�*Ul��6��Y��L�RaR�ߐ@�R�����L�P_�WZv^lXȦbӷ��̈́��Slsq�iu��Ȥ�MF�`�h�Hs��\0)��5z�g~�*�Y-	�\"�*Q_������g�&��QӉ�*ř�G���ܟ�4 E����蕼�Z��\\��U#��\"��OE-�/��\'�Nq\'�O��d*)��[dT)�\Z]�\0�YH�$cMq&u�A�8����\'}c/�t���+8ުT�N���lv�o~��9�xN�\rM�	�ՠ3Z]��.�a�Q7�QQQ{i����b��\"���5J\"����h��a�EjI�P�3\n�g#]���N�S�#���Tpl�`�Yd���Hm�e\"���M+�9Y��3�9��,󌁌׿ٱj�?���	p\r�܌��?��=�|�J��Y6���!s%�	z�I9��-g�ͯb(��1d��\\v�� \0�P�z%��*�@@4�f8���`%�H��),�l��������?0�����?0��\r���I��������mWl;Z\"��A��x��J����\'��=��4]1:w�|�E�4<U��J>�<7�k��Q�LZ�2?}�u�ʷX��/g䖯�U�B����}!F4�b��p.�(��%��A�(�t$f�\"�]Ø=J���b`�(�~6	%�=J�gߎ�٣�/�QjH_�c8_أԩ��G��-��=��=����y����EhY�{�+{��\r{�Ւ�裈/�Q��(��(b����Q��Ѿ��8��Iq!���)SF<QF��(#Z�qF�q�Օ���_9����1��1�g���3B��3����������[�i[�[��ml�IlLl1��-��]c�.|qצ�DA�\"�_�j70ܩm�r�!T����0w��7r���s�أ���ޕ\nl#%��8dw�Qž��.��;�м\r�G˴N\'�8��/�P�#�*�u�~�\'Y�7�>��n/m��\"��\'�;`�<R?\Z��x��W*I���T��LRK��w�zW�WFI}�/��������c�_���~G+II8�0��CK��p�RRj,u���R�=Tү��0���`�2T�t&��Hz���.�p��<\\�����wG���MA��,�ᦘ��W`�=h�uw��>(���\n?��z�G�?�\Z\n\n/A�tj%���E�f�h;i�\Zf���݃Rx��Դ|p��ۥi���a�u	��؟�~�i�G\\�KA��1MyӔ�)Δo�8S�%�)�Ӕo�iʷ�4YQ����!�3G�R��L��Hy�H�gI�f�3�[z���z��ڒUM�ػ;��o\':��b��sMV���N�n�3�v��\r;M喝�r�NU�A��_��?N0Å�pS�F<�(ZB��\Z�a���q�#�S��FN1>D$0�D90�=����@���@�6v%&e&�������̉XLoc�0Sb�0e�)/�*�)jL75��\Z�����Yzؘn(jL�5��\Z�\rE�関�t��1])jL�5��\Z�\rE�関�U��(jL75Z)8�l~GK75��\Z�E�醢ƴ�s�EQ�ST����tCQq��m8�PT��߱W����tCQї����}�#��M�����CI�6�@�6Ё�@A�	ʠ���L\"aP�0�\rxa��0i��_W=��a+xX��\nV��H��W���(%�_��$/��ʲ4�8�|�U�\r79�Xd}���ѝ���Y�<`�Eh�\\=�7�0�$@�Dh��t%Lx\n���.0�`B�Ŗr윭	^\0J���Ν�D�3?��M�Thx���T��ᑂ[�?�����|ʱ��|	&�]���v��$�*�Jt���4�)9	^���\'�	��N;t`��:�z~��|��I�|Kp�:�p��j]-����QOot��E�N�g$ ��E�:g��.���V�D`z1:�e���|,�w���8F���c��T\Zg���H���4u�F���zW0�P\\���EY�������R�e��Am`j�i�+�4��I�i�R9���H�t�����i��1jӽ�\"t(�Ю�ǚ��Ê����#��:n����*�hGÈ-	Tl��aٰ\\q�k<�`,��^�Ql��$��:V�Oل�����ԉ�4�b@�E��h��\"�P�u��mk2(��i��|�vl��X�O`��0C�s��u����5Ƀ��{ٽ\r���D.�����<#z�\\�\Z���b��3�A%����=T��a�a�o��*������al�pVE\n���J���+O��Z��x��C*�P��\n���w�e��2Y���8��ת�e�6P��}�N�\Z���a�\\,:o�,�m[�����h��$��dk�x9i�e��j��I6x�.MkmFw���0��G��к�v�E���n��A��Z*�E=S{��\" �K�z&�΋�3��_��g��N��ɶ��oe�R�Lm_�$�ÌCj7�3��\rI�bĠ,��P��۲u&B�wp+;�L�J=�o\nW��%�>�ǝz��\"� w�������S��1�.w�q�d��u~]�3�E=��S�.���{�gNw�3�~~��g^��əvD�䵗 �b�M��3mOH��}\'���3�-iȳ�w�ӕy�&�D�r�&D=sZ�V��9��-P��B��{f�?�8O��7�dS˴%%�e��+���3�5�\'��Ӣ�9�PO:`F����ӟ�6&��M��;��kWL���$��F`�\Z&�	�\'��6􋤐���L}�D|��0ϼ��$65�yc����̓�|��	̓Mo�D�Q�I�f��9.���$ﰮI�ss6xR�Khy0��v�+r��U�k\06g��\"Ǽ�<8���PB��S!P�\rn��J92��u�L��;�$X�Y��\07���0ì�\'�K�ax���&�0��	����wǠڗbPe�i��k/�x��5���ǿ��W�Kx�4�q�h��\"e����\"��N�[�e�#V_�<k����y��k+���<���[6�i�J��6Z��Z�[��i2�&gO��\Z��l��I����ֽ���J��<Wo׵%\\�s�w][�uO�5�՗��}�x�������ƼZdx f��ު����Wp�xs�#\r\n���]��K���^/�b�6]�ʬ��tIY�:i&��Ι�����Z��wn����ʺDSZ���n����6����Vw�!���6$m��kkFr��\Z�mN�@k�ڗS��7�\"�uP\"�kGΩ�r�	���Y��oqB9����.��Znc��Z�[h�6[�[m�n6�kn:=�,���j+	Wk�/�۶�Y�l���\n5�Y�f;g��Z�f��WO�?AY�8Ds#��f�=�H[�k��JT�n+���R��T�LK����U[ɴн�fqF�hK�Y����ַ4Q��,=X;k�Q�D������.�qj�z�Z����q=�����s�#�S_>���d�\"ks�|V[��nއ!������#Ǌ������2��Ci��]���L@(�W\04\0\0��R\0xˤa{��i�����jx�����~����	`��р��h@͵\n7\r��hm�שׁM��p��V��|�CM+����[ۼL�%�4�$8�Y�����4�O�YA�\n�NjV�~O4�Q۬������KBm��8�y�~Ιj^�O�j�\'@�L��p�V�}�ܮf$�k��H��]\"m���<�f�&li�-ߥ�6ی!p\\�]NΕky���GO�]GR޺\"e�����ҷ���Vc(Kp5{K(\\D���#)I�z<�{*�\Zʤ]cH)�k��dʥH�\\�C���t8�TZW��)��7t��P��Է,R3�vr��K���eV[�2@Jw]&Jy�b��B+v�)�5ޤ��x�B[��)�5ޤ��x�B[�]\nm�7)�5ޤ��x�B[Q��TQ�\rfE���[l��5�$��x�D[�Mm�NP�\Zo�h+vG�yTl�\0;���B�,�bo�f�����>�g�X����=7��#g����B�7�\"_�}7���.��_1D�1��1�w��@�1��Kd��6} �k��*W�v��f�ßT)��0�\rRa���0i��M߶�������������w&�/�)�\"~N�\Z\"�������D(FOA���F(bY�%����w��JZb�D�EZb���X.�%JCq���WY�%���\"�%J�+i�ue�\0�*%�\0���`����$-�RY `m]���u�\ZzW�;��<|����DZb��\'P��2�@E�ʤR�Ri��3���}�g�+���iم����E�ƈ��J�f�@����DꙖ�#SX)l���K\0?�؈����̫j��N�\np-��iIa%�-�\"�U�k��z��b-)\\Y����F[D�J[D�J[Dv�-)�(D[Rp��*6-7�FU�:��-AU��@U��*[��U�s�U��U����\0�0���m�o�\0BҠ�U6]W!����7UU����7���b�I���j���*b�?Ώ�	遷 ~Ď��|�.8+bh�׈������W��*�I8`\"���DR٩���\'�[n��Ĕ�B��B��a�\n��\n�#�(0��KE��*����%0�`����?�`�����mb���#��m�������G����|d��2s)���UDv�*\"}�*\"{�*\"z�*\"{�*Z\r\\E�^\'Q���W�2�\\Ed3݇p��o[xXf��*\"�>7�2���~��*cv�\"�@��VL����jQ�T�^EĢ\\�PRYu���P�󅪜W�\"�^���$�m\\EVr�R��\Z�����nY�u�*\"}�D�%[�\\E�k]��H_��.�z�*�Z��UD*i��Ȋ�ֲ�@���u����ԗ(.�\"�|��\"+\"[��Y��|$�\"2��,Kdk��A����|8Y�NV|�)��|ld��w9o�BV��mde6c#+��W�2;g#+�7��u8���@D����\0G�($Zle�6�RL`1i0p{Sv`<��\0��fk`d��OΝ�������8?.G@���L�L��BW���\"�ƾ���`+�-�V6�J�.��\'|5�Tv��h�\r[!�\0[�Pl��l�@\nleC3��=�HzWȷl�`��=����-���P�A���P�o�;&�)&��7�$��9m���s��Tū_d�^\'#���4�JL�jo�)��x�����4ϓ��T��G��T�:H=7��Di���H#���$i�:�*&�ԉW;9O�Y�lDeVP��Yj���*KڧN����9�^�b*�(̹1��1�3S����SB�yJ��k\"��Un�NL%X=�v�\'�j��#W	^e�1I^�\'����ޣ	e+E������J��@a&\0ϼ[/Ԉ��3���W*��$*i�,���B�%x��3i	�&�3$OHLDZ����<��$�Y7ڢ�r��J�%xI*#R3{�kR9�\\��V>*if����BSfr��`Bza0|,e��e)�l{P~`pn���`3�k�3���3<��G�F�|4���%\n��PN!�lQ�]!�iX{)���r 7���I2!ʭ$k�D��4)k��X�\r��ܦ/jρ���]7g�G$��֐�C�7_�~\"�	jC��fs�*r�U��P�\r�/�hA�͆B`6�U`6j`6���N����7���a��y�7Ԫ|��C:�Ё�<t��!��wG9�7E9B�j��ww�/7K��Y�Z#��[;�ߕ%�N-���,�DS�����B\nendstream\nendobj\n2 0 obj\n<</Type /Page\n/Resources <</ProcSet [/PDF /Text /ImageB /ImageC /ImageI]\n/ExtGState <</G3 3 0 R\n/G4 4 0 R\n/G5 5 0 R>>\n/Font <</F6 6 0 R>>>>\n/MediaBox [0 0 1254 568.08002]\n/Contents 7 0 R\n/StructParents 0\n/Parent 8 0 R>>\nendobj\n8 0 obj\n<</Type /Pages\n/Count 1\n/Kids [2 0 R]>>\nendobj\n16 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 15 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 0>>]\n/ID (node00000012)>>\nendobj\n15 0 obj\n<</Type /StructElem\n/S /Div\n/P 14 0 R\n/K [16 0 R]\n/ID (node00000011)>>\nendobj\n14 0 obj\n<</Type /StructElem\n/S /Div\n/P 13 0 R\n/K [15 0 R]\n/ID (node00000010)>>\nendobj\n13 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [14 0 R]\n/ID (node00000009)>>\nendobj\n20 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 19 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 1>>]\n/ID (node00000016)>>\nendobj\n19 0 obj\n<</Type /StructElem\n/S /Div\n/P 18 0 R\n/K [20 0 R]\n/ID (node00000015)>>\nendobj\n18 0 obj\n<</Type /StructElem\n/S /Div\n/P 17 0 R\n/K [19 0 R]\n/ID (node00000014)>>\nendobj\n17 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [18 0 R]\n/ID (node00000013)>>\nendobj\n24 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 23 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 2>>]\n/ID (node00000020)>>\nendobj\n23 0 obj\n<</Type /StructElem\n/S /Div\n/P 22 0 R\n/K [24 0 R]\n/ID (node00000019)>>\nendobj\n22 0 obj\n<</Type /StructElem\n/S /Div\n/P 21 0 R\n/K [23 0 R]\n/ID (node00000018)>>\nendobj\n21 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [22 0 R]\n/ID (node00000017)>>\nendobj\n28 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 27 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 3>>]\n/ID (node00000024)>>\nendobj\n27 0 obj\n<</Type /StructElem\n/S /Div\n/P 26 0 R\n/K [28 0 R]\n/ID (node00000023)>>\nendobj\n26 0 obj\n<</Type /StructElem\n/S /Div\n/P 25 0 R\n/K [27 0 R]\n/ID (node00000022)>>\nendobj\n25 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [26 0 R]\n/ID (node00000021)>>\nendobj\n32 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 31 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 4>>]\n/ID (node00000028)>>\nendobj\n31 0 obj\n<</Type /StructElem\n/S /Div\n/P 30 0 R\n/K [32 0 R]\n/ID (node00000027)>>\nendobj\n30 0 obj\n<</Type /StructElem\n/S /Div\n/P 29 0 R\n/K [31 0 R]\n/ID (node00000026)>>\nendobj\n29 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [30 0 R]\n/ID (node00000025)>>\nendobj\n36 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 35 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 5>>]\n/ID (node00000032)>>\nendobj\n35 0 obj\n<</Type /StructElem\n/S /Div\n/P 34 0 R\n/K [36 0 R]\n/ID (node00000031)>>\nendobj\n34 0 obj\n<</Type /StructElem\n/S /Div\n/P 33 0 R\n/K [35 0 R]\n/ID (node00000030)>>\nendobj\n33 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [34 0 R]\n/ID (node00000029)>>\nendobj\n40 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 39 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 6>>]\n/ID (node00000036)>>\nendobj\n39 0 obj\n<</Type /StructElem\n/S /Div\n/P 38 0 R\n/K [40 0 R]\n/ID (node00000035)>>\nendobj\n38 0 obj\n<</Type /StructElem\n/S /Div\n/P 37 0 R\n/K [39 0 R]\n/ID (node00000034)>>\nendobj\n37 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [38 0 R]\n/ID (node00000033)>>\nendobj\n44 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 43 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 7>>]\n/ID (node00000040)>>\nendobj\n43 0 obj\n<</Type /StructElem\n/S /Div\n/P 42 0 R\n/K [44 0 R]\n/ID (node00000039)>>\nendobj\n42 0 obj\n<</Type /StructElem\n/S /Div\n/P 41 0 R\n/K [43 0 R]\n/ID (node00000038)>>\nendobj\n41 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [42 0 R]\n/ID (node00000037)>>\nendobj\n48 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 47 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 8>>]\n/ID (node00000044)>>\nendobj\n47 0 obj\n<</Type /StructElem\n/S /Div\n/P 46 0 R\n/K [48 0 R]\n/ID (node00000043)>>\nendobj\n46 0 obj\n<</Type /StructElem\n/S /Div\n/P 45 0 R\n/K [47 0 R]\n/ID (node00000042)>>\nendobj\n45 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [46 0 R]\n/ID (node00000041)>>\nendobj\n52 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 51 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 9>>]\n/ID (node00000048)>>\nendobj\n51 0 obj\n<</Type /StructElem\n/S /Div\n/P 50 0 R\n/K [52 0 R]\n/ID (node00000047)>>\nendobj\n50 0 obj\n<</Type /StructElem\n/S /Div\n/P 49 0 R\n/K [51 0 R]\n/ID (node00000046)>>\nendobj\n49 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [50 0 R]\n/ID (node00000045)>>\nendobj\n56 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 55 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 10>>]\n/ID (node00000052)>>\nendobj\n55 0 obj\n<</Type /StructElem\n/S /Div\n/P 54 0 R\n/K [56 0 R]\n/ID (node00000051)>>\nendobj\n54 0 obj\n<</Type /StructElem\n/S /Div\n/P 53 0 R\n/K [55 0 R]\n/ID (node00000050)>>\nendobj\n53 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [54 0 R]\n/ID (node00000049)>>\nendobj\n60 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 59 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 11>>]\n/ID (node00000056)>>\nendobj\n59 0 obj\n<</Type /StructElem\n/S /Div\n/P 58 0 R\n/K [60 0 R]\n/ID (node00000055)>>\nendobj\n58 0 obj\n<</Type /StructElem\n/S /Div\n/P 57 0 R\n/K [59 0 R]\n/ID (node00000054)>>\nendobj\n57 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [58 0 R]\n/ID (node00000053)>>\nendobj\n64 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 63 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 12>>]\n/ID (node00000060)>>\nendobj\n63 0 obj\n<</Type /StructElem\n/S /Div\n/P 62 0 R\n/K [64 0 R]\n/ID (node00000059)>>\nendobj\n62 0 obj\n<</Type /StructElem\n/S /Div\n/P 61 0 R\n/K [63 0 R]\n/ID (node00000058)>>\nendobj\n61 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [62 0 R]\n/ID (node00000057)>>\nendobj\n68 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 67 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 13>>]\n/ID (node00000064)>>\nendobj\n67 0 obj\n<</Type /StructElem\n/S /Div\n/P 66 0 R\n/K [68 0 R]\n/ID (node00000063)>>\nendobj\n66 0 obj\n<</Type /StructElem\n/S /Div\n/P 65 0 R\n/K [67 0 R]\n/ID (node00000062)>>\nendobj\n65 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [66 0 R]\n/ID (node00000061)>>\nendobj\n72 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 71 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 14>>]\n/ID (node00000068)>>\nendobj\n71 0 obj\n<</Type /StructElem\n/S /Div\n/P 70 0 R\n/K [72 0 R]\n/ID (node00000067)>>\nendobj\n70 0 obj\n<</Type /StructElem\n/S /Div\n/P 69 0 R\n/K [71 0 R]\n/ID (node00000066)>>\nendobj\n69 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [70 0 R]\n/ID (node00000065)>>\nendobj\n76 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 75 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 15>>]\n/ID (node00000072)>>\nendobj\n75 0 obj\n<</Type /StructElem\n/S /Div\n/P 74 0 R\n/K [76 0 R]\n/ID (node00000071)>>\nendobj\n74 0 obj\n<</Type /StructElem\n/S /Div\n/P 73 0 R\n/K [75 0 R]\n/ID (node00000070)>>\nendobj\n73 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [74 0 R]\n/ID (node00000069)>>\nendobj\n80 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 79 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 16>>]\n/ID (node00000076)>>\nendobj\n79 0 obj\n<</Type /StructElem\n/S /Div\n/P 78 0 R\n/K [80 0 R]\n/ID (node00000075)>>\nendobj\n78 0 obj\n<</Type /StructElem\n/S /Div\n/P 77 0 R\n/K [79 0 R]\n/ID (node00000074)>>\nendobj\n77 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [78 0 R]\n/ID (node00000073)>>\nendobj\n84 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 83 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 17>>]\n/ID (node00000080)>>\nendobj\n83 0 obj\n<</Type /StructElem\n/S /Div\n/P 82 0 R\n/K [84 0 R]\n/ID (node00000079)>>\nendobj\n82 0 obj\n<</Type /StructElem\n/S /Div\n/P 81 0 R\n/K [83 0 R]\n/ID (node00000078)>>\nendobj\n81 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [82 0 R]\n/ID (node00000077)>>\nendobj\n88 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 87 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 18>>]\n/ID (node00000084)>>\nendobj\n87 0 obj\n<</Type /StructElem\n/S /Div\n/P 86 0 R\n/K [88 0 R]\n/ID (node00000083)>>\nendobj\n86 0 obj\n<</Type /StructElem\n/S /Div\n/P 85 0 R\n/K [87 0 R]\n/ID (node00000082)>>\nendobj\n85 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [86 0 R]\n/ID (node00000081)>>\nendobj\n92 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 91 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 19>>]\n/ID (node00000088)>>\nendobj\n91 0 obj\n<</Type /StructElem\n/S /Div\n/P 90 0 R\n/K [92 0 R]\n/ID (node00000087)>>\nendobj\n90 0 obj\n<</Type /StructElem\n/S /Div\n/P 89 0 R\n/K [91 0 R]\n/ID (node00000086)>>\nendobj\n89 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [90 0 R]\n/ID (node00000085)>>\nendobj\n96 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 95 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 20>>]\n/ID (node00000092)>>\nendobj\n95 0 obj\n<</Type /StructElem\n/S /Div\n/P 94 0 R\n/K [96 0 R]\n/ID (node00000091)>>\nendobj\n94 0 obj\n<</Type /StructElem\n/S /Div\n/P 93 0 R\n/K [95 0 R]\n/ID (node00000090)>>\nendobj\n93 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [94 0 R]\n/ID (node00000089)>>\nendobj\n100 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 99 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 21>>]\n/ID (node00000096)>>\nendobj\n99 0 obj\n<</Type /StructElem\n/S /Div\n/P 98 0 R\n/K [100 0 R]\n/ID (node00000095)>>\nendobj\n98 0 obj\n<</Type /StructElem\n/S /Div\n/P 97 0 R\n/K [99 0 R]\n/ID (node00000094)>>\nendobj\n97 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [98 0 R]\n/ID (node00000093)>>\nendobj\n104 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 103 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 22>>]\n/ID (node00000100)>>\nendobj\n103 0 obj\n<</Type /StructElem\n/S /Div\n/P 102 0 R\n/K [104 0 R]\n/ID (node00000099)>>\nendobj\n102 0 obj\n<</Type /StructElem\n/S /Div\n/P 101 0 R\n/K [103 0 R]\n/ID (node00000098)>>\nendobj\n101 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [102 0 R]\n/ID (node00000097)>>\nendobj\n108 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 107 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 23>>]\n/ID (node00000104)>>\nendobj\n107 0 obj\n<</Type /StructElem\n/S /Div\n/P 106 0 R\n/K [108 0 R]\n/ID (node00000103)>>\nendobj\n106 0 obj\n<</Type /StructElem\n/S /Div\n/P 105 0 R\n/K [107 0 R]\n/ID (node00000102)>>\nendobj\n105 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [106 0 R]\n/ID (node00000101)>>\nendobj\n12 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 11 0 R\n/K [13 0 R 17 0 R 21 0 R 25 0 R 29 0 R 33 0 R 37 0 R 41 0 R 45 0 R 49 0 R 53 0 R 57 0 R 61 0 R 65 0 R 69 0 R 73 0 R 77 0 R 81 0 R 85 0 R 89 0 R 93 0 R 97 0 R 101 0 R 105 0 R]\n/ID (node00000008)>>\nendobj\n11 0 obj\n<</Type /StructElem\n/S /Div\n/P 10 0 R\n/K [12 0 R]\n/ID (node00000007)>>\nendobj\n10 0 obj\n<</Type /StructElem\n/S /Document\n/Lang (en-US)\n/P 9 0 R\n/K [11 0 R]\n/ID (node00000003)>>\nendobj\n109 0 obj\n[16 0 R 20 0 R 24 0 R 28 0 R 32 0 R 36 0 R 40 0 R 44 0 R 48 0 R 52 0 R 56 0 R 60 0 R 64 0 R 68 0 R 72 0 R 76 0 R 80 0 R 84 0 R 88 0 R 92 0 R 96 0 R 100 0 R 104 0 R 108 0 R]\nendobj\n110 0 obj\n<</Type /ParentTree\n/Nums [0 109 0 R]>>\nendobj\n111 0 obj\n<</Limits [(node00000003) (node00000104)]\n/Names [(node00000003) 10 0 R (node00000007) 11 0 R (node00000008) 12 0 R (node00000009) 13 0 R (node00000010) 14 0 R (node00000011) 15 0 R (node00000012) 16 0 R (node00000013) 17 0 R (node00000014) 18 0 R (node00000015) 19 0 R (node00000016) 20 0 R (node00000017) 21 0 R (node00000018) 22 0 R (node00000019) 23 0 R (node00000020) 24 0 R (node00000021) 25 0 R (node00000022) 26 0 R (node00000023) 27 0 R (node00000024) 28 0 R (node00000025) 29 0 R (node00000026) 30 0 R (node00000027) 31 0 R (node00000028) 32 0 R (node00000029) 33 0 R (node00000030) 34 0 R (node00000031) 35 0 R (node00000032) 36 0 R (node00000033) 37 0 R (node00000034) 38 0 R (node00000035) 39 0 R (node00000036) 40 0 R (node00000037) 41 0 R (node00000038) 42 0 R (node00000039) 43 0 R (node00000040) 44 0 R (node00000041) 45 0 R (node00000042) 46 0 R (node00000043) 47 0 R (node00000044) 48 0 R (node00000045) 49 0 R (node00000046) 50 0 R (node00000047) 51 0 R (node00000048) 52 0 R (node00000049) 53 0 R (node00000050) 54 0 R (node00000051) 55 0 R (node00000052) 56 0 R (node00000053) 57 0 R (node00000054) 58 0 R (node00000055) 59 0 R (node00000056) 60 0 R (node00000057) 61 0 R (node00000058) 62 0 R (node00000059) 63 0 R (node00000060) 64 0 R (node00000061) 65 0 R (node00000062) 66 0 R (node00000063) 67 0 R (node00000064) 68 0 R (node00000065) 69 0 R (node00000066) 70 0 R (node00000067) 71 0 R (node00000068) 72 0 R (node00000069) 73 0 R (node00000070) 74 0 R (node00000071) 75 0 R (node00000072) 76 0 R (node00000073) 77 0 R (node00000074) 78 0 R (node00000075) 79 0 R (node00000076) 80 0 R (node00000077) 81 0 R (node00000078) 82 0 R (node00000079) 83 0 R (node00000080) 84 0 R (node00000081) 85 0 R (node00000082) 86 0 R (node00000083) 87 0 R (node00000084) 88 0 R (node00000085) 89 0 R (node00000086) 90 0 R (node00000087) 91 0 R (node00000088) 92 0 R (node00000089) 93 0 R (node00000090) 94 0 R (node00000091) 95 0 R (node00000092) 96 0 R (node00000093) 97 0 R (node00000094) 98 0 R (node00000095) 99 0 R (node00000096) 100 0 R (node00000097) 101 0 R (node00000098) 102 0 R (node00000099) 103 0 R (node00000100) 104 0 R (node00000101) 105 0 R (node00000102) 106 0 R (node00000103) 107 0 R (node00000104) 108 0 R]>>\nendobj\n112 0 obj\n<</Kids [111 0 R]>>\nendobj\n9 0 obj\n<</Type /StructTreeRoot\n/K 10 0 R\n/ParentTreeNextKey 1\n/ParentTree 110 0 R\n/IDTree 112 0 R>>\nendobj\n113 0 obj\n<</Type /Catalog\n/Pages 8 0 R\n/MarkInfo <</Type /MarkInfo\n/Marked true>>\n/StructTreeRoot 9 0 R>>\nendobj\n114 0 obj\n<</Length1 40264\n/Filter /FlateDecode\n/Length 22978>> stream\nx��	tTE�8~��{�/�;�w\'ݝNw �H!I��-a�	I��#;��#*㌌�(��8vB�\0�2�;��踂��̠��(���V�~IG�;�;�����~�{��u_խ�ֽ���\0\0�0mfq��Ϟ\0@�0��nܔ��[���x\"����W4�_\'P��z��u�Ǟ:v3���撅����+�^`L.j^�\n���L��E�7-|����$���t�S�k>�4�u�[�|��r,ҷ\"���`/���}.��-^�n����c\0Ɠu�W�o^S���,�?��y�*�L�����%�+Z*�\'�q���쪕kץ\n`�W��UkZV����_\0\"�S1@���J�X�4ҽP	/�(Ȑ��$��7��]\0���Y�?�`z��0V�����L�!��F��tᅦ���Y+����x�}�0���?�>�x�\"t��Uߛ� l%۱:�N�3�+��\Z,�v�D�\Z��Gd��EΚ26���.����T;�t$���� ƤC�g\0�ۧ�t $��v�s1^����Pca<L�)P3��a	\\\n�`ˏӔ!�h���p>L��f>,WhR��������!%ʇ6\n���_�~�5۴���|�|}��5�1���ݦ��w��:���G���t������x^�����쓭��W�.ϝi�bs��������\r�d4�V���\'����{��a�7�\'yHu�n�vH��B��?���:>����#�\'@S���4ݽ������?o�d��\">]\r����t[��U�E�Z,G7.�O���fL_�����Z�}X\'M:_�G8��0��^4�I����4N�KӸ\0� ���\Z	<H��\Z�\0�|\r�3r����ނ�k1d%\\�sa�\n�S��JX�s`Ҍ�H���`=��\Z�H�g�\ZL��BL7�{T}��%X���!��b��Sbg�JL���fW�8cFc.J=�`	�1nm�Vky{6 \\�)���MĐ�1�g~�8+�,[-�|,a��\na�+1_֢��H���^)+�ۂ�P�X���\ny=X+W!m�m�rX�aY�v2�-�=�[�{Li�%�-��>y�`�_�1,T��mT�Y�ni���c�����t)����a�:&��N�w��t����ӷp�X�e��^�a(]#�6���r�X�uY��ij;X�:.��#� �����\'�\n�b�R�����=KR��x�SԊЕv���1�ù�49����	/�g�/�r�9l�0Cn���3c��xS�P���^E��J8.�I}W�f�uL�9(y�k|9?���1�Z��%�Hk�>us���� ^Hu�|����j�K�ϩ��S�w�1r�~/j��)����)4�$�(uk��xg�x��q̽>#r�0s�?�L=�T�ȋ�N8H��	4,�MMI�\n.,c#�zt�>�t�o�b�N�H�B�G�*�?��BO��=UL�a/\r��>	��$<GI�����LR���.K���t���W��S�oz%~��ǧƠ,�?e�\r�����i���+�=�\Z�Q\n1��%�߷c��8�GM�p�����&��xʂ#���n�1cKCd-���I>�c�<z�H�����Gm3��\"䴛�Q�7���d:��,&��-���*9J>���,��~%,V���g��V�V�^�Q�yO}ϳ=���;U���#?\\���\r�A\'��x?��#\"#��\'D�d6�	~�$7���n�0��R������_�[��j���i.~\"t\r��������Q�7���r��0T�\Z��X�-�v��>}�1��\\\"�vJ��G���S\Z��\Z�^�����z�gkώ����ԇh�x��DKo:Ζf��Ѧ{��ub¾�2���=3�,%��F���ȝ�A^�ߐ\'���\"_a��4��<��c�4�\\D[�j���J;������Up\n��Qh�	��BRxEx_�H8#|���h�b���q��^�G�L�L�+�,}�1hVh��ti������N�6jo��Ӿ�kB�|���L�J�W��^����^����y�@�B�S�n��^A:i��Q3��$S�þ~��g�Ha\n�!3a)��q���W)>\'�\'�m��7jL�J�����1���`1.��ǈV��\r�MN�_	���GI�~	�V�+`/�0|�ۆ|<��N�Yh�}-�@�S��ʅ��ZXF�\'qo�_��\"�J���<��b�t��@�$/�%b�\"�@Ň�ME� 9�:�(ܩ�������h��_c���S�S��g�hݯN]\r��z�d���q�n�%b��P��E��g�A���)�A�9�b6J�;�s;�	9h	��P��:5�h,�,�Z!/�̀9�����\"�$u+�<ؒ�s�\r��-��l��	J��9����4>UD���t&��|������o�e��m�[h�W������=\0%��I&�	l�X�D�0��L����_�LO�*$X�Z�\Z�	xP+A�6�c�$���Z��:��g	��-�l-���\r�j�Z�؆s~ʛ]8o����>{�Z��h�}o�X�9�b��G�ղ\0-.=48W�b`f�F#j4Ou\Z�\Z��MF���k��r/��c�GB�W��/#\ZQ�V+��e��#��=������:�^ɕ�o��!��E���/���`5�͟�\\���\0���j��:#��j��L���D���oFT\'��D��tn�z^��F�҈��f�S���:�^��D�?��7���t�������<��?�z�N�c�zȒ-��o�Yfd`6[\0jF�2Z�O���2�%0��h�\r��(#j�$�DN���<l��d�^:��eiAB�\r�JVK��M��\Z#k�(MF�KÚ����4%;^��2�j�o��6��53��b�Z,��Ţ3i-F��w;��%;����� 	�nl3�Z�2X�V�Պ�k\\V|��kb�l����e�d�)OV����Ć�npg�33XeY\'������:���v��8g�h�U��8�Xk������N�{�{�f3��,��f�e�[j������ry��\0����l�+3��f�����F[:�h0�ث���UΨ�׋�v��w�O���ۗ�YN����Ot�c��6?�[��FT7sn�)O �� �;�\0�`��	�n���Ɗ\Z���X&�;k8(�����1����a���1_�b`f��g��X�1>V���c�%c�WșO�W9���p�2	!?yae�ޛ�X,�4 ���k	x#؅Ê��)��a.�{ʓ��ϲ�G\"�S�������kN6�\ZE�999v�5۟~1�2]yB̅��<�����?TE�P����	�C!9b�	ᓕ-��b�c+J���D��rOy��6t0Fˡ�a`f��h4+\Z��Q|\\�Y�p1vaM��~3�?l����{�SR2J�0$,8F��0�UIf�XA���\0E���\0o�Y��Μ0\n2Qy17�{�S^^	�P����at9T�c`f��A�<�ጴO�O��=h�H�¹S�!�����R�)�y獁��$,�������003���RY)�Jǔ��Ҳ� _i�h���j���gn8��g�؉0�<����g�Ա0q,f&(><�|8�\Z��^.	2�j�7�[�f�����X�l�ŋ�\\�XA��YӦ�NT�:�r䈊��C�JK�.TT/8 ?͋�C�������]NG��&[-f�Ѡ�i5�(P�Ց�M�d�))�\"\'��H34g4%C4�?M2���B�)H��{�	�2�KI�P%T��#���\"�.2gz=�7��4��\'9>���9nF<��j��q�$i\nU\'�oX�V�4�k7\Z�Fƶ�\n��`DԈX�Y�NܣG��zD;�+��E�U\'��q�I!Zݼ Y;��z�?n(*L���#\'!2&i�sˋIj�&�����\Z�1�^x�m[�7�M\"���\'��V�-��K�/;��{���c�d����jϒ{mk�J�^�f�����4:��m<�\r;�ffK���d3b-a�R���f!MKCI}dLdq��&\Z_[fl\nw�|�����ͪ���U�HC�@��fl��M���c�\n�e�ұ�k\Z1�3���8�qr�����Y�j����aM�#ئ�����Ñ����pD�$�c���,��OJQ9j� DN��Hs:D��e|��j���x<YP�XD;��8��-*��E#�Ur=�>�žmnQ�����+�K�uz������(�7$i�9��8g��V5�7yS9����;��X�UveU/�$��\"�E�����>�>T�֔�ۚY�ޔ��qi,�5�^��4F��E���K�^�MI1�\Z����:�JBB�r�D6���0QW�KŽ�d�j&G������ޯz�6+,�hͬ9mm�~q�jJ���r<̪��&a6��(�u�g���L`��e�JP���?�7�ø��p<\n����������T�ő�i;@��O���nR�+u�Fr����dDQa�Ŵ�-h!��$��#�colHN�7D��#�H}��}�³��\"FaL{�l�ޞ [gΩ?��Dh��J�ئ1\r�yW\0m��,���{�\Z�]�Au�� ��cE���w�a:5���.���JA1^P(ƈJLB�1L���*���:��Y�A@�<Ry��eV}�P���E�(�����H;���Q����1�<�����L��f�)[������a�YFFX����}-�=�~�(��9D�1�a�+�9��`b|~A��D�jf\"�H�p�!#:�&I$9/�1�Z���l\nc`$Bi�D�0!����O{e~]�Y)`N\r�֋UZ\0y��ՄI9_�	0�[�O���`iiS�K���Ұ�Ir!���W�}D��QK+���m���Nf�����WK���5��ׄp�4m��l.���C1��N�ƹO��69R�\0)�C�;+Z���\"l�0��Q\"�A�	ϼM�����2}ے���.�}��(�A�����)N.�\'�7�{I�Y��pn�`|O<��&T;��󛱊�o&͏`�d�_�� S�m�r�ߌ�X/�KJ^�%��\"\n3b�I�ֆ�\ZBM(C�t�l()�Z��S��ɍZ�=�(��kn��i�\r�?�Ey���%k������\"�f�\'���A�*F�#1fKjb������f�-d�]�br`uy���Ցp��(�K�8�h30��ٍ�Mq�	[��-Tц�QfW��5�\\�����f?�a\'Lbo\r��B��2BL��b���Fm�/����+�:�+7\"��*���!�:�����\ZOf��z�u���ݛ@���8�f�Ն�~K�WLI�!\r�@~o������pn�^3�B?vlQ��ͣ�B!��\\Ȇ�\n���Mv�K�\'�	}B��Qa`G<;x@��;F]Bd��Yb]$�PsB�����%�yB���B׊�qtO�;�N��ņЭD��q#d��PP�/x1��`���:���R�0\r�<t��ۉN��X�JtW�{\n�)����b��7ro���%��Yy���_�\\Р�S�+��I\n��lH�<h���*�=Z��|����h���F����,X	� ���DGM:$!����Jv>%�@*X\0��a�t�m%�\r4E�;���CO��Jv��L?���=�N���C�!\\E��>GX�n\'���A�:\r=��c���~\0V�>��B7�NtO��\n����P��1#�C�W���=�2}��.B+}�w�;X��;�+Jp$^�F��4���������㛁�Q1i�CB.��R!�#:���Q�$�E?��w�L߀$:�/�����բkB�\n��7{Z�mG�]rB]����to�`t	t��t�h�E�t��G������W���>������\"�9�D���	�h#���ї�/�x��nO�=�\Zm�Oa���B7\r�<t���Чhnǂ�39/�\0);��?�� �4���E1qbv�v�h\"��|e v�1�nb�.�\Z1b�7 �@l�R��͙��i�C�E�ٟ�,����F[��K�b/]��t)��R��oDV��:\n\n���L�[Ѷy��� �����z%i���V�֋Hk��HkiM��Cd8vE+It�{�HxH�K��1Һ���Hk����)Ot�pǤR�Uso�h6��?oJ+\rc�����(�Bx]��%�(��{s�����Jy4�d%N�g0�38��1t\"�3�F�`&�`V�U��;��+t)t\Z��Ŋ�¡a1�*t��]��+t\Z^���QX����b����OC\'�g��N��4�Ȗr\\�(� �2-\'�C����h�6����������͠��7�[�����-ߠ�&�w�G;�/ GD�##Q��Z�>:�A�>�~IG��Y;b�����R�~8�\"�E�<p(�V�K$�?aȣ��on�XܥÐ\'b]��!Nz 0<��K��j���#x%���L.��%⢵���g��\'b~�k1�}���E�J�j(K�/8�W����\0/4��!����g�w�ŉB�m�v�v��D[�\rk��l�_���u�΢3�:�N�uT:GW�x\"�.,:4�ޢFdP�Ld���#:\n�!�%�К�cHM��|��8�<33�E��\"cjV��5&9<^ӥM�H��k�����	��C�t+.]f�w���g[,����������6Ty��l���\0hJ�x���g�IY�1��G��4$K8�J!^��ۊ9@�ANU�;@�μ���(��,\\5������q:��#���9��4���.G��S��bz��c����tQ��Ӊ�ѵ�ͫמ��i�!X�iֺC�4/E�&\Z�4�Vx�Ӽ�je4�Q�$@��\0\'!>p�\0�q��>��4�\r�$7��GPh��U\Z�q����O˘x���0.��j�T��kJ޸a��Y���\r���X���3m҆H˸��ȸP�ȹ?=�E���k��ճ���&Z�u�L���4�k�3����_Y7��UV��ղ��XY� ��EO`e����YYxY�Y���]c\Z��U�=�h@�mB;~�K^5���Ȱ�J�A4]v�1ސ4E�$��XT���,\n������t��ʑa�A�;%c�-2��֯]��%㔿��`к���_�c�U\'��֮�I̬IV��]���&֤�5�h��JVa�(��,�����i�s�}��fA+=��$r�:X� $sjfQ��қBѰb�bm6p-���j�j�㠼k��֭Oc�X�����d��%��xo������ϭm�	�0\Zm����_�~	�%Bq�\n�<�ו��qA�f\\P͵!�6�{$A -W��7�a�Z�b��v���fG����	L�`Fh��\n�2X�~���\ra�: ���B78z�/���q?�8�?���Ak��d#���\r�͍0��kȃ0�(�\"�!�7�C�\0�C8b8�C~��\0�E���G8�A�/�AK�aN����!ˡ�p(K�*8C���!<������\"�H���a$�1P�p,¿�88a5�B8�R�`$N��\'���9���χq����W0��i0a-LD8&���΄�gAM�$̆)�8�\0�\"��i��A�\"���$\\��36�,�q8f��\nMP��.@x1¿�|h@�\0� l�.���/`�����(�9,�&ėq�����1���p%��`A�3X\r-��\"�k9\\�S��zX�p,Ex)�O`#,C�	V �.A�/����U��թp����հ�5�>��fm@x�����Gp=lD�6!�\n�!�~����r�7��\r�p\\��f�\n�-p5����O�\Z��µץ���9�\r6#�[��b����p�;�-��7\"�%lCx7����w�-w�v��\"|\"�nE�\0�����{�ܖz~;�_ |��G�v���\rw!|����/>w#L�=����؅��K�\r{��ԟa����]� �������So�o��Or�<��0�\Z���1�O�o>��ބg!���О�<���Ё�ؓz^�N�/�^�/�>���~��B�?��G8<\n�O �#�6�:�����<��O��7�p�5x��?��߆g��\"|�����߇�~\0ϧ��1�Ë�#�!���#x����W~�\"����38��|���\Z¿�S��_�u���$���Kx3�\n|o!<������o#�\'���4����R/�x���_#|	��c��q����>N�=pa\n>A��2�������2����L��Gd�����D�v�L��?��\'ze��~2����s���92�#.�?ʐ�q����e��ϑ�ǹL?�e����2���K2������+�������v��\\��cv�������?,�_�@�S�ş�6�0J�lғ��o��e_�(9r�f��+�y��Jg3$�5�������dBhbaP��_E�*T��:9d��]snN�1\'\r���N��#_&�F��e)��M&YXo�}y&���-t�q��E���\Z=�:�|�d�X����ι��e�e��Y˝˼M�M�R��e�-�۵;�=��75o\Zߵ�z�4ZF��ڋ$P�Q��>K�_3}F	[�{�>��\r���z�m�D*�\'�_����L�.�謳Y�Fљ͈쩳�E�<�0aN��(���K��B����<�\'.���7�O\"dh�j����4���$�L��wjB^9Е:�AC�\'Q�����Y�\rgA����o7;�����f��C�c�(��*^<�!K�+-q��N�j\"���,�UZ2�&�\"�Z��e���бn����}c�O<|��?|����D$��zޞ��;===�<v�~rw�/�:E��_.��c_����B�\0�\'�\\8�t{g�Y��I����UĠ\"�ڭ\Zѫ�AE��4�NE�j�t�4��YH\Z�TD�\"z1(H���^oZl�����E�t�p���`\'T&���FA��j6�$�A3P�Y�\n��!��(ٕ0�(�/̼d�����dHd�]�㝲Lg�y��/�1t��Y�ȍ�i[�C�ۭ�1���(*�(K�� rbKC�Z�ȶv�@c��x�4ۅ��?��+��J>]y��VQAl���-����V���oE�St�+�(L��\n!��B��+�Fn#4\"M�aJ+L���D�@��B��%?p�q�>���f�%��g�&�zU���xii��90l%��Rg�&���}��g�=��3��{P����{�\"��{.���C�C����d�<bW�,Sz��*�eJ��l�*��\0�U3�F�r�΀��J���0[h=]��p1�F�a®��b>!�����ƙ�*c�kf[9��m�n�ޑ���gLo�����YK�O�28�YY/Y�K��b5w�Y��e��Z,ք�����*���E�.�I�X�l���U�-�(�j��0m��f�0�Z�a�C�����y���O��`%�!���^r�`L�+���ȭ��Π8:�䩴8:݈u����F:��|b�nP\\B�d�!�U9�,\r6D�$��3�4���nd���\'L\0s�ł��4�|ڻ��D.�f��K(�Xn��E1���e3V�bkh\n,�6?+�(���Т<�������t>��m���ݽ�u?=Lt�n:�B7i��n|��;;�U���ݳanϙמ�i�\nӌ��%�\n��F�i	˳f\"�Չz��QS\"�M浂@Y7O���J��>�n���0��#�P��Jr�K�%ݡS�Ӎ�+��>9U>�:^9E>�ӳ�����\'\'��Ս�N�I��gm\'��U��C�N\r\Zmd��^�,���s�f���p�?o�>��{Ϸ]�>F�B��%P\\��ԀRX���1:���^�1��L���R.�x�pՈ�R�dz2��H�1\Z�L�=�R�\ZH�5U6�T}�N[��\"U��ޢVC\r�*!���*s����4�5����N403���l��by��H�X�$o��/J�i˧d�Nj u�V^lL��4���O�^4�f�\"\rzIMf�N�՚�iLZ��NX�]ҚE��9Y�ML�ϑ$]�F�t�U	=�L_$(�� 1!Ƅ���0�V<\"��\"�IkM���L�v1�w٪=��Wi[�T�3�o�Ev��?�I���+�<�S�;Yu�R>�[�A�8N�-�<��:\0u���g-�>�ER|会�qfM2g�e�Ω���N{W���Z��k�����߮�t	C��:Q�\r%�SZU��,�:\"��D���b�\Z�@K_���?�}׽o���1>7P*<;�<�3��!;\\zӍ �_��@^�A6�7`���FQ��,���_��,�V��\Z���5j�]z��_���֣��<��??נKx���,{NA������\n���@���=�i=ד:��,���Ә�RנROD���ؙ��h#ht��\Z�z\ZcKͬh�|��F{��1S��k2��L��M,/��똞9�1�c0q��R�\"��%K�Lz�+3�p�+u��s��hr*a�6yc|�ܴ9�,��nfLL��S�H�b���bǷ͍\nf��*p����\ZZq��^�m�r��@b��AG�G��;�\nJma�J���A��pI�0&�c�J�GQ�Ac�_^�p��[.h�ݶ����>�f�5���KV\\;gĬ۶�<&l8�r�C��O�.jo\Z\"̰�N��r෻�������4�ia�3i��:���w�O�fSB|eB���|��2٭p]�v�SzTx�|@�4?o>\n\'���m�سm��B�f�� \nN0�9.p�yK˲b��~�p����n�\0�m��%���OD1�Aǀ\n��Ѐ\nيȟ�c�9�^�Y\'C,D��꠻�Aw��P玅t�25��8��9��r݃�����\'�)c�ÄQl���5������U�M������Xn���3=����5b$7�ĞWZ\"��1����ag�Y�|���g>9���]���O�G\nG>U����x�O���#J�|����%���n?�rѮ[���꧇z�h{�ݥ���~��\'�&vj��MAd�Ӡ�1�N�z�!�˴���!C�L\r>����\ZC]9�N\r������d��F^����,��N��)�O�3/�Y��9 I��T�x�P��3�v��y��#Ŀ��p�t𱞪_��c}��f3��^�}����-���_�p�H����쏄QY��\'C�9�a9�G{�b�0s�_O��=�.��v��	Mvײ֏x�{!���mr_��.0#���e���7�25P�D����C?!���:U��Ӆ�Z\r[�q�����薹�f7��\\|.�[��L�j�\Z�5*��Ψ�\'�KV�?�X]�c��v��	W��Bf2ך�̫�����`��r���� �^UeEcq%�k�JY@ۺ4a^.@��gH�wvU�VfFu]�OӳO?ݭ�v?D�O�tO��<�Lw5��@j�����T�j�! 2ڜ6����pPq$�L��L@���[e<8i\Z�W���Jؗ{��W���2�/\Z��*~$���9���q?Q`��B�v�qIB(�n�]���:�pN�da�v$e���Ɠ���c��:fg�b��1�O|�!CW�b��m�Ɔ�k*�{�%�\n�B��Rڃ��!��O=���gf�`?K�\0��hA!WK�1���j���������;���X�����$���ڗ?mTD�� �b�W��s�;������K��4Vl�,(��+0*�M�\n�)�L\0��l�&;�2\"�\'�0��EKV��Buz�tzj0jX��2k�۴�Qe`*������~��ls���a����6�P�qe\\@ݿj��j889�8�1�a��Pа^������C���б2,&S�`/�r �.%�_ؙ|������!Zv�i]�\Zu�x�@X[N��&XUe�Ҙ�.��*�*�V���u�����+M�L���@1j.����-[�:#�t�a�i�F�M覘�X��;����¯�\Z;�Z,�%�$�3�̓%�:�����N��e��l��l���vj?Hw�T�!�t]d�^�ޠ.��뻄��J��2�Al����v�g%0ڀr�O��Qd��:YW�D�u�CR��*�쥻�ؘ����tc���10_�/��D#���J9��õ[-m��/��2zE��\n%]�M\\[��C5I�\r�[01=�u���\"�;ko�WX\n�|wm_y�����{�04��o�U�nD��\0l��F&��tjM/��G�a�r+\'a�$Bl��<r�`�w(�G�C=u���K���O\'��%|wv���C��߆�7���}_z,�\'��d��Y�Cv8�n�_e�at����}��,�����Pv�6-k�;᫗��ȳm���y�|�ot�Aeo� �s�zg?-��вNU��s�Bh�<����E��MW�*^9�哖�1�ײC��Z�-�4��Z�I�U�VUZ{�`k����}��=�U����\r��YT��QխJ@��;���v���F���� d�C�D�;����2������9��V2�e2��Ξ}O�9����ֻĿ鋟���-�YA�~�����������dϿ{��2��C�?��G��\n�(S��!����ؖ9h�\\�P��!\ZM985��Q,?{��g�]�%�Sg����(�_K���0urZ̝N�Y?�|!�?�Ǭ��Y�qs��1�����\Z��L�ӷ�\\�Iz8T���6����[Lܔ�X�)��aS�ĝ�\Z�g+�|\\>�C�:e��\r_��س���{\Z�r]�\r�A��eߊC=�ݿȶ��^�4��~�mN\\K�r�U|�v��؇��Vq���=�Z�М��lfL���U�ޕ�h��W���=��e6���_&�}k���?�Ɏ)�H/�}���H�29094�87�\"�F�Ѳɺٰ�����.��Ϭ2Ν���٬6�Io�Ӱ�e��m��$y�z����q?�:�q&vX�{�n�r��x�V�.�s�d0WN�M���R��%jTN�ƴ���\Z���[�ך\'��zT�����e/��^�s\r�4{EF���Jz�{OxһL��,�Ɨ�bԬW�[,�7�~�^���]�Za�G��#�\\\'����>H���\\o��%��s��i%o�w�n*	�r���\0��B&�ϊ���-�˝Q���n����=��e/�>e���S���}�E�ɽ�wL���=����^���7��yS���&C��6ܨ�^/��o���z�鹩�ĿJ��`a4�;�A�*7p�cxT�q���zUć�� �3g칙2pc���*�֭\'�TE��$���k�u��*T�\n���gW��ϟ)4h�f_0��,K��\n3��S����T$_E\"��b��HLE��:`<��cy4Oȏ��E�E����\"��ˍK��,-�M��̗Y���筍^/�o0�Yo�7�]�ռúÙ�6<��1�?�����@�],�=�M���u��r�$*�$�ȷ�s��99.���8�H#���H�UX|R��E�<��(��9~�V#\nTC�y���r�E��C���?�\"���o��H-i\"��v�!]$�0儲���fKlJ���\n�`����>C>�Uf�W���@2��y�����ç�@_IX=��� ��c���-�X*�*콻��YLPx��Wvg\Z��`�rz�K��|�+�2��N0p��Nr�=�v.��k\\�7�I������O���\"�/�����}\\�����U9�ʡ���̏���bCˆ���^���v�n>�5h9���7�{ን�̬�;�g��%��������z������V\'o׷^v��w?���;�[�%7]0f��Ews������[�䕫-7�|���JK�\r�w��#k�}�Vfz�a���<\Z�le&�����IOX]�}���8�3�2�S��;a�q��ޝ\0}�/�2C��p��O���T\r$y�s[�\"�z����gR$O�y@$ca���}%n@��$B���_���VZ\nʶ;��+�H��b�`S���\r��æS&c�Tk�\"5�2;����׽UU�S���Nr�t.�CTrP*鱨/B\\���H��\r��:Ҫۮ�wBf�P1��[�NJ)���Z��e�v�tJ�p)�u��i���Y}��9�|��V��\'=U�l��>�a;�R�ѷ�\0+�\'�ޡ����l~=�/^ ���l��w����&���sv�\'�ZU�9b;�aR�,FJ	�������Ed�s�O�\Z��U7�ώG69��G�\0(r��T�7��f_�@sA�9����\n\Z͍K�K\n����x��.��f�\0u>��Hb�C�G��\Z��Ȁ?:���\"9L�ؘH������2�4�aAw�/,(�+\n\'��t\r�%�\r�-�Mߘ�����,D�����%a�g�����@���r�e�%e�vZ�|e,����u~3����V	�,kf[�u\0��]����ll�p��[g�w}d�G����)4����������7���f�P�f���Θ�ߥ�x#.r�M\r�11�VzS���D&#��v(GN�E佄�U;�W8�m�����	K~br,{<&U0��I_T�o*�!	�5El�O�s\"e�+W�]���n���:u��zr��7Ū�/V�F�VW���戆5U\Z�q�R��{gG�gP����K~%M��v���L��\Z�1�3͐�}��v���q\'�yuR�\r�|����SO�������K�ZѲ\\�2]��;���� ��&�e`�PĖ&�|�P�q��q�~�EIq)j~��o6�Ċ2=��D9�-�W�8��\\m��N���	\Z��5�����>�Ą��.{g)��zզ�璣7l}�Vֻs��/~v�ܒK�˾v��G7O�z��b��E\r��װڳ�ƚD��AO}������y���MN;�R�?jS�\'q�h�r�˝:�\nc�zA@�\"V�UĦ�/��,WY���s-�D{���D#�8�:�ZZ>�Z����j�(���s����m,a���	z	�f�u�̚�n�jr�E��4? ?�3��^�R�DX*�7�2��2���3�5�\\��MS��;Ϻ�z�U�����`�;܄����8�B�i��ߤV�����$��\n0a���Yt|�����a�Θ�_��A�1$�IX�i�H39I�{�SfE�W��Kd\"�j�c��I�:���dr�\'S�ΙwDK��*-�Z����e��RR�^��*���i��˞�]�+�$��aM�����\r��4;	^�ދBV�O���P��\nE9W�㌵�~�G4���\nFm��Wƹ\"����[���cv��=��߼���5_���{�ǽW�����-��lv�?B���ׄ^����e˟y�ͧ�A\r49��r��fq\rt���樹�<�,\ru\r\\@gf8f�R�~��)p8��������d}����W�\'�ǃ��+��*]��\Zߪ���v�(�\\#�Ps\r�6�wL\n\\`�3/2���u����ĉ�l?�\rN�d��������>;\n�6+��>R��[^�5*�GmD�%lM�V�L��L��c�3`�\Z�	K��M,����.�6�	���lS��m�������z/ԩ��.�Wg�Ӫ�>���8od�S�#�cڔVd�7M+hs��Z��LmΑ\\Yj}�#�9e�Kufxs��;�\"i\\]�mz�;^yB٧�d��<`�G؞��]p\"%(w�����Qk~�QUj���w�L��U�\r%1q�].��<{՟�/}�ڦ�{�C�^����?�x���l����Dh�>�ZΎ��W^��s��,�/�A�\'e�9��9�����\Z�F�lc��LZ�o1�L�F$1�a���oKgg|����h����t�\\�@�}��9�Q��y�����\"V��]�jr�r	��u��K��,�-�����M���C-�̹-��}꿾��Ν0����Zf����=l��,S}~AY�L̾ ;{��ʘ���AtR\r�}u��^} ��9}�6�N��&�\n�T~Q�,-��:v<��B�B�Pp��Ǧ���3w{�q��sÐ��𵜺�ˎ���+�WWr�ޮ^]aJ}�?�\r\\E��6����p��X�(����� �i� Ĭ�x3��x3h�k�.j,��J�Wg�8e�ء\r���$��^��`�����8�����>7tl����:�4���&u��;I��D�|��z��br��c?Ĵu�a��:��Eʎ�CO��b�`o»�{����:�y�9�=��l��`Y��,��qҸ#K4`�� �T�2X��b��U ���B��A��~\0�g��2~˶�&��&�(������\\&��0�����v�#��ǌk�|ʿP�6��s��~��	r�p����ɔl{�t�\\�����F�\\�3OV�p��nBSݦ�k5:�2e��6��O�$^p��$�\"d�/\\YE�s��1X��*2>��%ʩLdh�вr��GE����]j�ع3�w�������w�p�����_`��0���m�-drbL�t�/(\'r�����d4J�Bc�q��ڡ�g{��1Ga��8�1�8�Q��7.6�5��i)��~���]��a�a�\n�Ǉ��\n�\Z�D;?<`Sak�;�����|�os�4�.��9 ��喎��%agi�и��W$d)�\Z�s&��Y\Z-5������������Q�稛����q��B���\\�{���k!����\0+Z�Qiػ�����-\"�0�fȨ��2Mu�uV�ܠʐA�!�i�t������b�Ze��6�*V�iM5���Ŋ���Κ�je\r�\Z)���\\3Y���ua���S�$��􎒜�������/}\"}e�DUe�4i5ZC8I]@V@�w���M���_���qf\r�#KY%������P� ˹ݸ�v>���-��R�C�ee(���KƮ�b��B6$�=u�k7=q�C-��z�/w<t���l��z��hɂ9��I��������~}d�B�k��z��a�d��nc9ȋʭ�o��L`Kl�Ҋ�C�j�Y�AN��̭��lA\"`\rHZ��`�gϘ2�ʤ�6��:ST�(V�ғ�z��ƌ+�H?�Cc=[������V�ctz�3˙I���z�5h��>2���tf?���b��]6�,�:墫\\�\\IW�%��Ce\"��(��Q�b���;�~�+�{a\"?�JO�M��4ջ=WϽ..�(_��MLuN��d�ث��Şս�-՘�1\Z;6vkܮ�1�Ƣ�Z4&?1�P����Հ\"�����0J����%vg�ùI�z��\"�������i��y��\r���\\����J�`�?nm|�����[~2��+������g,�\rZjP�z���ވ���/�|���чK���uԨ�tQ��h�ʹ;cuՇK��☩�]AE4*�E$�����H}������.�u�al����w����c�Sz-��U�V��t�q}Jo�q������R��9�	W�H\ZѠ�F%w��ĤxX<.j��D\nbH<�o��ls�jb/����D��ȕ��*M�]�cl��w	c;q������S�*��G�$՚�]����h�4����{�J��B�S@�����)��ȑo�b��wp�\\��R�o�]}.��^\0��������od3r=g��I|��=����}����?x���*��Q�qV)(픎I�4�$!(��Z��$b�\rTP�ˉ\'Z;��S�G�$��}\";CB�aK�:�����\")�$3=x0U�?xl�ؖU��;g���A���9m\'�n�HuM폈�����\nYBY�ws��e��=����/����I �g�ܔqa��-�5��0O�ܞ��2�������-7�o��ԫ)�R���b4�E��	���OBҟ�3!�օ\"z�?��HN@�d��h\">�l8\Z%ۣ��4�v�,��6b�:����|ǖ���Ell�����F�j��W�|�֦^��[�w��=�9����H��<��~��%�{K����ꝍ���*����0�GQ�~+ӯ����}@K#j!UuF����.%G��m4\Z�*��J�e��\0~�d�n��qZS~�����2��x�]d������d�JO����{�Z�2���k�-P�Ma�*67���PM����d��٩*TuE��\"1a�\r>ԶDct��ݷܨ��D;�kC��������(\n�/2U�%-�����/��Ȟ��Q�~�Y����G��ۦλ����������獸��_Ў�k��i�۪��)�k���*�$A�Ew�]���gY��3Y\Z�ݾ�E��$��壞㞔G��ˎ�\ZѸ���d�g�Y2f���d�Y�<�B�pk���4#�ӌ�v���;c.��\'�l���N��o3r;���8�Ei䦠���q���W��<�<t�g�\'�9�=-u�T�s���R�7��g:m��%�4��3�l����Ǉ��~S����a�x;�ͷ~q�;3�$e\\��>�ͥ��\r:�� h�Mc����f���ي!Ζz����%Hv�R��6�e���@/m�o��M��ʆ΂e��J�����USJ��^K��d��[_�~�Ը��b>r��$��e���\Z�����\n�I��yy�]k�&h&��4\r�E�%:]�<�>�5�S-��k\\՞��\\������Y!��/�W�W�x.%N�F2_(̒f.4-Z�.y�QkC	���td�x:zךr�#��ו~�n캠����}��Q�M��DxJ�Dx�� �/\Zr�p-���Vֆ����8�m�CI�Oq�V���,*oY��q���v3�7���Z@�3ߣJ/.�ُ) L`�L*RP7��~(���Z�!>����}�LN�W�����zk�m��kI���L����z�46�[��v�M�	5�n��˕���ݩ̥�n��������x��䁎-�w�ټ��f���7�|���_�!9���˯����_�&m�Y\"����C�ĥ�:�\\$�\'��bU(���@S$��Y�=&{Uh{H7�=�?�=�ߠ��4�=׿T�̴D^�^�?z���}��9\'\'r��R!WD��q�Pq�<^�,ϑ?1�5�G6�,�+`�������P����2T�Λw�@dC��dh5�!�V�D����&������r�>�ڶ�K6K���:�UJK�6�U���9Ox��Q�Äl\'�H��\"b�T�iD ���ʑp�H�r$��	�-\'L��3 F�ד�v��b�A���r���T�\"ߐ8}�o�B9�A��$F�s����N��,�����n�:��]ퟷ��?ZKZI�Y��خ��8	x	�	�$�%�4s@8�4	�%��h\n�C��&!S�I����@�Z�d�܅t���4e�s�2w	�ｷZy�m�>Y+i�������}�#�\n19Bj�����XIu��a�*�N���M.�0�_\\��><>p�\'�}��ܷu�o�o�|x�?t��ի���}a��O��h���7�}��?��h͊�~n�h�R�u�5�\n*���bԅ��BgU���<Q�\\M�)%;k�E�%�#���#�\'���9-�o���~7棌Z��@��ѷյ�}��g���ߜsɯ�y�N�1,�)��J,��h�S����\0-����]}��C�k�U��EgP�^��tu���Y �@�(��Ԭ2;�vgTE}��+���E�X���ZM�\n�[����10Kd`����:^]s9�UF��`]X�u����6S^	��`��Uh��x��Ԝ�Jc�ӷ����\r��6>?5��m���z���HZ�6A���{��ܿ�:��?�>�G\Z�<\0z�h�	�wqs\Z<��K��|7�����)ɒ�ELY�f\0�OHPʤ#0�2�Ol	����T2��u�@� 0?\'f�`�j.y0����o�y�\Z}6�&9z�;�9�xgw�� �m�}ɣ4�$��2�-Ē�8҃�E��z����[o�z��ŷ�5|�7W,ڟ_޹n��iz;g�s��9l�kX6^��+��C�[�L��%�ȹ�\\���. g򼀜��C=|��,�o��e{2wf����]�}��6����X\"k�j<%�-��{�^��*�j�6 \r�x@P���H^�d����ٵx�rG��-�٧��\'O7���E|@}!�ba8�V.Z𓹌/��B�\ni���|!��c3�VM�Z)_�b>��U�JSu�B����e�Ng��=��#�N������k��� jTE4�U�\\��n��\Z�C�iS��a;Zb�<#l� l��Fթ*��=\Z:��?���E>դ�&`\"븑x�����c�ޖ�	�Mxr���N���a������Ȟ�D�Β����i �7��o�\r����4�����5x�T�pܿ��=\r	v,��\r�u�\'[Qg�V�J˓Y��C�|��e ^�\n��p�d�l�=���ξ��.�܋4�$�)C�ސ	���3�\0H�R�o�����I�Q�ܴҧ\n�i�0�RNR�����xB���Rz�1��D!��+j�Bvc�4,#bpBFK\'�\\�0t�����p]d�4U�������P䓠֨�YA��Խ\rKF�;w��M����@/9V+�\\u�w��$U�,���%#����0*#V�|ZPZ��5�*����������C��?��3�������?<��<�n�\Z�F����x�������*u��;�]U�o�~�������������Tugۮ�]��w_&�*;�?�!���{B���)sh�������i�h�$S��a�T595䢎I��)���}C�VnYː�M�3�t�|�:���	�$}xN<$��E�55���.�u R�9c5yHMY(�;]d:M\ZlI(�\'^&C ^�G��r��,u֓�{�:k���x\'Ь�<�EY����2��<I�a���|7ذ����r\"P�H��i��9M6�d$���_w�\Z�5�yָ�����{�88��=SO�ؘ�~����L�9r�G��Q��b%��Di���c٥bf�HT���BܴI�?h��A���,\Z@����{�1�!f��b��c>:V�bv��X����x�FO�L�����U�(�\Z_$��%%f<�yJ��J�z��0�[U:>.-��2/���\\	�%+�\nU��Y� 3�Afe!y�3�-�~�*xA��K:�s���I�FX�5$�� �$N0x5	4�L\n+44�$�U�Zp&��8%*05�A�,/&O���$�=ʈ�D�:�޿�U�2����^���_������ѓS�?����ݏ?�:���uC���L�\0A|3AE+P~0�f��Ș�*��$�%\n�w���Ps1�g�Bd�L��fv�Q+U��W5L�a�S�W��W�ay���/�(ِG�?*4�@�ltu>(�9��`9�=h����z��K��6p�m������p7�	�������k�W�9~<�O���a�x�ǟ�O�%p7���� � ���*�b9�Z�R��q��D\"S�@�]��:�)����5�1蚜�_\n�\n��~T$��NOAs�\"ߎEI���-�p��؆�&�$!���f��u]y���1�uC;B(D$WN#f������d��K�\'��yT��Jە�1��va�i��?A�:e��kd�G(+=���_?[_/~���=|nj�]nފfZ)\0:J��\n}�\ZѬ�FR4��@A�SB�<���+L�J�U���Sj�h�Ᏻ���*�u��pD}v+��4��\n���YE��	~�4^|5�-�FW+{X��ivqv�#b��U�ff&���@�Һe���*C�Y���ǁ�lE��X4of��#�e��􈪱��<I�)w1�zO�	{�Гn3�L�=�&�J�!(�D[5�\rbRM�x̛�\\V���Ig��2Μ2N��\0�G���ST�a?��[��L�~9��L��	����+��+��<�4�p��fK���!);V����JX��l1%%��pԋ\rR1\\�E���2n���7J]ʵ�r��V�&�n��.k�p��EzU8���.\\��Y\0-.�y�پ�[�I?��rO���K�%e�:\n����������_��E9��6L�m\r�kY��c���J�u��$J��^��UX�4��kc3g�v��4b\Z>�A;\"`���y3�5�!�Q��\'��^��̞�>��6/4{�X�Y����/��\\(D|��1�Uņi��k8,�\\��z8�S�ҢiYŐh�Bb�\\�z-lkZX2u��%���*� (Z���jXc�g�������iO5��44H���8���]�^��� Fx��ʫL��|�D&}�!����9b����/#_�gI�sㅾ�8I\n�5�}�s��O!��*T�7����1h����6���z�2�u��q��j\Z�63A�	���G@�����Y3PסR��if������uwj8�f&�i�Ik�8��:~��\\���El��\n��>�򉕗ǂ/7g&�q�O6�֟N\Z�9}��\0��Fl���]�c�E�7�\rO�������w�Ĩ�����>~�@\'�v��g\\u�������B��/ϚF�L�}�Z�C44��{4��7���/�9�-����\n[����Q���~��5k>����/���+�_�|���[U<\0\rE�1P5�uN�R�n	�q-=��jZg���4%��A����]rXOA�C�S�G?�9Wsu��-%�nDU��Z��+y5�-Tj�ϘJ�*DVD�Xk\"k����H�va��ݼ߾��!�Qs��\'����f7�ٟ��צ���gR5V$/��ll�%���e�.�ӝʗ�\02�l)Hh��AV:�K;���M�*Y��\n�Gh#�\"�7\0)#��So�Pju��䌸���U:-�B߳ް�5��a\\���)v�ܴڢ�R�RgTD.���f��!�9�L�eMN��H�:X$n\\8�g�6N&��$�Hd2�o\Z�H�c/D�o�<-�,�%K$�f�d=�g��q�Kz�<]lk��r�g>>�ށ3�a�	G�:�r�\Z�\0)��0W���:��Ń��c��&���zO�c��V>?v\"�D�ڋ������2���T��?��&�2�S���Q�&�֫���3��ڊ����K�t\0��3��\nendstream\nendobj\n115 0 obj\n<</Type /FontDescriptor\n/FontName /AAAAAA+ArialMT\n/Flags 4\n/Ascent 905.27344\n/Descent 211.91406\n/StemV 45.898438\n/CapHeight 716.30859\n/ItalicAngle 0\n/FontBBox [-664.55078 -324.70703 2000 1039.55078]\n/FontFile2 114 0 R>>\nendobj\n116 0 obj\n<</Type /Font\n/FontDescriptor 115 0 R\n/BaseFont /AAAAAA+ArialMT\n/Subtype /CIDFontType2\n/CIDToGIDMap /Identity\n/CIDSystemInfo <</Registry (Adobe)\n/Ordering (Identity)\n/Supplement 0>>\n/W [0 [750 0 0 277.83203] 19 26 556.15234 36 37 666.99219 38 [722.16797 0 666.99219 610.83984 0 722.16797 277.83203 0 0 556.15234 833.00781 0 777.83203 666.99219 0 722.16797 666.99219 0 0 666.99219] 68 [556.15234 0 500 556.15234 556.15234 277.83203 556.15234 556.15234 222.16797 0 0 222.16797 833.00781] 81 84 556.15234 85 [333.00781 500 277.83203 556.15234 500 722.16797 0 500]]\n/DW 0>>\nendobj\n117 0 obj\n<</Filter /FlateDecode\n/Length 332>> stream\nx�]RMo�0��+r�m%��1U�����t�F�Bz��/ش�	�{�{�q�yi��,�p�l��^�`\ZoN��U�(�Li�W�o9t6����\'Cc�1*K���������<E�Sഹ�͹nno���\0Ƴ$�*��N��}�`1ʶ�\nq��m��e|�G�R7rT0�N����2	�b�)�*���R]z��9��Bv��ZPJ([ё�Qv@���@T���\Z��5W�ý֣�t�i�|j99�?�9�p�)r\"���bbO���2�5�ʉ�qĉȜH*�s����p��H��i��^��9���,��1ys.,oniُ6�Dv��jy~A��0\nendstream\nendobj\n6 0 obj\n<</Type /Font\n/Subtype /Type0\n/BaseFont /AAAAAA+ArialMT\n/Encoding /Identity-H\n/DescendantFonts [116 0 R]\n/ToUnicode 117 0 R>>\nendobj\nxref\n0 118\n0000000000 65535 f \n0000000015 00000 n \n0000016429 00000 n \n0000000155 00000 n \n0000000192 00000 n \n0000000268 00000 n \n0000053525 00000 n \n0000000345 00000 n \n0000016664 00000 n \n0000029008 00000 n \n0000026362 00000 n \n0000026275 00000 n \n0000026019 00000 n \n0000017012 00000 n \n0000016925 00000 n \n0000016838 00000 n \n0000016719 00000 n \n0000017398 00000 n \n0000017311 00000 n \n0000017224 00000 n \n0000017105 00000 n \n0000017784 00000 n \n0000017697 00000 n \n0000017610 00000 n \n0000017491 00000 n \n0000018170 00000 n \n0000018083 00000 n \n0000017996 00000 n \n0000017877 00000 n \n0000018556 00000 n \n0000018469 00000 n \n0000018382 00000 n \n0000018263 00000 n \n0000018942 00000 n \n0000018855 00000 n \n0000018768 00000 n \n0000018649 00000 n \n0000019328 00000 n \n0000019241 00000 n \n0000019154 00000 n \n0000019035 00000 n \n0000019714 00000 n \n0000019627 00000 n \n0000019540 00000 n \n0000019421 00000 n \n0000020100 00000 n \n0000020013 00000 n \n0000019926 00000 n \n0000019807 00000 n \n0000020486 00000 n \n0000020399 00000 n \n0000020312 00000 n \n0000020193 00000 n \n0000020873 00000 n \n0000020786 00000 n \n0000020699 00000 n \n0000020579 00000 n \n0000021260 00000 n \n0000021173 00000 n \n0000021086 00000 n \n0000020966 00000 n \n0000021647 00000 n \n0000021560 00000 n \n0000021473 00000 n \n0000021353 00000 n \n0000022034 00000 n \n0000021947 00000 n \n0000021860 00000 n \n0000021740 00000 n \n0000022421 00000 n \n0000022334 00000 n \n0000022247 00000 n \n0000022127 00000 n \n0000022808 00000 n \n0000022721 00000 n \n0000022634 00000 n \n0000022514 00000 n \n0000023195 00000 n \n0000023108 00000 n \n0000023021 00000 n \n0000022901 00000 n \n0000023582 00000 n \n0000023495 00000 n \n0000023408 00000 n \n0000023288 00000 n \n0000023969 00000 n \n0000023882 00000 n \n0000023795 00000 n \n0000023675 00000 n \n0000024356 00000 n \n0000024269 00000 n \n0000024182 00000 n \n0000024062 00000 n \n0000024743 00000 n \n0000024656 00000 n \n0000024569 00000 n \n0000024449 00000 n \n0000025132 00000 n \n0000025045 00000 n \n0000024957 00000 n \n0000024836 00000 n \n0000025527 00000 n \n0000025437 00000 n \n0000025347 00000 n \n0000025225 00000 n \n0000025924 00000 n \n0000025834 00000 n \n0000025744 00000 n \n0000025622 00000 n \n0000026467 00000 n \n0000026657 00000 n \n0000026714 00000 n \n0000028971 00000 n \n0000029116 00000 n \n0000029230 00000 n \n0000052297 00000 n \n0000052534 00000 n \n0000053121 00000 n \ntrailer\n<</Size 118\n/Root 113 0 R\n/Info 1 0 R>>\nstartxref\n53666\n%%EOF',2);
/*!40000 ALTER TABLE `capture_constitutive_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_identification`
--

DROP TABLE IF EXISTS `capture_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_identification` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `identification_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_identificati_identification_type__08e7afb3_fk_capture_i` (`identification_type_id`),
  CONSTRAINT `capture_identificati_identification_type__08e7afb3_fk_capture_i` FOREIGN KEY (`identification_type_id`) REFERENCES `capture_identification_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_identification`
--

LOCK TABLES `capture_identification` WRITE;
/*!40000 ALTER TABLE `capture_identification` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_identification_type`
--

DROP TABLE IF EXISTS `capture_identification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_identification_type` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `identification_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_identification_type`
--

LOCK TABLES `capture_identification_type` WRITE;
/*!40000 ALTER TABLE `capture_identification_type` DISABLE KEYS */;
INSERT INTO `capture_identification_type` VALUES
(1,'Alto'),
(2,'Media'),
(3,'Baja');
/*!40000 ALTER TABLE `capture_identification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_location`
--

DROP TABLE IF EXISTS `capture_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_location` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `photo_ubication` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_location`
--

LOCK TABLES `capture_location` WRITE;
/*!40000 ALTER TABLE `capture_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_not_applicable`
--

DROP TABLE IF EXISTS `capture_not_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_not_applicable` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `not_applicable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_not_applicable`
--

LOCK TABLES `capture_not_applicable` WRITE;
/*!40000 ALTER TABLE `capture_not_applicable` DISABLE KEYS */;
INSERT INTO `capture_not_applicable` VALUES
(1,'No Aplica'),
(2,'Sí Aplica');
/*!40000 ALTER TABLE `capture_not_applicable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_ownership_type`
--

DROP TABLE IF EXISTS `capture_ownership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_ownership_type` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `ownership_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_ownership_type`
--

LOCK TABLES `capture_ownership_type` WRITE;
/*!40000 ALTER TABLE `capture_ownership_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_ownership_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_plane`
--

DROP TABLE IF EXISTS `capture_plane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_plane` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `plane_pdf` longblob NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_plane`
--

LOCK TABLES `capture_plane` WRITE;
/*!40000 ALTER TABLE `capture_plane` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_plane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_power_letter`
--

DROP TABLE IF EXISTS `capture_power_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_power_letter` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `power_letter_pdf` longblob NOT NULL,
  `not_applicable_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_power_letter_not_applicable_id_5aeee571_fk_capture_n` (`not_applicable_id`),
  CONSTRAINT `capture_power_letter_not_applicable_id_5aeee571_fk_capture_n` FOREIGN KEY (`not_applicable_id`) REFERENCES `capture_not_applicable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_power_letter`
--

LOCK TABLES `capture_power_letter` WRITE;
/*!40000 ALTER TABLE `capture_power_letter` DISABLE KEYS */;
INSERT INTO `capture_power_letter` VALUES
(1,'%PDF-1.4\n%����\n1 0 obj\n<</Creator (Chromium)\n/Producer (Skia/PDF m101)\n/CreationDate (D:20220502132232+00\'00\')\n/ModDate (D:20220502132232+00\'00\')>>\nendobj\n3 0 obj\n<</ca 1\n/BM /Normal>>\nendobj\n4 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 4\n/SA true\n/BM /Normal>>\nendobj\n5 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 10\n/SA true\n/BM /Normal>>\nendobj\n7 0 obj\n<</Filter /FlateDecode\n/Length 16012>> stream\nx��}ۮ%���{}�y6��	H���x���g�ۀ���q!��ά��F������;v�HF�Z�c:���c�����k��������ӧ��I~/1���jy��o��??�����Ə��<[;�^e�2�\ro����7��o���7�������%C���S.�/��y���*��3��*���������6.�ޏ����)^$x���ǅR���8�?�8>��#�S���P�㍃s�ل-�\\��|?ʸ����ʣ���SI�{i)U��B�o%��Ï,gMm\\2�q\\�v\\?S������%�!>Gg��ql�?F����#�������1��|��q�.8�s)��8��-���7��c��0����3��T9���ʩϟ�{;B�C<Fc�����S�:Z\"��bӋ���S�Lc�����4�\n9�ǣ�&7}5~/*<G��[)�{JI�/�}<g)r~	�U�3����؆����c<D8����EK\Z�:�4k��^�.,Ca[-C��]K��(�=��.�m�*l�C%��4���r�>�����q�z�q�8v�k�ۆq���a�.e7��R�ԡ�!}㶡�1�����Br�qۡ����j��Y�MG�]���q�S��|?S���C��0������e4aXg9N�q�28k�:T����gLA:|���8)�9��{�����uؖ=�P�<����$��gǨ�ѩ��*�ja<nh�裟�)�����3�7�����zm<M�u^;�á���{�=�si>��1����I��X������*k����a���>�ܷЃa�#�Z�x�>��pr�q�.6/焷|�_ǎgP/`�i��G�	��>�C|�)�z�|4�hO>Nuhw�z��f=�CT`�f=�CR����9d7/���g#�CSӯ4��j��[vMQ���P�/oP�ѯj�a�ٸqLn�����y�ЦZ>57�#��(����G����ic���a8y8�>��$�õ���P/s�÷ej��ù��W2����7����9���m�)�n\'y�<��=��=�Q�۞^k���\\nWz���t�9�q��\"���^��{y���e�ķ���*���ӹ79,˨]��ׅ,�Q�\0^�L��\"\"S7�	BY�,��?�D68�ly�j��9$G@�e�y\0���p��\"�y(�-��0�$x<AZe�ч\n�Y��.�$-F�c�J����\0�%E�Սy�\\zl��8��̇�>:��lK}5�<W�EOF����wƑ�|b�^LY�g�[�7{�����8���.��m��E���t\"V���B��<���HA���1����TMTk�[�\\�Ų�Qh���/>K��\"�W�2�ͮ��\\ml��(\0�I0�����]�U���u�r\0Ý\n(�\n��A�B�u�\"�)y0�&����iD���S]�J!�֔�����5e@U��=dU�TE�ؓ*�R�k�K����Y�� �is��H���>)��瞨��&\n�衺b��\0ΜoQ�����G��(K킄�\\rv0B�E����T�BB��B��!(`���l!�I���U�����?����~�H���t�I�N�@#���7�Nf&�p����Yc�\'�HF���R�mK_��M�j;t�q��ń^ot&@ԕ��X.Y�F���?���&��x9�\"��\ZD��`�W���z�8��tYx�h˷��n\"\0\'��8Kz݁_�^����5j���/\\ӫ���l@�9\0��S��C��I������.�WY�$��N<m��1��ޤ���ν�����}��O�M��=\r�7�/�%/��������y��������y��������y��������y������?h�!���A�㋼���%���O?����舡���9�?�fxI���Fʗn/����uޏ\Zu�g����`�Z���1C�p)������ǰ�|�n����kc~��~�|�G9ބ��4,:���P�CpX�#���3�WA�j�c��&6+.��3�[ ��M�K�8�<���j�E2T�#\r���ڋ�<c>���y�$>�]y.;�. 6ܟ��UXBm�܆8��T���6z��\nǰ�8^��k�����IPD��;���j�آ��hKU�<Z!�-��,�[��D� ��>n:|���(8d�=^��ឳ�_@I�����ыPh���K�i8�����2!�dT8\\m)*R�\0�8:����\'�!��	0ə��S�C����8��8?���7�H\Z>Y�W��p������J��Z!B}n���6�~���Q?�A�d�+z<Eq�G�=�c#b��F�(B��#�*���\Z��!�qZ��r�>N�0E8$h���\"-�NP�����\"���n3nI߯�xo�����D(c�\\*b��FF�B}�\n:��x��Nv�R:j��h���u�!�i����U�gzH}�\ZF�P>Ի紵{H�:��\0������Tt���z}HG���h��\\�w|�a�����r�\'l�\"�W�NJ$�aA�\\��X�A窱�����Q	_���4� t]�ytW\ndC�~����������eo8�L&�����Z��ͤ�x��1��(��u18	ܔ�	�̀�B�ٝ�k��V�C��ٙbP�u���;c�ّC��5\0ׯ�6�&q�����b�\0w��\"l�!��]F��Cl�j��b����\\p����\\���t���n�������7�����?������������O�������/�_W���*3\0qh���?����%�?��&����o��y�������O���?��>�ß��@�]��1�tH�X��~�A�31i�x�O���EE�?�g$\rn��V��L>�z?|�����$�i�!�$�����8�)��rٔ�|}9#�v���ۚ�A��B�\'\nPd���K-A�\'G�.�\\_�US����v��l M�S��J�8��iTiB�J���u{�d��,g7O�س�УJ��i�?��!�s�����i!�nx��9�qC�&�U&�$�L��N6*#R�w���y��ī�h@��j��LN����y���T�y��ܬj�[�~��8���Wm-�Ʃ��)T�?��7\\cػ�N����F��f�%@2��\r�/2�D-͇B�1[j]\"R��u2��#�:Y��&*c8Dj��FMDs����|\0� R��\r\n#S_r�B�%2�\"v�TB�\ni�AppLr��dA0\0�w]�`(\"�.MӤ삓��D:GzZg�G���j��b�\'Y�G�J׈Mu�M\'��z��Q�u��Ǘ�\rg;O�����G�@EYIZ9&݋��q��hȝ�Ft��4jѹ@��7:iȤ	��E!��NC�Z��\n+a4^�?�5:ʛZG�J� \Z�\nl(��W�L*:MKd|1�y�7;VM�G�4M|^����[Z�b�\rnن\Z�����B�,�����C\'���p��b��v1�쟡\n��Px|(c�(2�5�L��q	\0��\0�`S���>�\'�S�u\"�W�8P?@�\0��P?@�\0�_��70>���zd����-2�Q�?H��Ebj�T	Xr�~��dL�12�\'�ΰ���oט�]�\r҄6�I!JDBW�� �eQ��=A����m���1��%����W�6����A5�H�Yi�dPdW2(R��B��t�3QSdW2(�W2(���dPd�v�����n.�[ٌ\0/Z!y��ͥ,�!2�M�N5l\\PW%LT0ts�����礍J��������4L�,ts���E*>�+��No��&�qr��I�����(��D&%l\\0�9�������RI!��[�\"$��@T0�9q�>�	3w��t�3�0�4��=7TP������T�z%2�<d\"(By�@Dpt���S�E&��x����@�Iw�W+���{�x�He�2�@��*�i���v6��J������#є�	���}�	g�$�މ\'���cX���0�0�Z@!@A�7 +S�����`?KeA��nǍN+(D��4\"�Ӯ6>��MԿ9s��?M3�#\0d�>�ǇBC�]�G���s�����Qb0�GŘ��bt�CC\r�ˡ.��wҫ�;�8��o@����0	��Ĩ�~�@դ��!n�@��T?P�@��T�u��{#7�K��h��f�ft�Fl$rS���ď��S)q�?�m.M�s_\n緔=����\\���WB\Z�N���Γr�5h��R���Nl){�U��R��Y�\\��\\�s��Ɩr���\\�l)SzMZ�D4��h�Y��n�R����R�T��0�TGS5+���tV�M���i����R�Af0�s	�Ɨ�g��Vn<͕��K%L�T�u����4W�tɖ7�T<�2_*�:�U��4W��B��X�gm��ųD�F�J�LsO;��-�0�x!L��]��O�*�w�T,��DbL%^S�w�\\%^g�J��r�x7�UV�0lT�QҮ�d�ĝ,�wxk\\~���c)���&q;A��#\0)�������\0@�A���s��f�@�h+���?�R�i@�A�`& JlP`J0=�A0N��L)�ɔ`�`J�]\'����S�[�I:w?����QՍ)M�FDiz>��bIs�˛����4���9͋.�O3�\r4�Z��\\\0P�\\���BTi�y0$��O��^ ;��bf?��`���f?��`�/��7ȑ�����C�+�N_9T�J���+�J�?��c��DA�\"����i���OA�H�Zž��H�\Z�J[Z�j)R���1��[�m�����mL,�������K\nMy=c�V���o�����}�1��엲/���$g��栽�1����kc~��>ߘ��1��19�ͥJ_y=c�����o�����}�1��~)���8�\r�u���t�-n7�߮�����|cj�Ë@������e�,nU\Z5�?��%���O��p��u���;���tҠۗ�A�\'\rR;�A��G;p$��:�?�z?��ƙ��tF=H=L�x]�i⹖2��-��O\n!��7�3?�_���8�x�8�x�t~�UZ��~kQ��l֓V�)9�\\/�\"sڹ^��A��\"u*��H�vʻVR+��^bQ\"u\Z����P(�^�l���e&\'Rc�ka�Ԧ���~\\d���+�Ej�&]�ݎ���i���u$n�ܵ,��B��E��7kټ��M�؋�ߙ�.V�TFo�p5R�Z�f��������TO\0���h\n\n��\\�\0݃��F�@�s�\r�-�DY5�o�R�B�ԃ��q��#jL@oQ�\Z�E+`(o�A�e\\\\.V��\Z�S�(q����:���+\'�:B����PGh3ȃB��`*u��Z�U�՗>�RG(s�*uh�Z��̕:B���P�#�:kU��W	l�:���.�⌾�TG��F�Ra�j�ZaF��VG��^�C�[;����w��V�|��ju�+3��ു�b�ֱ�u��\\Ǽ��X�[����\\�c6��u�F��:f�P��ՍT�cu�V�c\r\r�XCH;�`o;�VPŎ�=T�c��V�ci$U옊K;��o;�-PɎe3T�cY�V�c�!��X�*�;�+�� ���� �����Eϟ��g�E��C��tx����%x��k5qL�U\ZE9��r���,���3XL�4��[�\0\r��G>�z_���|xE1[���ꦵ�@]�����|��d�=b�F�DjJ$��Nd��c*[�� �#FeS-Ez���.{V�*Y7�0���\0�M��Y11َT��Bdg.gWod6ֳ��l�`�\"�E��}��mϊ�͜�ٷȆ�?L6=�H�Q��mR�`���k�@�f.���ɺ��?�����-�>$�h��a�M�hN&�T�#�*5�T�uP�.U�Y]�~*§�r�d6]�>�Mw�X�O�X��*��\Z�p����V?ٻ�\Z0�7�b����%�$��u�LULL�\r`���4��Pv*�+E��Hy��`s����X������r��є;�3�(n\ZnuN����9��\0�!������ɑԄ��YۜYR�LG��=GW�Щ8o+�H�^��\'2�4��	2�`�:���ii���%L��EjH��!&����<�\"uD]���DkW�U6���U�� RA�2Qn�DAGo����Pż)�H���4\r@$�\'ىȆ��.�E�t��¶���Fe�(�`=C���-^m���|��Y6�\"/�Ϩ��M\Z5[R�_j��\\��j��y:�B�Rif$xg�8]����e9Y\Z��i��m�J,O�����L��\02H���.\"\'�\"SX�F&�\0�EHI&�0u��܉�_��<�����x?����޿D����G�|�ch�-�����,;.�$%QP�!�D�`���F�ǆG,/L�����Ю1,��+��9\n\'�2�0���Ep�ԲV0\"��V�,�]y�H_y��Z_y��_}�1�R�b^\'�,	�ھ\0_�����gI<x���g�L�\"���Cg��ag�7�x���m�6(���/<KB�f��0\"��%؎֯<K��<K���g�f����<+ՙ\rN�k3_���,0�6����G�ĳD&0sr����F�Dj�{tc��N Z���t��is�F��\Z놹Ҋf�����@_�%	V�h���\Z�h�6�$�h�lν��9KC���l���fIO��v%Z*[D+�I�l/��q�<����o��_� 7�����A������*�̃��:\0ӧ�0�r{�ZSq-h,�����\\F\0�cٚf�q-�8�T�X�q-�l�Z�{�^�r-�$�Z�9�Z�M�k�ׂ�ׂW�b�I�-��r�4��I\'��\'�Y`\0�ŰA��\\@D\Z���lf� ��В�p��Յ���!\\����?`���������{�\'��Y5��0eѶ�O~�o���G�ł\Z=)��8J��zŸS/��?�]f�DfK��t��u�Jd��\Z�Kd���I�H_I����k ]Z��B�D�:S%����Xdי��f)9@��lM6H��fm�����԰������K�w1�\"�|���Ă1)[8����D�ʹ�8���V]N�s��g�ەs�~�\\\"sp�G�ss	jJ�k����D��g�\0tb��0���4,}B\'\r_��S\rx�����|����\Z�U$;�GA�Dj�� \\�τT.�]	�H_��D�:M%��4�H_	���}�ؙp�(�z\\ma���Ƞ!�#n2���C\'�pqw41$\0�5r@ab�5����b��Zz�m�b�^t\0�C�\"�=��t5і̀�nŴ�-�<]/]�;�-��-��I��}�n�сn�?���t�i�[p�4|��@��y*�wҜx��b� mth)D��t�~�;�5a��\00-�I���:O%�;1��&t?��@��t?��@�/��7FҾ�b=F�Zb�<6R�U�8�.�����+)����U�]�ZO���HH�d���,�\'?��Jd���hO�����\rL��*d\"�%B�ݶ3-��L�Br��k�PM\'odK�be��\n�:;%21ܴӭ��*]&�%B1��$�%B��1�\Z�\\���ĹB6W�����k�TR�F2{�F�K�����\'ds��n�K�b��\n��pT��^���k|�P�p^��Ȅ\Z��+�s�&5�+<�����n)��<�U��4D��̂��^а�wU\"D��*��4�~�NT��u�*�׉*��(d�u�Jd��T\"��S��\n���]Y��m�+�̺�|=��@a�j���Ce�����ʰ������L|�{��Q\0�b���<�@lh\0���5u*n��Ƶt���y.h=����h\'\\08)��,1[#\\�&\\d�tA�P���s���\"�4Y��@��ׁw�W��(��-\r$�2�9�pR�|��\"X\0�� ��pCZ`\"�g#�\0��\Zan��d�@�e��XXH�@y�����l������ư�{#,��:ƽ�([��R��\")e��ʀk�eFZd3��qQ�ܵvد7��ϵ>�|Y}n�ϛ�������f}�y�>��]}ެ�>o�G�wSW\"}��\Z*rY-2�[�[�n��r��قm�l.�[��s5 H�p!VslCDsy!xI9�2D�������.�W��SW�(ӷ�c��s���Ǜ�Wu�s���*�:Zd6��肽(�w�eꪔ����z�H�>�4r%�h��⟘]��΁�e�����0Z���K�.���cz%R+�;�u#�Ȯ�V�\\��T�#����I�Ja�����q�����@	< �\r�p�R��:T���!�b�\0�<�@h��j�Um\'ɂ��dAK��X�˂�e�@��Ȓ@�`r`O0M�V%O�%��,�N�;�SV�y�SVp3`XpG�`���Z�\r�\nn��%\r��4p����&e8nE��+�	Z}�,�>oE����ϛE��uQ�y�(��,�>}Q��mM�~�A���~�A�_bo��R�z���\'���Z��C�N>.�Q���ǯ7�!sƥJ۹Ti̥�7/�.%�+���)aI�n��R\"���:����L���N���ٵ6�H�N	;��ܶ�Ud7L��0�~ä�Mm��o�T�ֆ�\r���e�\"f�O&4]���w*�疲D���W#R}�\Zw\"U�uz������.D�����^�vk�#R\"}!R5ͅ� R5ݥ��u���^�v� �L/���N��tJ�]��D�J�j��)�]�vE���+�׼]�]�H_����iҩ��N�(�s\\m9~�-$AC�9�d�:(�N���2bH��:`-2P�\0�ڀN���TAA��� U�ۋT�@�`, UdU A0?�%��P)1b\'U��T���Z��(9�T����+��}����pp�ĩ�s��7���p�~˩�\'\"�p\0������z	XD���ba\Z�~,��{J�cT����ӌQ�$�Wc n?������n?����/��7�/-��ܦ�\n9=�c�?����L��\r�|6t�h�.��\")E݌O^�X����U�K�}&2��\\hàT��o��a��V�p�R<���9�\"�����T�;�Rg�,���Y�]�Dj+���O)�6�[[�.�27^+\r�,R�n�M�����ڴ���,�9�H-W��Y(��s�o7u�̲��mLeͮ��r��,+/2���ʼ�N=<Y�4��R\rK�~&�|�m�埛)�|��O��ֺB�3�{U����{�S�8��x�\Zg���\"\ZzD�^Vl�\\�3�>��Ŭwmj�E��p�8#��\Z���8a�R�7�T�����8!ZZm�8�����6�k�m����6tZ8n�G�sv�-�.hdON�&Wm<�Y����I(����+1㪹]1�����<w���D&zT�;Ǽ��zD�Y@M�Y=s��,B\'�wb6W�V/���݊�\";ks`d�e�^Xs�U�<�\"uޱ�\"fC�B�#2q\Zv��\"5�M��е�Ɗ�J�n�Ԋ�\nD&��Ed�*ٮb�-�Y�����7;V��G�dV>��^`�+m�J6?]�O�v��B����������\'1\Z�5x^�/�hh�94N���\0%�Le�8S����\00X	��Đ�x�B�h��WBN?8����N?8���_��;4>\Z�m�=4��nO}����C��8�O���(ϡq�?�%9��.�r�`ё6��_t�����\"#��R��X�����A}�#��(f�#^�%31u�u�#����\0��މP�WFUf#��Pub#Պ�Rz��sc#�͑�H5��Z�@i3𼑑����ufD<����H]�הlX\"W�/���c��pX�	����n&B�ʰӑa�6Е��e����`�4��N�,�\'\\��ŉ�I�/eݙ��m��\Z:�`\'\Z�qa��6n\"b9)F\"\'x�~��T1ꓤ���X�ڕ��vt�/㄂�L��ٲK��JE����E�E�9��u�\"����9�I;=��p�tx�y�Z6jB��L�X�dk0�	��@���FPhp�K4���mȁv��E�\0t�8`-i\'@�����<���2���#ش9�I���}\n�	�7�*uR���U�$�U؝�����Z�8<�����M�Ht��(��n�`.�LT��7���艩,< �B�ALea1��E�T���,|#��p���W�;WY�J\\ũʷE�A���A�_\"�w�!~K����\Z|���+��J��ݭ�bZP1�m+*���sM��-��ȋ~a�ƙFWT��P�X�z)z~��Wu���W7b��*�q�!^���\\�B�oֹZh��JŊ�E*����ת[gx�q�SG��3Z\'�Y-{�T(q�Ѹ�U���h��=Z���C��z��״\n��7�*Ul��6��Y��L�RaR�ߐ@�R�����L�P_�WZv^lXȦbӷ��̈́��Slsq�iu��Ȥ�MF�`�h�Hs��\0)��5z�g~�*�Y-	�\"�*Q_������g�&��QӉ�*ř�G���ܟ�4 E����蕼�Z��\\��U#��\"��OE-�/��\'�Nq\'�O��d*)��[dT)�\Z]�\0�YH�$cMq&u�A�8����\'}c/�t���+8ުT�N���lv�o~��9�xN�\rM�	�ՠ3Z]��.�a�Q7�QQQ{i����b��\"���5J\"����h��a�EjI�P�3\n�g#]���N�S�#���Tpl�`�Yd���Hm�e\"���M+�9Y��3�9��,󌁌׿ٱj�?���	p\r�܌��?��=�|�J��Y6���!s%�	z�I9��-g�ͯb(��1d��\\v�� \0�P�z%��*�@@4�f8���`%�H��),�l��������?0�����?0��\r���I��������mWl;Z\"��A��x��J����\'��=��4]1:w�|�E�4<U��J>�<7�k��Q�LZ�2?}�u�ʷX��/g䖯�U�B����}!F4�b��p.�(��%��A�(�t$f�\"�]Ø=J���b`�(�~6	%�=J�gߎ�٣�/�QjH_�c8_أԩ��G��-��=��=����y����EhY�{�+{��\r{�Ւ�裈/�Q��(��(b����Q��Ѿ��8��Iq!���)SF<QF��(#Z�qF�q�Օ���_9����1��1�g���3B��3����������[�i[�[��ml�IlLl1��-��]c�.|qצ�DA�\"�_�j70ܩm�r�!T����0w��7r���s�أ���ޕ\nl#%��8dw�Qž��.��;�м\r�G˴N\'�8��/�P�#�*�u�~�\'Y�7�>��n/m��\"��\'�;`�<R?\Z��x��W*I���T��LRK��w�zW�WFI}�/��������c�_���~G+II8�0��CK��p�RRj,u���R�=Tү��0���`�2T�t&��Hz���.�p��<\\�����wG���MA��,�ᦘ��W`�=h�uw��>(���\n?��z�G�?�\Z\n\n/A�tj%���E�f�h;i�\Zf���݃Rx��Դ|p��ۥi���a�u	��؟�~�i�G\\�KA��1MyӔ�)Δo�8S�%�)�Ӕo�iʷ�4YQ����!�3G�R��L��Hy�H�gI�f�3�[z���z��ڒUM�ػ;��o\':��b��sMV���N�n�3�v��\r;M喝�r�NU�A��_��?N0Å�pS�F<�(ZB��\Z�a���q�#�S��FN1>D$0�D90�=����@���@�6v%&e&�������̉XLoc�0Sb�0e�)/�*�)jL75��\Z�����Yzؘn(jL�5��\Z�\rE�関�t��1])jL�5��\Z�\rE�関�U��(jL75Z)8�l~GK75��\Z�E�醢ƴ�s�EQ�ST����tCQq��m8�PT��߱W����tCQї����}�#��M�����CI�6�@�6Ё�@A�	ʠ���L\"aP�0�\rxa��0i��_W=��a+xX��\nV��H��W���(%�_��$/��ʲ4�8�|�U�\r79�Xd}���ѝ���Y�<`�Eh�\\=�7�0�$@�Dh��t%Lx\n���.0�`B�Ŗr윭	^\0J���Ν�D�3?��M�Thx���T��ᑂ[�?�����|ʱ��|	&�]���v��$�*�Jt���4�)9	^���\'�	��N;t`��:�z~��|��I�|Kp�:�p��j]-����QOot��E�N�g$ ��E�:g��.���V�D`z1:�e���|,�w���8F���c��T\Zg���H���4u�F���zW0�P\\���EY�������R�e��Am`j�i�+�4��I�i�R9���H�t�����i��1jӽ�\"t(�Ю�ǚ��Ê����#��:n����*�hGÈ-	Tl��aٰ\\q�k<�`,��^�Ql��$��:V�Oل�����ԉ�4�b@�E��h��\"�P�u��mk2(��i��|�vl��X�O`��0C�s��u����5Ƀ��{ٽ\r���D.�����<#z�\\�\Z���b��3�A%����=T��a�a�o��*������al�pVE\n���J���+O��Z��x��C*�P��\n���w�e��2Y���8��ת�e�6P��}�N�\Z���a�\\,:o�,�m[�����h��$��dk�x9i�e��j��I6x�.MkmFw���0��G��к�v�E���n��A��Z*�E=S{��\" �K�z&�΋�3��_��g��N��ɶ��oe�R�Lm_�$�ÌCj7�3��\rI�bĠ,��P��۲u&B�wp+;�L�J=�o\nW��%�>�ǝz��\"� w�������S��1�.w�q�d��u~]�3�E=��S�.���{�gNw�3�~~��g^��əvD�䵗 �b�M��3mOH��}\'���3�-iȳ�w�ӕy�&�D�r�&D=sZ�V��9��-P��B��{f�?�8O��7�dS˴%%�e��+���3�5�\'��Ӣ�9�PO:`F����ӟ�6&��M��;��kWL���$��F`�\Z&�	�\'��6􋤐���L}�D|��0ϼ��$65�yc����̓�|��	̓Mo�D�Q�I�f��9.���$ﰮI�ss6xR�Khy0��v�+r��U�k\06g��\"Ǽ�<8���PB��S!P�\rn��J92��u�L��;�$X�Y��\07���0ì�\'�K�ax���&�0��	����wǠڗbPe�i��k/�x��5���ǿ��W�Kx�4�q�h��\"e����\"��N�[�e�#V_�<k����y��k+���<���[6�i�J��6Z��Z�[��i2�&gO��\Z��l��I����ֽ���J��<Wo׵%\\�s�w][�uO�5�՗��}�x�������ƼZdx f��ު����Wp�xs�#\r\n���]��K���^/�b�6]�ʬ��tIY�:i&��Ι�����Z��wn����ʺDSZ���n����6����Vw�!���6$m��kkFr��\Z�mN�@k�ڗS��7�\"�uP\"�kGΩ�r�	���Y��oqB9����.��Znc��Z�[h�6[�[m�n6�kn:=�,���j+	Wk�/�۶�Y�l���\n5�Y�f;g��Z�f��WO�?AY�8Ds#��f�=�H[�k��JT�n+���R��T�LK����U[ɴн�fqF�hK�Y����ַ4Q��,=X;k�Q�D������.�qj�z�Z����q=�����s�#�S_>���d�\"ks�|V[��nއ!������#Ǌ������2��Ci��]���L@(�W\04\0\0��R\0xˤa{��i�����jx�����~����	`��р��h@͵\n7\r��hm�שׁM��p��V��|�CM+����[ۼL�%�4�$8�Y�����4�O�YA�\n�NjV�~O4�Q۬������KBm��8�y�~Ιj^�O�j�\'@�L��p�V�}�ܮf$�k��H��]\"m���<�f�&li�-ߥ�6ی!p\\�]NΕky���GO�]GR޺\"e�����ҷ���Vc(Kp5{K(\\D���#)I�z<�{*�\Zʤ]cH)�k��dʥH�\\�C���t8�TZW��)��7t��P��Է,R3�vr��K���eV[�2@Jw]&Jy�b��B+v�)�5ޤ��x�B[��)�5ޤ��x�B[�]\nm�7)�5ޤ��x�B[Q��TQ�\rfE���[l��5�$��x�D[�Mm�NP�\Zo�h+vG�yTl�\0;���B�,�bo�f�����>�g�X����=7��#g����B�7�\"_�}7���.��_1D�1��1�w��@�1��Kd��6} �k��*W�v��f�ßT)��0�\rRa���0i��M߶�������������w&�/�)�\"~N�\Z\"�������D(FOA���F(bY�%����w��JZb�D�EZb���X.�%JCq���WY�%���\"�%J�+i�ue�\0�*%�\0���`����$-�RY `m]���u�\ZzW�;��<|����DZb��\'P��2�@E�ʤR�Ri��3���}�g�+���iم����E�ƈ��J�f�@����DꙖ�#SX)l���K\0?�؈����̫j��N�\np-��iIa%�-�\"�U�k��z��b-)\\Y����F[D�J[D�J[Dv�-)�(D[Rp��*6-7�FU�:��-AU��@U��*[��U�s�U��U����\0�0���m�o�\0BҠ�U6]W!����7UU����7���b�I���j���*b�?Ώ�	遷 ~Ď��|�.8+bh�׈������W��*�I8`\"���DR٩���\'�[n��Ĕ�B��B��a�\n��\n�#�(0��KE��*����%0�`����?�`�����mb���#��m�������G����|d��2s)���UDv�*\"}�*\"{�*\"z�*\"{�*Z\r\\E�^\'Q���W�2�\\Ed3݇p��o[xXf��*\"�>7�2���~��*cv�\"�@��VL����jQ�T�^EĢ\\�PRYu���P�󅪜W�\"�^���$�m\\EVr�R��\Z�����nY�u�*\"}�D�%[�\\E�k]��H_��.�z�*�Z��UD*i��Ȋ�ֲ�@���u����ԗ(.�\"�|��\"+\"[��Y��|$�\"2��,Kdk��A����|8Y�NV|�)��|ld��w9o�BV��mde6c#+��W�2;g#+�7��u8���@D����\0G�($Zle�6�RL`1i0p{Sv`<��\0��fk`d��OΝ�������8?.G@���L�L��BW���\"�ƾ���`+�-�V6�J�.��\'|5�Tv��h�\r[!�\0[�Pl��l�@\nleC3��=�HzWȷl�`��=����-���P�A���P�o�;&�)&��7�$��9m���s��Tū_d�^\'#���4�JL�jo�)��x�����4ϓ��T��G��T�:H=7��Di���H#���$i�:�*&�ԉW;9O�Y�lDeVP��Yj���*KڧN����9�^�b*�(̹1��1�3S����SB�yJ��k\"��Un�NL%X=�v�\'�j��#W	^e�1I^�\'����ޣ	e+E������J��@a&\0ϼ[/Ԉ��3���W*��$*i�,���B�%x��3i	�&�3$OHLDZ����<��$�Y7ڢ�r��J�%xI*#R3{�kR9�\\��V>*if����BSfr��`Bza0|,e��e)�l{P~`pn���`3�k�3���3<��G�F�|4���%\n��PN!�lQ�]!�iX{)���r 7���I2!ʭ$k�D��4)k��X�\r��ܦ/jρ���]7g�G$��֐�C�7_�~\"�	jC��fs�*r�U��P�\r�/�hA�͆B`6�U`6j`6���N����7���a��y�7Ԫ|��C:�Ё�<t��!��wG9�7E9B�j��ww�/7K��Y�Z#��[;�ߕ%�N-���,�DS�����B\nendstream\nendobj\n2 0 obj\n<</Type /Page\n/Resources <</ProcSet [/PDF /Text /ImageB /ImageC /ImageI]\n/ExtGState <</G3 3 0 R\n/G4 4 0 R\n/G5 5 0 R>>\n/Font <</F6 6 0 R>>>>\n/MediaBox [0 0 1254 568.08002]\n/Contents 7 0 R\n/StructParents 0\n/Parent 8 0 R>>\nendobj\n8 0 obj\n<</Type /Pages\n/Count 1\n/Kids [2 0 R]>>\nendobj\n16 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 15 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 0>>]\n/ID (node00000012)>>\nendobj\n15 0 obj\n<</Type /StructElem\n/S /Div\n/P 14 0 R\n/K [16 0 R]\n/ID (node00000011)>>\nendobj\n14 0 obj\n<</Type /StructElem\n/S /Div\n/P 13 0 R\n/K [15 0 R]\n/ID (node00000010)>>\nendobj\n13 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [14 0 R]\n/ID (node00000009)>>\nendobj\n20 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 19 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 1>>]\n/ID (node00000016)>>\nendobj\n19 0 obj\n<</Type /StructElem\n/S /Div\n/P 18 0 R\n/K [20 0 R]\n/ID (node00000015)>>\nendobj\n18 0 obj\n<</Type /StructElem\n/S /Div\n/P 17 0 R\n/K [19 0 R]\n/ID (node00000014)>>\nendobj\n17 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [18 0 R]\n/ID (node00000013)>>\nendobj\n24 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 23 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 2>>]\n/ID (node00000020)>>\nendobj\n23 0 obj\n<</Type /StructElem\n/S /Div\n/P 22 0 R\n/K [24 0 R]\n/ID (node00000019)>>\nendobj\n22 0 obj\n<</Type /StructElem\n/S /Div\n/P 21 0 R\n/K [23 0 R]\n/ID (node00000018)>>\nendobj\n21 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [22 0 R]\n/ID (node00000017)>>\nendobj\n28 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 27 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 3>>]\n/ID (node00000024)>>\nendobj\n27 0 obj\n<</Type /StructElem\n/S /Div\n/P 26 0 R\n/K [28 0 R]\n/ID (node00000023)>>\nendobj\n26 0 obj\n<</Type /StructElem\n/S /Div\n/P 25 0 R\n/K [27 0 R]\n/ID (node00000022)>>\nendobj\n25 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [26 0 R]\n/ID (node00000021)>>\nendobj\n32 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 31 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 4>>]\n/ID (node00000028)>>\nendobj\n31 0 obj\n<</Type /StructElem\n/S /Div\n/P 30 0 R\n/K [32 0 R]\n/ID (node00000027)>>\nendobj\n30 0 obj\n<</Type /StructElem\n/S /Div\n/P 29 0 R\n/K [31 0 R]\n/ID (node00000026)>>\nendobj\n29 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [30 0 R]\n/ID (node00000025)>>\nendobj\n36 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 35 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 5>>]\n/ID (node00000032)>>\nendobj\n35 0 obj\n<</Type /StructElem\n/S /Div\n/P 34 0 R\n/K [36 0 R]\n/ID (node00000031)>>\nendobj\n34 0 obj\n<</Type /StructElem\n/S /Div\n/P 33 0 R\n/K [35 0 R]\n/ID (node00000030)>>\nendobj\n33 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [34 0 R]\n/ID (node00000029)>>\nendobj\n40 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 39 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 6>>]\n/ID (node00000036)>>\nendobj\n39 0 obj\n<</Type /StructElem\n/S /Div\n/P 38 0 R\n/K [40 0 R]\n/ID (node00000035)>>\nendobj\n38 0 obj\n<</Type /StructElem\n/S /Div\n/P 37 0 R\n/K [39 0 R]\n/ID (node00000034)>>\nendobj\n37 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [38 0 R]\n/ID (node00000033)>>\nendobj\n44 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 43 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 7>>]\n/ID (node00000040)>>\nendobj\n43 0 obj\n<</Type /StructElem\n/S /Div\n/P 42 0 R\n/K [44 0 R]\n/ID (node00000039)>>\nendobj\n42 0 obj\n<</Type /StructElem\n/S /Div\n/P 41 0 R\n/K [43 0 R]\n/ID (node00000038)>>\nendobj\n41 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [42 0 R]\n/ID (node00000037)>>\nendobj\n48 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 47 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 8>>]\n/ID (node00000044)>>\nendobj\n47 0 obj\n<</Type /StructElem\n/S /Div\n/P 46 0 R\n/K [48 0 R]\n/ID (node00000043)>>\nendobj\n46 0 obj\n<</Type /StructElem\n/S /Div\n/P 45 0 R\n/K [47 0 R]\n/ID (node00000042)>>\nendobj\n45 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [46 0 R]\n/ID (node00000041)>>\nendobj\n52 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 51 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 9>>]\n/ID (node00000048)>>\nendobj\n51 0 obj\n<</Type /StructElem\n/S /Div\n/P 50 0 R\n/K [52 0 R]\n/ID (node00000047)>>\nendobj\n50 0 obj\n<</Type /StructElem\n/S /Div\n/P 49 0 R\n/K [51 0 R]\n/ID (node00000046)>>\nendobj\n49 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [50 0 R]\n/ID (node00000045)>>\nendobj\n56 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 55 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 10>>]\n/ID (node00000052)>>\nendobj\n55 0 obj\n<</Type /StructElem\n/S /Div\n/P 54 0 R\n/K [56 0 R]\n/ID (node00000051)>>\nendobj\n54 0 obj\n<</Type /StructElem\n/S /Div\n/P 53 0 R\n/K [55 0 R]\n/ID (node00000050)>>\nendobj\n53 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [54 0 R]\n/ID (node00000049)>>\nendobj\n60 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 59 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 11>>]\n/ID (node00000056)>>\nendobj\n59 0 obj\n<</Type /StructElem\n/S /Div\n/P 58 0 R\n/K [60 0 R]\n/ID (node00000055)>>\nendobj\n58 0 obj\n<</Type /StructElem\n/S /Div\n/P 57 0 R\n/K [59 0 R]\n/ID (node00000054)>>\nendobj\n57 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [58 0 R]\n/ID (node00000053)>>\nendobj\n64 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 63 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 12>>]\n/ID (node00000060)>>\nendobj\n63 0 obj\n<</Type /StructElem\n/S /Div\n/P 62 0 R\n/K [64 0 R]\n/ID (node00000059)>>\nendobj\n62 0 obj\n<</Type /StructElem\n/S /Div\n/P 61 0 R\n/K [63 0 R]\n/ID (node00000058)>>\nendobj\n61 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [62 0 R]\n/ID (node00000057)>>\nendobj\n68 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 67 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 13>>]\n/ID (node00000064)>>\nendobj\n67 0 obj\n<</Type /StructElem\n/S /Div\n/P 66 0 R\n/K [68 0 R]\n/ID (node00000063)>>\nendobj\n66 0 obj\n<</Type /StructElem\n/S /Div\n/P 65 0 R\n/K [67 0 R]\n/ID (node00000062)>>\nendobj\n65 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [66 0 R]\n/ID (node00000061)>>\nendobj\n72 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 71 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 14>>]\n/ID (node00000068)>>\nendobj\n71 0 obj\n<</Type /StructElem\n/S /Div\n/P 70 0 R\n/K [72 0 R]\n/ID (node00000067)>>\nendobj\n70 0 obj\n<</Type /StructElem\n/S /Div\n/P 69 0 R\n/K [71 0 R]\n/ID (node00000066)>>\nendobj\n69 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [70 0 R]\n/ID (node00000065)>>\nendobj\n76 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 75 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 15>>]\n/ID (node00000072)>>\nendobj\n75 0 obj\n<</Type /StructElem\n/S /Div\n/P 74 0 R\n/K [76 0 R]\n/ID (node00000071)>>\nendobj\n74 0 obj\n<</Type /StructElem\n/S /Div\n/P 73 0 R\n/K [75 0 R]\n/ID (node00000070)>>\nendobj\n73 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [74 0 R]\n/ID (node00000069)>>\nendobj\n80 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 79 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 16>>]\n/ID (node00000076)>>\nendobj\n79 0 obj\n<</Type /StructElem\n/S /Div\n/P 78 0 R\n/K [80 0 R]\n/ID (node00000075)>>\nendobj\n78 0 obj\n<</Type /StructElem\n/S /Div\n/P 77 0 R\n/K [79 0 R]\n/ID (node00000074)>>\nendobj\n77 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [78 0 R]\n/ID (node00000073)>>\nendobj\n84 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 83 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 17>>]\n/ID (node00000080)>>\nendobj\n83 0 obj\n<</Type /StructElem\n/S /Div\n/P 82 0 R\n/K [84 0 R]\n/ID (node00000079)>>\nendobj\n82 0 obj\n<</Type /StructElem\n/S /Div\n/P 81 0 R\n/K [83 0 R]\n/ID (node00000078)>>\nendobj\n81 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [82 0 R]\n/ID (node00000077)>>\nendobj\n88 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 87 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 18>>]\n/ID (node00000084)>>\nendobj\n87 0 obj\n<</Type /StructElem\n/S /Div\n/P 86 0 R\n/K [88 0 R]\n/ID (node00000083)>>\nendobj\n86 0 obj\n<</Type /StructElem\n/S /Div\n/P 85 0 R\n/K [87 0 R]\n/ID (node00000082)>>\nendobj\n85 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [86 0 R]\n/ID (node00000081)>>\nendobj\n92 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 91 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 19>>]\n/ID (node00000088)>>\nendobj\n91 0 obj\n<</Type /StructElem\n/S /Div\n/P 90 0 R\n/K [92 0 R]\n/ID (node00000087)>>\nendobj\n90 0 obj\n<</Type /StructElem\n/S /Div\n/P 89 0 R\n/K [91 0 R]\n/ID (node00000086)>>\nendobj\n89 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [90 0 R]\n/ID (node00000085)>>\nendobj\n96 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 95 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 20>>]\n/ID (node00000092)>>\nendobj\n95 0 obj\n<</Type /StructElem\n/S /Div\n/P 94 0 R\n/K [96 0 R]\n/ID (node00000091)>>\nendobj\n94 0 obj\n<</Type /StructElem\n/S /Div\n/P 93 0 R\n/K [95 0 R]\n/ID (node00000090)>>\nendobj\n93 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [94 0 R]\n/ID (node00000089)>>\nendobj\n100 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 99 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 21>>]\n/ID (node00000096)>>\nendobj\n99 0 obj\n<</Type /StructElem\n/S /Div\n/P 98 0 R\n/K [100 0 R]\n/ID (node00000095)>>\nendobj\n98 0 obj\n<</Type /StructElem\n/S /Div\n/P 97 0 R\n/K [99 0 R]\n/ID (node00000094)>>\nendobj\n97 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [98 0 R]\n/ID (node00000093)>>\nendobj\n104 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 103 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 22>>]\n/ID (node00000100)>>\nendobj\n103 0 obj\n<</Type /StructElem\n/S /Div\n/P 102 0 R\n/K [104 0 R]\n/ID (node00000099)>>\nendobj\n102 0 obj\n<</Type /StructElem\n/S /Div\n/P 101 0 R\n/K [103 0 R]\n/ID (node00000098)>>\nendobj\n101 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [102 0 R]\n/ID (node00000097)>>\nendobj\n108 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 107 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 23>>]\n/ID (node00000104)>>\nendobj\n107 0 obj\n<</Type /StructElem\n/S /Div\n/P 106 0 R\n/K [108 0 R]\n/ID (node00000103)>>\nendobj\n106 0 obj\n<</Type /StructElem\n/S /Div\n/P 105 0 R\n/K [107 0 R]\n/ID (node00000102)>>\nendobj\n105 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [106 0 R]\n/ID (node00000101)>>\nendobj\n12 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 11 0 R\n/K [13 0 R 17 0 R 21 0 R 25 0 R 29 0 R 33 0 R 37 0 R 41 0 R 45 0 R 49 0 R 53 0 R 57 0 R 61 0 R 65 0 R 69 0 R 73 0 R 77 0 R 81 0 R 85 0 R 89 0 R 93 0 R 97 0 R 101 0 R 105 0 R]\n/ID (node00000008)>>\nendobj\n11 0 obj\n<</Type /StructElem\n/S /Div\n/P 10 0 R\n/K [12 0 R]\n/ID (node00000007)>>\nendobj\n10 0 obj\n<</Type /StructElem\n/S /Document\n/Lang (en-US)\n/P 9 0 R\n/K [11 0 R]\n/ID (node00000003)>>\nendobj\n109 0 obj\n[16 0 R 20 0 R 24 0 R 28 0 R 32 0 R 36 0 R 40 0 R 44 0 R 48 0 R 52 0 R 56 0 R 60 0 R 64 0 R 68 0 R 72 0 R 76 0 R 80 0 R 84 0 R 88 0 R 92 0 R 96 0 R 100 0 R 104 0 R 108 0 R]\nendobj\n110 0 obj\n<</Type /ParentTree\n/Nums [0 109 0 R]>>\nendobj\n111 0 obj\n<</Limits [(node00000003) (node00000104)]\n/Names [(node00000003) 10 0 R (node00000007) 11 0 R (node00000008) 12 0 R (node00000009) 13 0 R (node00000010) 14 0 R (node00000011) 15 0 R (node00000012) 16 0 R (node00000013) 17 0 R (node00000014) 18 0 R (node00000015) 19 0 R (node00000016) 20 0 R (node00000017) 21 0 R (node00000018) 22 0 R (node00000019) 23 0 R (node00000020) 24 0 R (node00000021) 25 0 R (node00000022) 26 0 R (node00000023) 27 0 R (node00000024) 28 0 R (node00000025) 29 0 R (node00000026) 30 0 R (node00000027) 31 0 R (node00000028) 32 0 R (node00000029) 33 0 R (node00000030) 34 0 R (node00000031) 35 0 R (node00000032) 36 0 R (node00000033) 37 0 R (node00000034) 38 0 R (node00000035) 39 0 R (node00000036) 40 0 R (node00000037) 41 0 R (node00000038) 42 0 R (node00000039) 43 0 R (node00000040) 44 0 R (node00000041) 45 0 R (node00000042) 46 0 R (node00000043) 47 0 R (node00000044) 48 0 R (node00000045) 49 0 R (node00000046) 50 0 R (node00000047) 51 0 R (node00000048) 52 0 R (node00000049) 53 0 R (node00000050) 54 0 R (node00000051) 55 0 R (node00000052) 56 0 R (node00000053) 57 0 R (node00000054) 58 0 R (node00000055) 59 0 R (node00000056) 60 0 R (node00000057) 61 0 R (node00000058) 62 0 R (node00000059) 63 0 R (node00000060) 64 0 R (node00000061) 65 0 R (node00000062) 66 0 R (node00000063) 67 0 R (node00000064) 68 0 R (node00000065) 69 0 R (node00000066) 70 0 R (node00000067) 71 0 R (node00000068) 72 0 R (node00000069) 73 0 R (node00000070) 74 0 R (node00000071) 75 0 R (node00000072) 76 0 R (node00000073) 77 0 R (node00000074) 78 0 R (node00000075) 79 0 R (node00000076) 80 0 R (node00000077) 81 0 R (node00000078) 82 0 R (node00000079) 83 0 R (node00000080) 84 0 R (node00000081) 85 0 R (node00000082) 86 0 R (node00000083) 87 0 R (node00000084) 88 0 R (node00000085) 89 0 R (node00000086) 90 0 R (node00000087) 91 0 R (node00000088) 92 0 R (node00000089) 93 0 R (node00000090) 94 0 R (node00000091) 95 0 R (node00000092) 96 0 R (node00000093) 97 0 R (node00000094) 98 0 R (node00000095) 99 0 R (node00000096) 100 0 R (node00000097) 101 0 R (node00000098) 102 0 R (node00000099) 103 0 R (node00000100) 104 0 R (node00000101) 105 0 R (node00000102) 106 0 R (node00000103) 107 0 R (node00000104) 108 0 R]>>\nendobj\n112 0 obj\n<</Kids [111 0 R]>>\nendobj\n9 0 obj\n<</Type /StructTreeRoot\n/K 10 0 R\n/ParentTreeNextKey 1\n/ParentTree 110 0 R\n/IDTree 112 0 R>>\nendobj\n113 0 obj\n<</Type /Catalog\n/Pages 8 0 R\n/MarkInfo <</Type /MarkInfo\n/Marked true>>\n/StructTreeRoot 9 0 R>>\nendobj\n114 0 obj\n<</Length1 40264\n/Filter /FlateDecode\n/Length 22978>> stream\nx��	tTE�8~��{�/�;�w\'ݝNw �H!I��-a�	I��#;��#*㌌�(��8vB�\0�2�;��踂��̠��(���V�~IG�;�;�����~�{��u_խ�ֽ���\0\0�0mfq��Ϟ\0@�0��nܔ��[���x\"����W4�_\'P��z��u�Ǟ:v3���撅����+�^`L.j^�\n���L��E�7-|����$���t�S�k>�4�u�[�|��r,ҷ\"���`/���}.��-^�n����c\0Ɠu�W�o^S���,�?��y�*�L�����%�+Z*�\'�q���쪕kץ\n`�W��UkZV����_\0\"�S1@���J�X�4ҽP	/�(Ȑ��$��7��]\0���Y�?�`z��0V�����L�!��F��tᅦ���Y+����x�}�0���?�>�x�\"t��Uߛ� l%۱:�N�3�+��\Z,�v�D�\Z��Gd��EΚ26���.����T;�t$���� ƤC�g\0�ۧ�t $��v�s1^����Pca<L�)P3��a	\\\n�`ˏӔ!�h���p>L��f>,WhR��������!%ʇ6\n���_�~�5۴���|�|}��5�1���ݦ��w��:���G���t������x^�����쓭��W�.ϝi�bs��������\r�d4�V���\'����{��a�7�\'yHu�n�vH��B��?���:>����#�\'@S���4ݽ������?o�d��\">]\r����t[��U�E�Z,G7.�O���fL_�����Z�}X\'M:_�G8��0��^4�I����4N�KӸ\0� ���\Z	<H��\Z�\0�|\r�3r����ނ�k1d%\\�sa�\n�S��JX�s`Ҍ�H���`=��\Z�H�g�\ZL��BL7�{T}��%X���!��b��Sbg�JL���fW�8cFc.J=�`	�1nm�Vky{6 \\�)���MĐ�1�g~�8+�,[-�|,a��\na�+1_֢��H���^)+�ۂ�P�X���\ny=X+W!m�m�rX�aY�v2�-�=�[�{Li�%�-��>y�`�_�1,T��mT�Y�ni���c�����t)����a�:&��N�w��t����ӷp�X�e��^�a(]#�6���r�X�uY��ij;X�:.��#� �����\'�\n�b�R�����=KR��x�SԊЕv���1�ù�49����	/�g�/�r�9l�0Cn���3c��xS�P���^E��J8.�I}W�f�uL�9(y�k|9?���1�Z��%�Hk�>us���� ^Hu�|����j�K�ϩ��S�w�1r�~/j��)����)4�$�(uk��xg�x��q̽>#r�0s�?�L=�T�ȋ�N8H��	4,�MMI�\n.,c#�zt�>�t�o�b�N�H�B�G�*�?��BO��=UL�a/\r��>	��$<GI�����LR���.K���t���W��S�oz%~��ǧƠ,�?e�\r�����i���+�=�\Z�Q\n1��%�߷c��8�GM�p�����&��xʂ#���n�1cKCd-���I>�c�<z�H�����Gm3��\"䴛�Q�7���d:��,&��-���*9J>���,��~%,V���g��V�V�^�Q�yO}ϳ=���;U���#?\\���\r�A\'��x?��#\"#��\'D�d6�	~�$7���n�0��R������_�[��j���i.~\"t\r��������Q�7���r��0T�\Z��X�-�v��>}�1��\\\"�vJ��G���S\Z��\Z�^�����z�gkώ����ԇh�x��DKo:Ζf��Ѧ{��ub¾�2���=3�,%��F���ȝ�A^�ߐ\'���\"_a��4��<��c�4�\\D[�j���J;������Up\n��Qh�	��BRxEx_�H8#|���h�b���q��^�G�L�L�+�,}�1hVh��ti������N�6jo��Ӿ�kB�|���L�J�W��^����^����y�@�B�S�n��^A:i��Q3��$S�þ~��g�Ha\n�!3a)��q���W)>\'�\'�m��7jL�J�����1���`1.��ǈV��\r�MN�_	���GI�~	�V�+`/�0|�ۆ|<��N�Yh�}-�@�S��ʅ��ZXF�\'qo�_��\"�J���<��b�t��@�$/�%b�\"�@Ň�ME� 9�:�(ܩ�������h��_c���S�S��g�hݯN]\r��z�d���q�n�%b��P��E��g�A���)�A�9�b6J�;�s;�	9h	��P��:5�h,�,�Z!/�̀9�����\"�$u+�<ؒ�s�\r��-��l��	J��9����4>UD���t&��|������o�e��m�[h�W������=\0%��I&�	l�X�D�0��L����_�LO�*$X�Z�\Z�	xP+A�6�c�$���Z��:��g	��-�l-���\r�j�Z�؆s~ʛ]8o����>{�Z��h�}o�X�9�b��G�ղ\0-.=48W�b`f�F#j4Ou\Z�\Z��MF���k��r/��c�GB�W��/#\ZQ�V+��e��#��=������:�^ɕ�o��!��E���/���`5�͟�\\���\0���j��:#��j��L���D���oFT\'��D��tn�z^��F�҈��f�S���:�^��D�?��7���t�������<��?�z�N�c�zȒ-��o�Yfd`6[\0jF�2Z�O���2�%0��h�\r��(#j�$�DN���<l��d�^:��eiAB�\r�JVK��M��\Z#k�(MF�KÚ����4%;^��2�j�o��6��53��b�Z,��Ţ3i-F��w;��%;����� 	�nl3�Z�2X�V�Պ�k\\V|��kb�l����e�d�)OV����Ć�npg�33XeY\'������:���v��8g�h�U��8�Xk������N�{�{�f3��,��f�e�[j������ry��\0����l�+3��f�����F[:�h0�ث���UΨ�׋�v��w�O���ۗ�YN����Ot�c��6?�[��FT7sn�)O �� �;�\0�`��	�n���Ɗ\Z���X&�;k8(�����1����a���1_�b`f��g��X�1>V���c�%c�WșO�W9���p�2	!?yae�ޛ�X,�4 ���k	x#؅Ê��)��a.�{ʓ��ϲ�G\"�S�������kN6�\ZE�999v�5۟~1�2]yB̅��<�����?TE�P����	�C!9b�	ᓕ-��b�c+J���D��rOy��6t0Fˡ�a`f��h4+\Z��Q|\\�Y�p1vaM��~3�?l����{�SR2J�0$,8F��0�UIf�XA���\0E���\0o�Y��Μ0\n2Qy17�{�S^^	�P����at9T�c`f��A�<�ጴO�O��=h�H�¹S�!�����R�)�y獁��$,�������003���RY)�Jǔ��Ҳ� _i�h���j���gn8��g�؉0�<����g�Ա0q,f&(><�|8�\Z��^.	2�j�7�[�f�����X�l�ŋ�\\�XA��YӦ�NT�:�r䈊��C�JK�.TT/8 ?͋�C�������]NG��&[-f�Ѡ�i5�(P�Ց�M�d�))�\"\'��H34g4%C4�?M2���B�)H��{�	�2�KI�P%T��#���\"�.2gz=�7��4��\'9>���9nF<��j��q�$i\nU\'�oX�V�4�k7\Z�Fƶ�\n��`DԈX�Y�NܣG��zD;�+��E�U\'��q�I!Zݼ Y;��z�?n(*L���#\'!2&i�sˋIj�&�����\Z�1�^x�m[�7�M\"���\'��V�-��K�/;��{���c�d����jϒ{mk�J�^�f�����4:��m<�\r;�ffK���d3b-a�R���f!MKCI}dLdq��&\Z_[fl\nw�|�����ͪ���U�HC�@��fl��M���c�\n�e�ұ�k\Z1�3���8�qr�����Y�j����aM�#ئ�����Ñ����pD�$�c���,��OJQ9j� DN��Hs:D��e|��j���x<YP�XD;��8��-*��E#�Ur=�>�žmnQ�����+�K�uz������(�7$i�9��8g��V5�7yS9����;��X�UveU/�$��\"�E�����>�>T�֔�ۚY�ޔ��qi,�5�^��4F��E���K�^�MI1�\Z����:�JBB�r�D6���0QW�KŽ�d�j&G������ޯz�6+,�hͬ9mm�~q�jJ���r<̪��&a6��(�u�g���L`��e�JP���?�7�ø��p<\n����������T�ő�i;@��O���nR�+u�Fr����dDQa�Ŵ�-h!��$��#�colHN�7D��#�H}��}�³��\"FaL{�l�ޞ [gΩ?��Dh��J�ئ1\r�yW\0m��,���{�\Z�]�Au�� ��cE���w�a:5���.���JA1^P(ƈJLB�1L���*���:��Y�A@�<Ry��eV}�P���E�(�����H;���Q����1�<�����L��f�)[������a�YFFX����}-�=�~�(��9D�1�a�+�9��`b|~A��D�jf\"�H�p�!#:�&I$9/�1�Z���l\nc`$Bi�D�0!����O{e~]�Y)`N\r�֋UZ\0y��ՄI9_�	0�[�O���`iiS�K���Ұ�Ir!���W�}D��QK+���m���Nf�����WK���5��ׄp�4m��l.���C1��N�ƹO��69R�\0)�C�;+Z���\"l�0��Q\"�A�	ϼM�����2}ے���.�}��(�A�����)N.�\'�7�{I�Y��pn�`|O<��&T;��󛱊�o&͏`�d�_�� S�m�r�ߌ�X/�KJ^�%��\"\n3b�I�ֆ�\ZBM(C�t�l()�Z��S��ɍZ�=�(��kn��i�\r�?�Ey���%k������\"�f�\'���A�*F�#1fKjb������f�-d�]�br`uy���Ցp��(�K�8�h30��ٍ�Mq�	[��-Tц�QfW��5�\\�����f?�a\'Lbo\r��B��2BL��b���Fm�/����+�:�+7\"��*���!�:�����\ZOf��z�u���ݛ@���8�f�Ն�~K�WLI�!\r�@~o������pn�^3�B?vlQ��ͣ�B!��\\Ȇ�\n���Mv�K�\'�	}B��Qa`G<;x@��;F]Bd��Yb]$�PsB�����%�yB���B׊�qtO�;�N��ņЭD��q#d��PP�/x1��`���:���R�0\r�<t��ۉN��X�JtW�{\n�)����b��7ro���%��Yy���_�\\Р�S�+��I\n��lH�<h���*�=Z��|����h���F����,X	� ���DGM:$!����Jv>%�@*X\0��a�t�m%�\r4E�;���CO��Jv��L?���=�N���C�!\\E��>GX�n\'���A�:\r=��c���~\0V�>��B7�NtO��\n����P��1#�C�W���=�2}��.B+}�w�;X��;�+Jp$^�F��4���������㛁�Q1i�CB.��R!�#:���Q�$�E?��w�L߀$:�/�����բkB�\n��7{Z�mG�]rB]����to�`t	t��t�h�E�t��G������W���>������\"�9�D���	�h#���ї�/�x��nO�=�\Zm�Oa���B7\r�<t���Чhnǂ�39/�\0);��?�� �4���E1qbv�v�h\"��|e v�1�nb�.�\Z1b�7 �@l�R��͙��i�C�E�ٟ�,����F[��K�b/]��t)��R��oDV��:\n\n���L�[Ѷy��� �����z%i���V�֋Hk��HkiM��Cd8vE+It�{�HxH�K��1Һ���Hk����)Ot�pǤR�Uso�h6��?oJ+\rc�����(�Bx]��%�(��{s�����Jy4�d%N�g0�38��1t\"�3�F�`&�`V�U��;��+t)t\Z��Ŋ�¡a1�*t��]��+t\Z^���QX����b����OC\'�g��N��4�Ȗr\\�(� �2-\'�C����h�6����������͠��7�[�����-ߠ�&�w�G;�/ GD�##Q��Z�>:�A�>�~IG��Y;b�����R�~8�\"�E�<p(�V�K$�?aȣ��on�XܥÐ\'b]��!Nz 0<��K��j���#x%���L.��%⢵���g��\'b~�k1�}���E�J�j(K�/8�W����\0/4��!����g�w�ŉB�m�v�v��D[�\rk��l�_���u�΢3�:�N�uT:GW�x\"�.,:4�ޢFdP�Ld���#:\n�!�%�К�cHM��|��8�<33�E��\"cjV��5&9<^ӥM�H��k�����	��C�t+.]f�w���g[,����������6Ty��l���\0hJ�x���g�IY�1��G��4$K8�J!^��ۊ9@�ANU�;@�μ���(��,\\5������q:��#���9��4���.G��S��bz��c����tQ��Ӊ�ѵ�ͫמ��i�!X�iֺC�4/E�&\Z�4�Vx�Ӽ�je4�Q�$@��\0\'!>p�\0�q��>��4�\r�$7��GPh��U\Z�q����O˘x���0.��j�T��kJ޸a��Y���\r���X���3m҆H˸��ȸP�ȹ?=�E���k��ճ���&Z�u�L���4�k�3����_Y7��UV��ղ��XY� ��EO`e����YYxY�Y���]c\Z��U�=�h@�mB;~�K^5���Ȱ�J�A4]v�1ސ4E�$��XT���,\n������t��ʑa�A�;%c�-2��֯]��%㔿��`к���_�c�U\'��֮�I̬IV��]���&֤�5�h��JVa�(��,�����i�s�}��fA+=��$r�:X� $sjfQ��қBѰb�bm6p-���j�j�㠼k��֭Oc�X�����d��%��xo������ϭm�	�0\Zm����_�~	�%Bq�\n�<�ו��qA�f\\P͵!�6�{$A -W��7�a�Z�b��v���fG����	L�`Fh��\n�2X�~���\ra�: ���B78z�/���q?�8�?���Ak��d#���\r�͍0��kȃ0�(�\"�!�7�C�\0�C8b8�C~��\0�E���G8�A�/�AK�aN����!ˡ�p(K�*8C���!<������\"�H���a$�1P�p,¿�88a5�B8�R�`$N��\'���9���χq����W0��i0a-LD8&���΄�gAM�$̆)�8�\0�\"��i��A�\"���$\\��36�,�q8f��\nMP��.@x1¿�|h@�\0� l�.���/`�����(�9,�&ėq�����1���p%��`A�3X\r-��\"�k9\\�S��zX�p,Ex)�O`#,C�	V �.A�/����U��թp����հ�5�>��fm@x�����Gp=lD�6!�\n�!�~����r�7��\r�p\\��f�\n�-p5����O�\Z��µץ���9�\r6#�[��b����p�;�-��7\"�%lCx7����w�-w�v��\"|\"�nE�\0�����{�ܖz~;�_ |��G�v���\rw!|����/>w#L�=����؅��K�\r{��ԟa����]� �������So�o��Or�<��0�\Z���1�O�o>��ބg!���О�<���Ё�ؓz^�N�/�^�/�>���~��B�?��G8<\n�O �#�6�:�����<��O��7�p�5x��?��߆g��\"|�����߇�~\0ϧ��1�Ë�#�!���#x����W~�\"����38��|���\Z¿�S��_�u���$���Kx3�\n|o!<������o#�\'���4����R/�x���_#|	��c��q����>N�=pa\n>A��2�������2����L��Gd�����D�v�L��?��\'ze��~2����s���92�#.�?ʐ�q����e��ϑ�ǹL?�e����2���K2������+�������v��\\��cv�������?,�_�@�S�ş�6�0J�lғ��o��e_�(9r�f��+�y��Jg3$�5�������dBhbaP��_E�*T��:9d��]snN�1\'\r���N��#_&�F��e)��M&YXo�}y&���-t�q��E���\Z=�:�|�d�X����ι��e�e��Y˝˼M�M�R��e�-�۵;�=��75o\Zߵ�z�4ZF��ڋ$P�Q��>K�_3}F	[�{�>��\r���z�m�D*�\'�_����L�.�謳Y�Fљ͈쩳�E�<�0aN��(���K��B����<�\'.���7�O\"dh�j����4���$�L��wjB^9Е:�AC�\'Q�����Y�\rgA����o7;�����f��C�c�(��*^<�!K�+-q��N�j\"���,�UZ2�&�\"�Z��e���бn����}c�O<|��?|����D$��zޞ��;===�<v�~rw�/�:E��_.��c_����B�\0�\'�\\8�t{g�Y��I����UĠ\"�ڭ\Zѫ�AE��4�NE�j�t�4��YH\Z�TD�\"z1(H���^oZl�����E�t�p���`\'T&���FA��j6�$�A3P�Y�\n��!��(ٕ0�(�/̼d�����dHd�]�㝲Lg�y��/�1t��Y�ȍ�i[�C�ۭ�1���(*�(K�� rbKC�Z�ȶv�@c��x�4ۅ��?��+��J>]y��VQAl���-����V���oE�St�+�(L��\n!��B��+�Fn#4\"M�aJ+L���D�@��B��%?p�q�>���f�%��g�&�zU���xii��90l%��Rg�&���}��g�=��3��{P����{�\"��{.���C�C����d�<bW�,Sz��*�eJ��l�*��\0�U3�F�r�΀��J���0[h=]��p1�F�a®��b>!�����ƙ�*c�kf[9��m�n�ޑ���gLo�����YK�O�28�YY/Y�K��b5w�Y��e��Z,ք�����*���E�.�I�X�l���U�-�(�j��0m��f�0�Z�a�C�����y���O��`%�!���^r�`L�+���ȭ��Π8:�䩴8:݈u����F:��|b�nP\\B�d�!�U9�,\r6D�$��3�4���nd���\'L\0s�ł��4�|ڻ��D.�f��K(�Xn��E1���e3V�bkh\n,�6?+�(���Т<�������t>��m���ݽ�u?=Lt�n:�B7i��n|��;;�U���ݳanϙמ�i�\nӌ��%�\n��F�i	˳f\"�Չz��QS\"�M浂@Y7O���J��>�n���0��#�P��Jr�K�%ݡS�Ӎ�+��>9U>�:^9E>�ӳ�����\'\'��Ս�N�I��gm\'��U��C�N\r\Zmd��^�,���s�f���p�?o�>��{Ϸ]�>F�B��%P\\��ԀRX���1:���^�1��L���R.�x�pՈ�R�dz2��H�1\Z�L�=�R�\ZH�5U6�T}�N[��\"U��ޢVC\r�*!���*s����4�5����N403���l��by��H�X�$o��/J�i˧d�Nj u�V^lL��4���O�^4�f�\"\rzIMf�N�՚�iLZ��NX�]ҚE��9Y�ML�ϑ$]�F�t�U	=�L_$(�� 1!Ƅ���0�V<\"��\"�IkM���L�v1�w٪=��Wi[�T�3�o�Ev��?�I���+�<�S�;Yu�R>�[�A�8N�-�<��:\0u���g-�>�ER|会�qfM2g�e�Ω���N{W���Z��k�����߮�t	C��:Q�\r%�SZU��,�:\"��D���b�\Z�@K_���?�}׽o���1>7P*<;�<�3��!;\\zӍ �_��@^�A6�7`���FQ��,���_��,�V��\Z���5j�]z��_���֣��<��??נKx���,{NA������\n���@���=�i=ד:��,���Ә�RנROD���ؙ��h#ht��\Z�z\ZcKͬh�|��F{��1S��k2��L��M,/��똞9�1�c0q��R�\"��%K�Lz�+3�p�+u��s��hr*a�6yc|�ܴ9�,��nfLL��S�H�b���bǷ͍\nf��*p����\ZZq��^�m�r��@b��AG�G��;�\nJma�J���A��pI�0&�c�J�GQ�Ac�_^�p��[.h�ݶ����>�f�5���KV\\;gĬ۶�<&l8�r�C��O�.jo\Z\"̰�N��r෻�������4�ia�3i��:���w�O�fSB|eB���|��2٭p]�v�SzTx�|@�4?o>\n\'���m�سm��B�f�� \nN0�9.p�yK˲b��~�p����n�\0�m��%���OD1�Aǀ\n��Ѐ\nيȟ�c�9�^�Y\'C,D��꠻�Aw��P玅t�25��8��9��r݃�����\'�)c�ÄQl���5������U�M������Xn���3=����5b$7�ĞWZ\"��1����ag�Y�|���g>9���]���O�G\nG>U����x�O���#J�|����%���n?�rѮ[���꧇z�h{�ݥ���~��\'�&vj��MAd�Ӡ�1�N�z�!�˴���!C�L\r>����\ZC]9�N\r������d��F^����,��N��)�O�3/�Y��9 I��T�x�P��3�v��y��#Ŀ��p�t𱞪_��c}��f3��^�}����-���_�p�H����쏄QY��\'C�9�a9�G{�b�0s�_O��=�.��v��	Mvײ֏x�{!���mr_��.0#���e���7�25P�D����C?!���:U��Ӆ�Z\r[�q�����薹�f7��\\|.�[��L�j�\Z�5*��Ψ�\'�KV�?�X]�c��v��	W��Bf2ך�̫�����`��r���� �^UeEcq%�k�JY@ۺ4a^.@��gH�wvU�VfFu]�OӳO?ݭ�v?D�O�tO��<�Lw5��@j�����T�j�! 2ڜ6����pPq$�L��L@���[e<8i\Z�W���Jؗ{��W���2�/\Z��*~$���9���q?Q`��B�v�qIB(�n�]���:�pN�da�v$e���Ɠ���c��:fg�b��1�O|�!CW�b��m�Ɔ�k*�{�%�\n�B��Rڃ��!��O=���gf�`?K�\0��hA!WK�1���j���������;���X�����$���ڗ?mTD�� �b�W��s�;������K��4Vl�,(��+0*�M�\n�)�L\0��l�&;�2\"�\'�0��EKV��Buz�tzj0jX��2k�۴�Qe`*������~��ls���a����6�P�qe\\@ݿj��j889�8�1�a��Pа^������C���б2,&S�`/�r �.%�_ؙ|������!Zv�i]�\Zu�x�@X[N��&XUe�Ҙ�.��*�*�V���u�����+M�L���@1j.����-[�:#�t�a�i�F�M覘�X��;����¯�\Z;�Z,�%�$�3�̓%�:�����N��e��l��l���vj?Hw�T�!�t]d�^�ޠ.��뻄��J��2�Al����v�g%0ڀr�O��Qd��:YW�D�u�CR��*�쥻�ؘ����tc���10_�/��D#���J9��õ[-m��/��2zE��\n%]�M\\[��C5I�\r�[01=�u���\"�;ko�WX\n�|wm_y�����{�04��o�U�nD��\0l��F&��tjM/��G�a�r+\'a�$Bl��<r�`�w(�G�C=u���K���O\'��%|wv���C��߆�7���}_z,�\'��d��Y�Cv8�n�_e�at����}��,�����Pv�6-k�;᫗��ȳm���y�|�ot�Aeo� �s�zg?-��вNU��s�Bh�<����E��MW�*^9�哖�1�ײC��Z�-�4��Z�I�U�VUZ{�`k����}��=�U����\r��YT��QխJ@��;���v���F���� d�C�D�;����2������9��V2�e2��Ξ}O�9����ֻĿ鋟���-�YA�~�����������dϿ{��2��C�?��G��\n�(S��!����ؖ9h�\\�P��!\ZM985��Q,?{��g�]�%�Sg����(�_K���0urZ̝N�Y?�|!�?�Ǭ��Y�qs��1�����\Z��L�ӷ�\\�Iz8T���6����[Lܔ�X�)��aS�ĝ�\Z�g+�|\\>�C�:e��\r_��س���{\Z�r]�\r�A��eߊC=�ݿȶ��^�4��~�mN\\K�r�U|�v��؇��Vq���=�Z�М��lfL���U�ޕ�h��W���=��e6���_&�}k���?�Ɏ)�H/�}���H�29094�87�\"�F�Ѳɺٰ�����.��Ϭ2Ν���٬6�Io�Ӱ�e��m��$y�z����q?�:�q&vX�{�n�r��x�V�.�s�d0WN�M���R��%jTN�ƴ���\Z���[�ך\'��zT�����e/��^�s\r�4{EF���Jz�{OxһL��,�Ɨ�bԬW�[,�7�~�^���]�Za�G��#�\\\'����>H���\\o��%��s��i%o�w�n*	�r���\0��B&�ϊ���-�˝Q���n����=��e/�>e���S���}�E�ɽ�wL���=����^���7��yS���&C��6ܨ�^/��o���z�鹩�ĿJ��`a4�;�A�*7p�cxT�q���zUć�� �3g칙2pc���*�֭\'�TE��$���k�u��*T�\n���gW��ϟ)4h�f_0��,K��\n3��S����T$_E\"��b��HLE��:`<��cy4Oȏ��E�E����\"��ˍK��,-�M��̗Y���筍^/�o0�Yo�7�]�ռúÙ�6<��1�?�����@�],�=�M���u��r�$*�$�ȷ�s��99.���8�H#���H�UX|R��E�<��(��9~�V#\nTC�y���r�E��C���?�\"���o��H-i\"��v�!]$�0儲���fKlJ���\n�`����>C>�Uf�W���@2��y�����ç�@_IX=��� ��c���-�X*�*콻��YLPx��Wvg\Z��`�rz�K��|�+�2��N0p��Nr�=�v.��k\\�7�I������O���\"�/�����}\\�����U9�ʡ���̏���bCˆ���^���v�n>�5h9���7�{ን�̬�;�g��%��������z������V\'o׷^v��w?���;�[�%7]0f��Ews������[�䕫-7�|���JK�\r�w��#k�}�Vfz�a���<\Z�le&�����IOX]�}���8�3�2�S��;a�q��ޝ\0}�/�2C��p��O���T\r$y�s[�\"�z����gR$O�y@$ca���}%n@��$B���_���VZ\nʶ;��+�H��b�`S���\r��æS&c�Tk�\"5�2;����׽UU�S���Nr�t.�CTrP*鱨/B\\���H��\r��:Ҫۮ�wBf�P1��[�NJ)���Z��e�v�tJ�p)�u��i���Y}��9�|��V��\'=U�l��>�a;�R�ѷ�\0+�\'�ޡ����l~=�/^ ���l��w����&���sv�\'�ZU�9b;�aR�,FJ	�������Ed�s�O�\Z��U7�ώG69��G�\0(r��T�7��f_�@sA�9����\n\Z͍K�K\n����x��.��f�\0u>��Hb�C�G��\Z��Ȁ?:���\"9L�ؘH������2�4�aAw�/,(�+\n\'��t\r�%�\r�-�Mߘ�����,D�����%a�g�����@���r�e�%e�vZ�|e,����u~3����V	�,kf[�u\0��]����ll�p��[g�w}d�G����)4����������7���f�P�f���Θ�ߥ�x#.r�M\r�11�VzS���D&#��v(GN�E佄�U;�W8�m�����	K~br,{<&U0��I_T�o*�!	�5El�O�s\"e�+W�]���n���:u��zr��7Ū�/V�F�VW���戆5U\Z�q�R��{gG�gP����K~%M��v���L��\Z�1�3͐�}��v���q\'�yuR�\r�|����SO�������K�ZѲ\\�2]��;���� ��&�e`�PĖ&�|�P�q��q�~�EIq)j~��o6�Ċ2=��D9�-�W�8��\\m��N���	\Z��5�����>�Ą��.{g)��zզ�璣7l}�Vֻs��/~v�ܒK�˾v��G7O�z��b��E\r��װڳ�ƚD��AO}������y���MN;�R�?jS�\'q�h�r�˝:�\nc�zA@�\"V�UĦ�/��,WY���s-�D{���D#�8�:�ZZ>�Z����j�(���s����m,a���	z	�f�u�̚�n�jr�E��4? ?�3��^�R�DX*�7�2��2���3�5�\\��MS��;Ϻ�z�U�����`�;܄����8�B�i��ߤV�����$��\n0a���Yt|�����a�Θ�_��A�1$�IX�i�H39I�{�SfE�W��Kd\"�j�c��I�:���dr�\'S�ΙwDK��*-�Z����e��RR�^��*���i��˞�]�+�$��aM�����\r��4;	^�ދBV�O���P��\nE9W�㌵�~�G4���\nFm��Wƹ\"����[���cv��=��߼���5_���{�ǽW�����-��lv�?B���ׄ^����e˟y�ͧ�A\r49��r��fq\rt���樹�<�,\ru\r\\@gf8f�R�~��)p8��������d}����W�\'�ǃ��+��*]��\Zߪ���v�(�\\#�Ps\r�6�wL\n\\`�3/2���u����ĉ�l?�\rN�d��������>;\n�6+��>R��[^�5*�GmD�%lM�V�L��L��c�3`�\Z�	K��M,����.�6�	���lS��m�������z/ԩ��.�Wg�Ӫ�>���8od�S�#�cڔVd�7M+hs��Z��LmΑ\\Yj}�#�9e�Kufxs��;�\"i\\]�mz�;^yB٧�d��<`�G؞��]p\"%(w�����Qk~�QUj���w�L��U�\r%1q�].��<{՟�/}�ڦ�{�C�^����?�x���l����Dh�>�ZΎ��W^��s��,�/�A�\'e�9��9�����\Z�F�lc��LZ�o1�L�F$1�a���oKgg|����h����t�\\�@�}��9�Q��y�����\"V��]�jr�r	��u��K��,�-�����M���C-�̹-��}꿾��Ν0����Zf����=l��,S}~AY�L̾ ;{��ʘ���AtR\r�}u��^} ��9}�6�N��&�\n�T~Q�,-��:v<��B�B�Pp��Ǧ���3w{�q��sÐ��𵜺�ˎ���+�WWr�ޮ^]aJ}�?�\r\\E��6����p��X�(����� �i� Ĭ�x3��x3h�k�.j,��J�Wg�8e�ء\r���$��^��`�����8�����>7tl����:�4���&u��;I��D�|��z��br��c?Ĵu�a��:��Eʎ�CO��b�`o»�{����:�y�9�=��l��`Y��,��qҸ#K4`�� �T�2X��b��U ���B��A��~\0�g��2~˶�&��&�(������\\&��0�����v�#��ǌk�|ʿP�6��s��~��	r�p����ɔl{�t�\\�����F�\\�3OV�p��nBSݦ�k5:�2e��6��O�$^p��$�\"d�/\\YE�s��1X��*2>��%ʩLdh�вr��GE����]j�ع3�w�������w�p�����_`��0���m�-drbL�t�/(\'r�����d4J�Bc�q��ڡ�g{��1Ga��8�1�8�Q��7.6�5��i)��~���]��a�a�\n�Ǉ��\n�\Z�D;?<`Sak�;�����|�os�4�.��9 ��喎��%agi�и��W$d)�\Z�s&��Y\Z-5������������Q�稛����q��B���\\�{���k!����\0+Z�Qiػ�����-\"�0�fȨ��2Mu�uV�ܠʐA�!�i�t������b�Ze��6�*V�iM5���Ŋ���Κ�je\r�\Z)���\\3Y���ua���S�$��􎒜�������/}\"}e�DUe�4i5ZC8I]@V@�w���M���_���qf\r�#KY%������P� ˹ݸ�v>���-��R�C�ee(���KƮ�b��B6$�=u�k7=q�C-��z�/w<t���l��z��hɂ9��I��������~}d�B�k��z��a�d��nc9ȋʭ�o��L`Kl�Ҋ�C�j�Y�AN��̭��lA\"`\rHZ��`�gϘ2�ʤ�6��:ST�(V�ғ�z��ƌ+�H?�Cc=[������V�ctz�3˙I���z�5h��>2���tf?���b��]6�,�:墫\\�\\IW�%��Ce\"��(��Q�b���;�~�+�{a\"?�JO�M��4ջ=WϽ..�(_��MLuN��d�ث��Şս�-՘�1\Z;6vkܮ�1�Ƣ�Z4&?1�P����Հ\"�����0J����%vg�ùI�z��\"�������i��y��\r���\\����J�`�?nm|�����[~2��+������g,�\rZjP�z���ވ���/�|���чK���uԨ�tQ��h�ʹ;cuՇK��☩�]AE4*�E$�����H}������.�u�al����w����c�Sz-��U�V��t�q}Jo�q������R��9�	W�H\ZѠ�F%w��ĤxX<.j��D\nbH<�o��ls�jb/����D��ȕ��*M�]�cl��w	c;q������S�*��G�$՚�]����h�4����{�J��B�S@�����)��ȑo�b��wp�\\��R�o�]}.��^\0��������od3r=g��I|��=����}����?x���*��Q�qV)(픎I�4�$!(��Z��$b�\rTP�ˉ\'Z;��S�G�$��}\";CB�aK�:�����\")�$3=x0U�?xl�ؖU��;g���A���9m\'�n�HuM폈�����\nYBY�ws��e��=����/����I �g�ܔqa��-�5��0O�ܞ��2�������-7�o��ԫ)�R���b4�E��	���OBҟ�3!�օ\"z�?��HN@�d��h\">�l8\Z%ۣ��4�v�,��6b�:����|ǖ���Ell�����F�j��W�|�֦^��[�w��=�9����H��<��~��%�{K����ꝍ���*����0�GQ�~+ӯ����}@K#j!UuF����.%G��m4\Z�*��J�e��\0~�d�n��qZS~�����2��x�]d������d�JO����{�Z�2���k�-P�Ma�*67���PM����d��٩*TuE��\"1a�\r>ԶDct��ݷܨ��D;�kC��������(\n�/2U�%-�����/��Ȟ��Q�~�Y����G��ۦλ����������獸��_Ў�k��i�۪��)�k���*�$A�Ew�]���gY��3Y\Z�ݾ�E��$��壞㞔G��ˎ�\ZѸ���d�g�Y2f���d�Y�<�B�pk���4#�ӌ�v���;c.��\'�l���N��o3r;���8�Ei䦠���q���W��<�<t�g�\'�9�=-u�T�s���R�7��g:m��%�4��3�l����Ǉ��~S����a�x;�ͷ~q�;3�$e\\��>�ͥ��\r:�� h�Mc����f���ي!Ζz����%Hv�R��6�e���@/m�o��M��ʆ΂e��J�����USJ��^K��d��[_�~�Ը��b>r��$��e���\Z�����\n�I��yy�]k�&h&��4\r�E�%:]�<�>�5�S-��k\\՞��\\������Y!��/�W�W�x.%N�F2_(̒f.4-Z�.y�QkC	���td�x:zךr�#��ו~�n캠����}��Q�M��DxJ�Dx�� �/\Zr�p-���Vֆ����8�m�CI�Oq�V���,*oY��q���v3�7���Z@�3ߣJ/.�ُ) L`�L*RP7��~(���Z�!>����}�LN�W�����zk�m��kI���L����z�46�[��v�M�	5�n��˕���ݩ̥�n��������x��䁎-�w�ټ��f���7�|���_�!9���˯����_�&m�Y\"����C�ĥ�:�\\$�\'��bU(���@S$��Y�=&{Uh{H7�=�?�=�ߠ��4�=׿T�̴D^�^�?z���}��9\'\'r��R!WD��q�Pq�<^�,ϑ?1�5�G6�,�+`�������P����2T�Λw�@dC��dh5�!�V�D����&������r�>�ڶ�K6K���:�UJK�6�U���9Ox��Q�Äl\'�H��\"b�T�iD ���ʑp�H�r$��	�-\'L��3 F�ד�v��b�A���r���T�\"ߐ8}�o�B9�A��$F�s����N��,�����n�:��]ퟷ��?ZKZI�Y��خ��8	x	�	�$�%�4s@8�4	�%��h\n�C��&!S�I����@�Z�d�܅t���4e�s�2w	�ｷZy�m�>Y+i�������}�#�\n19Bj�����XIu��a�*�N���M.�0�_\\��><>p�\'�}��ܷu�o�o�|x�?t��ի���}a��O��h���7�}��?��h͊�~n�h�R�u�5�\n*���bԅ��BgU���<Q�\\M�)%;k�E�%�#���#�\'���9-�o���~7棌Z��@��ѷյ�}��g���ߜsɯ�y�N�1,�)��J,��h�S����\0-����]}��C�k�U��EgP�^��tu���Y �@�(��Ԭ2;�vgTE}��+���E�X���ZM�\n�[����10Kd`����:^]s9�UF��`]X�u����6S^	��`��Uh��x��Ԝ�Jc�ӷ����\r��6>?5��m���z���HZ�6A���{��ܿ�:��?�>�G\Z�<\0z�h�	�wqs\Z<��K��|7�����)ɒ�ELY�f\0�OHPʤ#0�2�Ol	����T2��u�@� 0?\'f�`�j.y0����o�y�\Z}6�&9z�;�9�xgw�� �m�}ɣ4�$��2�-Ē�8҃�E��z����[o�z��ŷ�5|�7W,ڟ_޹n��iz;g�s��9l�kX6^��+��C�[�L��%�ȹ�\\���. g򼀜��C=|��,�o��e{2wf����]�}��6����X\"k�j<%�-��{�^��*�j�6 \r�x@P���H^�d����ٵx�rG��-�٧��\'O7���E|@}!�ba8�V.Z𓹌/��B�\ni���|!��c3�VM�Z)_�b>��U�JSu�B����e�Ng��=��#�N������k��� jTE4�U�\\��n��\Z�C�iS��a;Zb�<#l� l��Fթ*��=\Z:��?���E>դ�&`\"븑x�����c�ޖ�	�Mxr���N���a������Ȟ�D�Β����i �7��o�\r����4�����5x�T�pܿ��=\r	v,��\r�u�\'[Qg�V�J˓Y��C�|��e ^�\n��p�d�l�=���ξ��.�܋4�$�)C�ސ	���3�\0H�R�o�����I�Q�ܴҧ\n�i�0�RNR�����xB���Rz�1��D!��+j�Bvc�4,#bpBFK\'�\\�0t�����p]d�4U�������P䓠֨�YA��Խ\rKF�;w��M����@/9V+�\\u�w��$U�,���%#����0*#V�|ZPZ��5�*����������C��?��3�������?<��<�n�\Z�F����x�������*u��;�]U�o�~�������������Tugۮ�]��w_&�*;�?�!���{B���)sh�������i�h�$S��a�T595䢎I��)���}C�VnYː�M�3�t�|�:���	�$}xN<$��E�55���.�u R�9c5yHMY(�;]d:M\ZlI(�\'^&C ^�G��r��,u֓�{�:k���x\'Ь�<�EY����2��<I�a���|7ذ����r\"P�H��i��9M6�d$���_w�\Z�5�yָ�����{�88��=SO�ؘ�~����L�9r�G��Q��b%��Di���c٥bf�HT���BܴI�?h��A���,\Z@����{�1�!f��b��c>:V�bv��X����x�FO�L�����U�(�\Z_$��%%f<�yJ��J�z��0�[U:>.-��2/���\\	�%+�\nU��Y� 3�Afe!y�3�-�~�*xA��K:�s���I�FX�5$�� �$N0x5	4�L\n+44�$�U�Zp&��8%*05�A�,/&O���$�=ʈ�D�:�޿�U�2����^���_������ѓS�?����ݏ?�:���uC���L�\0A|3AE+P~0�f��Ș�*��$�%\n�w���Ps1�g�Bd�L��fv�Q+U��W5L�a�S�W��W�ay���/�(ِG�?*4�@�ltu>(�9��`9�=h����z��K��6p�m������p7�	�������k�W�9~<�O���a�x�ǟ�O�%p7���� � ���*�b9�Z�R��q��D\"S�@�]��:�)����5�1蚜�_\n�\n��~T$��NOAs�\"ߎEI���-�p��؆�&�$!���f��u]y���1�uC;B(D$WN#f������d��K�\'��yT��Jە�1��va�i��?A�:e��kd�G(+=���_?[_/~���=|nj�]nފfZ)\0:J��\n}�\ZѬ�FR4��@A�SB�<���+L�J�U���Sj�h�Ᏻ���*�u��pD}v+��4��\n���YE��	~�4^|5�-�FW+{X��ivqv�#b��U�ff&���@�Һe���*C�Y���ǁ�lE��X4of��#�e��􈪱��<I�)w1�zO�	{�Гn3�L�=�&�J�!(�D[5�\rbRM�x̛�\\V���Ig��2Μ2N��\0�G���ST�a?��[��L�~9��L��	����+��+��<�4�p��fK���!);V����JX��l1%%��pԋ\rR1\\�E���2n���7J]ʵ�r��V�&�n��.k�p��EzU8���.\\��Y\0-.�y�پ�[�I?��rO���K�%e�:\n����������_��E9��6L�m\r�kY��c���J�u��$J��^��UX�4��kc3g�v��4b\Z>�A;\"`���y3�5�!�Q��\'��^��̞�>��6/4{�X�Y����/��\\(D|��1�Uņi��k8,�\\��z8�S�ҢiYŐh�Bb�\\�z-lkZX2u��%���*� (Z���jXc�g�������iO5��44H���8���]�^��� Fx��ʫL��|�D&}�!����9b����/#_�gI�sㅾ�8I\n�5�}�s��O!��*T�7����1h����6���z�2�u��q��j\Z�63A�	���G@�����Y3PסR��if������uwj8�f&�i�Ik�8��:~��\\���El��\n��>�򉕗ǂ/7g&�q�O6�֟N\Z�9}��\0��Fl���]�c�E�7�\rO�������w�Ĩ�����>~�@\'�v��g\\u�������B��/ϚF�L�}�Z�C44��{4��7���/�9�-����\n[����Q���~��5k>����/���+�_�|���[U<\0\rE�1P5�uN�R�n	�q-=��jZg���4%��A����]rXOA�C�S�G?�9Wsu��-%�nDU��Z��+y5�-Tj�ϘJ�*DVD�Xk\"k����H�va��ݼ߾��!�Qs��\'����f7�ٟ��צ���gR5V$/��ll�%���e�.�ӝʗ�\02�l)Hh��AV:�K;���M�*Y��\n�Gh#�\"�7\0)#��So�Pju��䌸���U:-�B߳ް�5��a\\���)v�ܴڢ�R�RgTD.���f��!�9�L�eMN��H�:X$n\\8�g�6N&��$�Hd2�o\Z�H�c/D�o�<-�,�%K$�f�d=�g��q�Kz�<]lk��r�g>>�ށ3�a�	G�:�r�\Z�\0)��0W���:��Ń��c��&���zO�c��V>?v\"�D�ڋ������2���T��?��&�2�S���Q�&�֫���3��ڊ����K�t\0��3��\nendstream\nendobj\n115 0 obj\n<</Type /FontDescriptor\n/FontName /AAAAAA+ArialMT\n/Flags 4\n/Ascent 905.27344\n/Descent 211.91406\n/StemV 45.898438\n/CapHeight 716.30859\n/ItalicAngle 0\n/FontBBox [-664.55078 -324.70703 2000 1039.55078]\n/FontFile2 114 0 R>>\nendobj\n116 0 obj\n<</Type /Font\n/FontDescriptor 115 0 R\n/BaseFont /AAAAAA+ArialMT\n/Subtype /CIDFontType2\n/CIDToGIDMap /Identity\n/CIDSystemInfo <</Registry (Adobe)\n/Ordering (Identity)\n/Supplement 0>>\n/W [0 [750 0 0 277.83203] 19 26 556.15234 36 37 666.99219 38 [722.16797 0 666.99219 610.83984 0 722.16797 277.83203 0 0 556.15234 833.00781 0 777.83203 666.99219 0 722.16797 666.99219 0 0 666.99219] 68 [556.15234 0 500 556.15234 556.15234 277.83203 556.15234 556.15234 222.16797 0 0 222.16797 833.00781] 81 84 556.15234 85 [333.00781 500 277.83203 556.15234 500 722.16797 0 500]]\n/DW 0>>\nendobj\n117 0 obj\n<</Filter /FlateDecode\n/Length 332>> stream\nx�]RMo�0��+r�m%��1U�����t�F�Bz��/ش�	�{�{�q�yi��,�p�l��^�`\ZoN��U�(�Li�W�o9t6����\'Cc�1*K���������<E�Sഹ�͹nno���\0Ƴ$�*��N��}�`1ʶ�\nq��m��e|�G�R7rT0�N����2	�b�)�*���R]z��9��Bv��ZPJ([ё�Qv@���@T���\Z��5W�ý֣�t�i�|j99�?�9�p�)r\"���bbO���2�5�ʉ�qĉȜH*�s����p��H��i��^��9���,��1ys.,oniُ6�Dv��jy~A��0\nendstream\nendobj\n6 0 obj\n<</Type /Font\n/Subtype /Type0\n/BaseFont /AAAAAA+ArialMT\n/Encoding /Identity-H\n/DescendantFonts [116 0 R]\n/ToUnicode 117 0 R>>\nendobj\nxref\n0 118\n0000000000 65535 f \n0000000015 00000 n \n0000016429 00000 n \n0000000155 00000 n \n0000000192 00000 n \n0000000268 00000 n \n0000053525 00000 n \n0000000345 00000 n \n0000016664 00000 n \n0000029008 00000 n \n0000026362 00000 n \n0000026275 00000 n \n0000026019 00000 n \n0000017012 00000 n \n0000016925 00000 n \n0000016838 00000 n \n0000016719 00000 n \n0000017398 00000 n \n0000017311 00000 n \n0000017224 00000 n \n0000017105 00000 n \n0000017784 00000 n \n0000017697 00000 n \n0000017610 00000 n \n0000017491 00000 n \n0000018170 00000 n \n0000018083 00000 n \n0000017996 00000 n \n0000017877 00000 n \n0000018556 00000 n \n0000018469 00000 n \n0000018382 00000 n \n0000018263 00000 n \n0000018942 00000 n \n0000018855 00000 n \n0000018768 00000 n \n0000018649 00000 n \n0000019328 00000 n \n0000019241 00000 n \n0000019154 00000 n \n0000019035 00000 n \n0000019714 00000 n \n0000019627 00000 n \n0000019540 00000 n \n0000019421 00000 n \n0000020100 00000 n \n0000020013 00000 n \n0000019926 00000 n \n0000019807 00000 n \n0000020486 00000 n \n0000020399 00000 n \n0000020312 00000 n \n0000020193 00000 n \n0000020873 00000 n \n0000020786 00000 n \n0000020699 00000 n \n0000020579 00000 n \n0000021260 00000 n \n0000021173 00000 n \n0000021086 00000 n \n0000020966 00000 n \n0000021647 00000 n \n0000021560 00000 n \n0000021473 00000 n \n0000021353 00000 n \n0000022034 00000 n \n0000021947 00000 n \n0000021860 00000 n \n0000021740 00000 n \n0000022421 00000 n \n0000022334 00000 n \n0000022247 00000 n \n0000022127 00000 n \n0000022808 00000 n \n0000022721 00000 n \n0000022634 00000 n \n0000022514 00000 n \n0000023195 00000 n \n0000023108 00000 n \n0000023021 00000 n \n0000022901 00000 n \n0000023582 00000 n \n0000023495 00000 n \n0000023408 00000 n \n0000023288 00000 n \n0000023969 00000 n \n0000023882 00000 n \n0000023795 00000 n \n0000023675 00000 n \n0000024356 00000 n \n0000024269 00000 n \n0000024182 00000 n \n0000024062 00000 n \n0000024743 00000 n \n0000024656 00000 n \n0000024569 00000 n \n0000024449 00000 n \n0000025132 00000 n \n0000025045 00000 n \n0000024957 00000 n \n0000024836 00000 n \n0000025527 00000 n \n0000025437 00000 n \n0000025347 00000 n \n0000025225 00000 n \n0000025924 00000 n \n0000025834 00000 n \n0000025744 00000 n \n0000025622 00000 n \n0000026467 00000 n \n0000026657 00000 n \n0000026714 00000 n \n0000028971 00000 n \n0000029116 00000 n \n0000029230 00000 n \n0000052297 00000 n \n0000052534 00000 n \n0000053121 00000 n \ntrailer\n<</Size 118\n/Root 113 0 R\n/Info 1 0 R>>\nstartxref\n53666\n%%EOF',1);
/*!40000 ALTER TABLE `capture_power_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_privilege`
--

DROP TABLE IF EXISTS `capture_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_privilege` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `privilege` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_privilege`
--

LOCK TABLES `capture_privilege` WRITE;
/*!40000 ALTER TABLE `capture_privilege` DISABLE KEYS */;
INSERT INTO `capture_privilege` VALUES
(1,'SuperUser');
/*!40000 ALTER TABLE `capture_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_proceedings`
--

DROP TABLE IF EXISTS `capture_proceedings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_proceedings` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `accreditation_id` smallint(5) unsigned NOT NULL,
  `constitutive_act_id` smallint(5) unsigned NOT NULL,
  `identification_id` smallint(5) unsigned NOT NULL,
  `location_id` smallint(5) unsigned NOT NULL,
  `plane_id` smallint(5) unsigned NOT NULL,
  `request_id` smallint(5) unsigned NOT NULL,
  `status_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_proceedings_accreditation_id_45ebfe09_fk_capture_p` (`accreditation_id`),
  KEY `capture_proceedings_constitutive_act_id_0dfdf59b_fk_capture_c` (`constitutive_act_id`),
  KEY `capture_proceedings_identification_id_9fcaa950_fk_capture_i` (`identification_id`),
  KEY `capture_proceedings_location_id_043caa74_fk_capture_location_id` (`location_id`),
  KEY `capture_proceedings_plane_id_ed3d2cf3_fk_capture_plane_id` (`plane_id`),
  KEY `capture_proceedings_request_id_17d7399b_fk_capture_request_id` (`request_id`),
  KEY `capture_proceedings_status_id_117230e4_fk_capture_status_id` (`status_id`),
  CONSTRAINT `capture_proceedings_accreditation_id_45ebfe09_fk_capture_p` FOREIGN KEY (`accreditation_id`) REFERENCES `capture_property_accreditation` (`id`),
  CONSTRAINT `capture_proceedings_constitutive_act_id_0dfdf59b_fk_capture_c` FOREIGN KEY (`constitutive_act_id`) REFERENCES `capture_constitutive_act` (`id`),
  CONSTRAINT `capture_proceedings_identification_id_9fcaa950_fk_capture_i` FOREIGN KEY (`identification_id`) REFERENCES `capture_identification` (`id`),
  CONSTRAINT `capture_proceedings_location_id_043caa74_fk_capture_location_id` FOREIGN KEY (`location_id`) REFERENCES `capture_location` (`id`),
  CONSTRAINT `capture_proceedings_plane_id_ed3d2cf3_fk_capture_plane_id` FOREIGN KEY (`plane_id`) REFERENCES `capture_plane` (`id`),
  CONSTRAINT `capture_proceedings_request_id_17d7399b_fk_capture_request_id` FOREIGN KEY (`request_id`) REFERENCES `capture_request` (`id`),
  CONSTRAINT `capture_proceedings_status_id_117230e4_fk_capture_status_id` FOREIGN KEY (`status_id`) REFERENCES `capture_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_proceedings`
--

LOCK TABLES `capture_proceedings` WRITE;
/*!40000 ALTER TABLE `capture_proceedings` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_proceedings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_property_accreditation`
--

DROP TABLE IF EXISTS `capture_property_accreditation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_property_accreditation` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `document_pdf` longblob NOT NULL,
  `ownership_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_property_acc_ownership_type_id_429876fb_fk_capture_o` (`ownership_type_id`),
  CONSTRAINT `capture_property_acc_ownership_type_id_429876fb_fk_capture_o` FOREIGN KEY (`ownership_type_id`) REFERENCES `capture_ownership_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_property_accreditation`
--

LOCK TABLES `capture_property_accreditation` WRITE;
/*!40000 ALTER TABLE `capture_property_accreditation` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_property_accreditation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_request`
--

DROP TABLE IF EXISTS `capture_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_request` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `request_pdf` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_request`
--

LOCK TABLES `capture_request` WRITE;
/*!40000 ALTER TABLE `capture_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_status`
--

DROP TABLE IF EXISTS `capture_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_status` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_status`
--

LOCK TABLES `capture_status` WRITE;
/*!40000 ALTER TABLE `capture_status` DISABLE KEYS */;
INSERT INTO `capture_status` VALUES
(1,'Validado'),
(2,'No Validado');
/*!40000 ALTER TABLE `capture_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_user`
--

DROP TABLE IF EXISTS `capture_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_user` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privilege_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_user_privilege_id_0293ba97_fk_capture_privilege_id` (`privilege_id`),
  CONSTRAINT `capture_user_privilege_id_0293ba97_fk_capture_privilege_id` FOREIGN KEY (`privilege_id`) REFERENCES `capture_privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_user`
--

LOCK TABLES `capture_user` WRITE;
/*!40000 ALTER TABLE `capture_user` DISABLE KEYS */;
INSERT INTO `capture_user` VALUES
(1,'tristan','123456789',1),
(2,'admin','123456789',1);
/*!40000 ALTER TABLE `capture_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_user_proceedings`
--

DROP TABLE IF EXISTS `capture_user_proceedings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_user_proceedings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proceedings_id` smallint(5) unsigned NOT NULL,
  `id_user_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_user_proceed_id_proceedings_id_4ae6542c_fk_capture_p` (`id_proceedings_id`),
  KEY `capture_user_proceedings_id_user_id_597efa82_fk_capture_user_id` (`id_user_id`),
  CONSTRAINT `capture_user_proceed_id_proceedings_id_4ae6542c_fk_capture_p` FOREIGN KEY (`id_proceedings_id`) REFERENCES `capture_proceedings` (`id`),
  CONSTRAINT `capture_user_proceedings_id_user_id_597efa82_fk_capture_user_id` FOREIGN KEY (`id_user_id`) REFERENCES `capture_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_user_proceedings`
--

LOCK TABLES `capture_user_proceedings` WRITE;
/*!40000 ALTER TABLE `capture_user_proceedings` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_user_proceedings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2022-05-07 00:22:27.045591','1','Status object (1)',1,'[{\"added\": {}}]',10,1),
(2,'2022-05-07 00:22:29.919860','2','Status object (2)',1,'[{\"added\": {}}]',10,1),
(3,'2022-05-07 00:26:12.252229','1','Privilege object (1)',1,'[{\"added\": {}}]',21,1),
(4,'2022-05-07 00:26:29.488807','1','User object (1)',1,'[{\"added\": {}}]',16,1),
(5,'2022-05-07 02:27:49.992201','1','Identification_Type object (1)',1,'[{\"added\": {}}]',11,1),
(6,'2022-05-07 02:27:52.159892','2','Identification_Type object (2)',1,'[{\"added\": {}}]',11,1),
(7,'2022-05-07 02:27:54.540993','3','Identification_Type object (3)',1,'[{\"added\": {}}]',11,1),
(8,'2022-05-07 02:55:05.825609','2','admin',1,'[{\"added\": {}}]',16,1),
(9,'2022-05-07 03:09:58.354454','1','No Aplica',1,'[{\"added\": {}}]',18,1),
(10,'2022-05-07 03:10:02.584995','2','Sí Aplica',1,'[{\"added\": {}}]',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(8,'capture','constitutive_act'),
(12,'capture','identification'),
(11,'capture','identification_type'),
(9,'capture','location'),
(18,'capture','not_applicable'),
(15,'capture','ownership_type'),
(17,'capture','plane'),
(20,'capture','power_letter'),
(21,'capture','privilege'),
(7,'capture','proceedings'),
(19,'capture','property_accreditation'),
(13,'capture','request'),
(10,'capture','status'),
(16,'capture','user'),
(14,'capture','user_proceedings'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2022-05-06 15:17:52.024997'),
(2,'auth','0001_initial','2022-05-06 15:18:01.338028'),
(3,'admin','0001_initial','2022-05-06 15:18:03.190461'),
(4,'admin','0002_logentry_remove_auto_add','2022-05-06 15:18:03.227533'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-05-06 15:18:03.273144'),
(6,'contenttypes','0002_remove_content_type_name','2022-05-06 15:18:04.316288'),
(7,'auth','0002_alter_permission_name_max_length','2022-05-06 15:18:04.992595'),
(8,'auth','0003_alter_user_email_max_length','2022-05-06 15:18:05.426075'),
(9,'auth','0004_alter_user_username_opts','2022-05-06 15:18:05.464139'),
(10,'auth','0005_alter_user_last_login_null','2022-05-06 15:18:06.185018'),
(11,'auth','0006_require_contenttypes_0002','2022-05-06 15:18:06.211600'),
(12,'auth','0007_alter_validators_add_error_messages','2022-05-06 15:18:06.285549'),
(13,'auth','0008_alter_user_username_max_length','2022-05-06 15:18:06.688762'),
(14,'auth','0009_alter_user_last_name_max_length','2022-05-06 15:18:07.192344'),
(15,'auth','0010_alter_group_name_max_length','2022-05-06 15:18:07.583501'),
(16,'auth','0011_update_proxy_permissions','2022-05-06 15:18:07.624348'),
(17,'auth','0012_alter_user_first_name_max_length','2022-05-06 15:18:07.986308'),
(18,'sessions','0001_initial','2022-05-06 15:18:08.843808'),
(19,'capture','0001_initial','2022-05-06 15:19:10.033245'),
(20,'capture','0002_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more','2022-05-06 15:20:52.425882'),
(21,'capture','0003_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more','2022-05-07 03:06:39.936521');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('yt4de5x65zjxnra8lswtnzp02a354yun','.eJxVjMEOwiAQRP-FsyGULl3q0Xu_gSxdkKqBpLQn479Lkx70OG_ezFs42rfk9hpWt7C4ik5cfpmn-RnyUfCD8r3IueRtXbw8FHm2VU6Fw-t2un8HiWpqazJs7UBDH8EgjKA0RjVYMKNm61HzTGhUVJ5awC70AGQbBOwtIhvx-QLCeDck:1nn8GR:IrJZiGkx6o4KApld6wKQpA1Vo_4N3YM7PhEj8epG4xw','2022-05-21 00:25:39.953805');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 22:18:46

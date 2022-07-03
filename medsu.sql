-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 29 Mar 2022, 12:32:28
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `nictr_jff`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_homedesign`
--

DROP TABLE IF EXISTS `nictr_homedesign`;
CREATE TABLE IF NOT EXISTS `nictr_homedesign` (
  `id` int(11) NOT NULL,
  `langID` int(11) NOT NULL,
  `pageName` text NOT NULL,
  `design_json` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_homedesign`
--

INSERT INTO `nictr_homedesign` (`id`, `langID`, `pageName`, `design_json`) VALUES
(1, 2, 'englishHome', '[{\"text\":\"homeCat\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-1.php\",\"baslikdurum\":\"off\",\"type\":\"sablon\",\"children\":[{\"text\":\"Destinations\",\"href\":\"destinations\",\"icon\":\"\",\"target\":2,\"title\":\"Destinations\",\"type\":\"tourCat\"},{\"text\":\"City Departure Tours\",\"href\":\"city-departure-tours\",\"icon\":\"\",\"target\":4,\"title\":\"City Departure Tours\",\"type\":\"tourCat\"},{\"text\":\"Ephesus Tours\",\"href\":\"ephesus-tours\",\"icon\":\"\",\"target\":12,\"title\":\"Ephesus Tours\",\"type\":\"tourCat\"},{\"text\":\"Religious belief Tours in Turkey \",\"href\":\"religious-belief-tours-in-turkey\",\"icon\":\"\",\"target\":6,\"title\":\"Religious belief Tours in Turkey \",\"type\":\"tourCat\"},{\"text\":\"Tours By Days\",\"href\":\"tours-by-days\",\"icon\":\"\",\"target\":5,\"title\":\"Tours By Days\",\"type\":\"tourCat\"},{\"text\":\" Special Tours Turkey\",\"href\":\"special-tours-turkey\",\"icon\":\"\",\"target\":3,\"title\":\" Special Tours Turkey\",\"type\":\"tourCat\"},{\"text\":\"Multi-Country Tours\",\"href\":\"multi-country-tours\",\"icon\":\"\",\"target\":7,\"title\":\"Multi-Country Tours\",\"type\":\"tourCat\"},{\"text\":\"Guaranteed Group Tours\",\"href\":\"guaranteed-group-tours\",\"icon\":\"\",\"target\":8,\"title\":\"Guaranteed Group Tours\",\"type\":\"tourCat\"},{\"text\":\"Turkey Shore Excursions\",\"href\":\"turkey-shore-excursions\",\"icon\":\"\",\"target\":18,\"title\":\"Turkey Shore Excursions\",\"type\":\"tourCat\"}]},{\"text\":\"Turkey Special Tours\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-3.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"HOT DEAL Turkey Tours\",\"href\":\"hot-deal-turkey-tours\",\"icon\":\"\",\"target\":19,\"title\":\"HOT DEAL Turkey Tours\",\"type\":\"tourCat\"},{\"text\":\"Trekking & Hiking in Turkey\",\"href\":\"trekking-hiking-in-turkey\",\"icon\":\"\",\"target\":20,\"title\":\"Trekking & Hiking in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Yacht Charter Turkey\",\"href\":\"yacht-charter-turkey\",\"icon\":\"\",\"target\":27,\"title\":\"Yacht Charter Turkey\",\"type\":\"tourCat\"},{\"text\":\"Turkey Honeymoon Tour Packages\",\"href\":\"turkey-honeymoon-tour-packages\",\"icon\":\"\",\"target\":22,\"title\":\"Turkey Honeymoon Tour Packages\",\"type\":\"tourCat\"},{\"text\":\"Yoga Tours in Turkey\",\"href\":\"yoga-tours-in-turkey\",\"icon\":\"\",\"target\":23,\"title\":\"Yoga Tours in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Medical Tours in Turkey\",\"href\":\"medical-tours-in-turkey\",\"icon\":\"\",\"target\":21,\"title\":\"Medical Tours in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Women\'s Tours in Turkey\",\"href\":\"women-s-tours-in-turkey\",\"icon\":\"\",\"target\":24,\"title\":\"Women\'s Tours in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Student Tours in Turkey\",\"href\":\"student-tours-in-turkey\",\"icon\":\"\",\"target\":25,\"title\":\"Student Tours in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Shopping Tours in Turkey\",\"href\":\"shopping-tours-in-turkey\",\"icon\":\"\",\"target\":26,\"title\":\"Shopping Tours in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Wedding Organizations in Turkey\",\"href\":\"wedding-organizations-in-turkey\",\"icon\":\"\",\"target\":28,\"title\":\"Wedding Organizations in Turkey\",\"type\":\"tourCat\"},{\"text\":\"Luxury Turkey Tours\",\"href\":\"luxury-turkey-tours\",\"icon\":\"\",\"target\":29,\"title\":\"Luxury Turkey Tours\",\"type\":\"tourCat\"},{\"text\":\"Göbeklitepe Tours in Turkey\",\"href\":\"gobeklitepe-tours-in-turkey\",\"icon\":\"\",\"target\":87,\"title\":\"Göbeklitepe Tours in Turkey\",\"type\":\"tourCat\"}]},{\"text\":\"Popular Tours\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-4.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"can deme tur // Antalya - Cappadocia Tour -4 Days\",\"href\":\"can-deme-tur-antalya---cappadocia-tour--4-days\",\"icon\":\"\",\"target\":1,\"title\":\"can deme tur // Antalya - Cappadocia Tour -4 Days\",\"type\":\"tour\"},{\"text\":\"Antalya Cappadocia, Konya Tour - 8 Days\",\"href\":\"antalya-cappadocia-konya-tour---8-days\",\"icon\":\"\",\"target\":2,\"title\":\"Antalya Cappadocia, Konya Tour - 8 Days\",\"type\":\"tour\"},{\"text\":\"Antalya Ancient Pamphylia & Ionia Tour - 8 Days \",\"href\":\"antalya-ancient-pamphylia-ionia-tour---8-days\",\"icon\":\"\",\"target\":3,\"title\":\"Antalya Ancient Pamphylia & Ionia Tour - 8 Days \",\"type\":\"tour\"},{\"text\":\"Antalya - Central Anatolian civilizations tour - 8 Days\",\"href\":\"antalya---central-anatolian-civilizations-tour---8-days\",\"icon\":\"\",\"target\":4,\"title\":\"Antalya - Central Anatolian civilizations tour - 8 Days\",\"type\":\"tour\"},{\"text\":\"St. Paul\'s Missionary Journey in Turkey Tour - 17 Days \",\"href\":\"st-paul-s-missionary-journey-in-turkey-tour---17-days\",\"icon\":\"\",\"target\":5,\"title\":\"St. Paul\'s Missionary Journey in Turkey Tour - 17 Days \",\"type\":\"tour\"},{\"text\":\"Anatolian Tour South to North - 14 Days \",\"href\":\"anatolian-tour-south-to-north---14-days\",\"icon\":\"\",\"target\":208,\"title\":\"Anatolian Tour South to North - 14 Days \",\"type\":\"tour\"}]},{\"text\":\"Hot deal Tours\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-4.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"Istanbul Tour Package  / 4 Days - 3 Nights\",\"href\":\"istanbul-tour-package-4-days---3-nights\",\"icon\":\"\",\"target\":64,\"title\":\"Istanbul Tour Package  / 4 Days - 3 Nights\",\"type\":\"tour\"},{\"text\":\"Cappadocia Tour   4 Days – 3 Nights\",\"href\":\"cappadocia-tour-4-days-3-nights\",\"icon\":\"\",\"target\":72,\"title\":\"Cappadocia Tour   4 Days – 3 Nights\",\"type\":\"tour\"},{\"text\":\"Göbeklitepe Temple - Urfa - Gaziantep Tour - 3 Days\",\"href\":\"gobeklitepe-temple---urfa---gaziantep-tour---3-days\",\"icon\":\"\",\"target\":81,\"title\":\"Göbeklitepe Temple - Urfa - Gaziantep Tour - 3 Days\",\"type\":\"tour\"},{\"text\":\"Göbeklitepe Tour Gaziantep to Urfa - 2 Days \",\"href\":\"gobeklitepe-tour-gaziantep-to-urfa---2-days\",\"icon\":\"\",\"target\":85,\"title\":\"Göbeklitepe Tour Gaziantep to Urfa - 2 Days \",\"type\":\"tour\"}]}]'),
(2, 3, 'espanolHome', '[{\"text\":\"homeCat\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-1.php\",\"baslikdurum\":\"off\",\"type\":\"sablon\",\"children\":[{\"text\":\"Destinos\",\"href\":\"destinos\",\"icon\":\"\",\"target\":45,\"title\":\"Destinos\",\"type\":\"tourCat\",\"children\":[{\"text\":\"Excursiones Estambul\",\"href\":\"excursiones-estambul\",\"icon\":\"\",\"target\":53,\"title\":\"Excursiones Estambul\",\"type\":\"tourCat\"},{\"text\":\"Excursiones Capadocia\",\"href\":\"excursiones-capadocia\",\"icon\":\"\",\"target\":54,\"title\":\"Excursiones Capadocia\",\"type\":\"tourCat\"},{\"text\":\"Excursiones Éfeso\",\"href\":\"excursiones-feso\",\"icon\":\"\",\"target\":55,\"title\":\"Excursiones Éfeso\",\"type\":\"tourCat\"},{\"text\":\"Turquía occidental tours.\",\"href\":\"turqu-a-occidental-tours\",\"icon\":\"\",\"target\":56,\"title\":\"Turquía occidental tours.\",\"type\":\"tourCat\"},{\"text\":\"Turquía oriental y sudoriental Tours\",\"href\":\"turqu-a-oriental-y-sudoriental-tours\",\"icon\":\"\",\"target\":57,\"title\":\"Turquía oriental y sudoriental Tours\",\"type\":\"tourCat\"},{\"text\":\"Anatolia central Turquía Tours.\",\"href\":\"anatolia-central-turqu-a-tours\",\"icon\":\"\",\"target\":58,\"title\":\"Anatolia central Turquía Tours.\",\"type\":\"tourCat\"},{\"text\":\"Turquía mediterránea Tours\",\"href\":\"turqu-a-mediterr-nea-tours\",\"icon\":\"\",\"target\":59,\"title\":\"Turquía mediterránea Tours\",\"type\":\"tourCat\"},{\"text\":\"Turquía del Mar Negro Tours\",\"href\":\"turqu-a-del-mar-negro-tours\",\"icon\":\"\",\"target\":60,\"title\":\"Turquía del Mar Negro Tours\",\"type\":\"tourCat\"},{\"text\":\"Excursiones por la Costa de  Turquía\",\"href\":\"excursiones-por-la-costa-de-turqu-a\",\"icon\":\"\",\"target\":61,\"title\":\"Excursiones por la Costa de  Turquía\",\"type\":\"tourCat\"},{\"text\":\"Viajes especiales Turquía\",\"href\":\"viajes-especiales-turqu-a\",\"icon\":\"\",\"target\":46,\"title\":\"Viajes especiales Turquía\",\"type\":\"tourCat\"}]},{\"text\":\"GRANDE OFERTA Turquía Tours !!!\",\"href\":\"grande-oferta-turqu-a-tours\",\"icon\":\"\",\"target\":62,\"title\":\"GRANDE OFERTA Turquía Tours !!!\",\"type\":\"tourCat\",\"children\":[{\"text\":\"Tours de trekking & senderismo  Turquia\",\"href\":\"tours-de-trekking-senderismo-turquia\",\"icon\":\"\",\"target\":63,\"title\":\"Tours de trekking & senderismo  Turquia\",\"type\":\"tourCat\"},{\"text\":\"Turismo médico en Turquía\",\"href\":\"turismo-m-dico-en-turqu-a\",\"icon\":\"\",\"target\":64,\"title\":\"Turismo médico en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours de Luna de Miel Turquia\",\"href\":\"tours-de-luna-de-miel-turquia\",\"icon\":\"\",\"target\":65,\"title\":\"Tours de Luna de Miel Turquia\",\"type\":\"tourCat\"},{\"text\":\"Tours de yoga en Turquía\",\"href\":\"tours-de-yoga-en-turqu-a\",\"icon\":\"\",\"target\":66,\"title\":\"Tours de yoga en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours para Señoras en Turquía\",\"href\":\"tours-para-se-oras-en-turqu-a\",\"icon\":\"\",\"target\":67,\"title\":\"Tours para Señoras en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Viajes para estudiantes en Turquía\",\"href\":\"viajes-para-estudiantes-en-turqu-a\",\"icon\":\"\",\"target\":68,\"title\":\"Viajes para estudiantes en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours de compras en Turquía\",\"href\":\"tours-de-compras-en-turqu-a\",\"icon\":\"\",\"target\":69,\"title\":\"Tours de compras en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Alquiler de barcos Turquía\",\"href\":\"alquiler-de-barcos-turqu-a\",\"icon\":\"\",\"target\":70,\"title\":\"Alquiler de barcos Turquía\",\"type\":\"tourCat\"},{\"text\":\"Organizaciones de Bodas en Turquia\",\"href\":\"organizaciones-de-bodas-en-turquia\",\"icon\":\"\",\"target\":71,\"title\":\"Organizaciones de Bodas en Turquia\",\"type\":\"tourCat\"},{\"text\":\"Tours de lujo en Turquía\",\"href\":\"tours-de-lujo-en-turqu-a\",\"icon\":\"\",\"target\":72,\"title\":\"Tours de lujo en Turquía\",\"type\":\"tourCat\"}]},{\"text\":\"Tours con la salida desde ciudades\",\"href\":\"tours-con-la-salida-desde-ciudades\",\"icon\":\"\",\"target\":47,\"title\":\"Tours con la salida desde ciudades\",\"type\":\"tourCat\",\"children\":[{\"text\":\"Tours desde Estambul\",\"href\":\"tours-desde-estambul\",\"icon\":\"\",\"target\":73,\"title\":\"Tours desde Estambul\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Izmir\",\"href\":\"tours-desde-izmir\",\"icon\":\"\",\"target\":74,\"title\":\"Tours desde Izmir\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Antalya\",\"href\":\"tours-desde-antalya\",\"icon\":\"\",\"target\":75,\"title\":\"Tours desde Antalya\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Ankara\",\"href\":\"tours-desde-ankara\",\"icon\":\"\",\"target\":76,\"title\":\"Tours desde Ankara\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Trabzon y Samsun\",\"href\":\"tours-desde-trabzon-y-samsun\",\"icon\":\"\",\"target\":77,\"title\":\"Tours desde Trabzon y Samsun\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Kars - Erzurum\",\"href\":\"tours-desde-kars---erzurum\",\"icon\":\"\",\"target\":78,\"title\":\"Tours desde Kars - Erzurum\",\"type\":\"tourCat\"},{\"text\":\"Tours desde Urfa - Mardin - Gaziantep\",\"href\":\"tours-desde-urfa---mardin---gaziantep\",\"icon\":\"\",\"target\":79,\"title\":\"Tours desde Urfa - Mardin - Gaziantep\",\"type\":\"tourCat\"}]},{\"text\":\"Tours por días\",\"href\":\"tours-por-d-as\",\"icon\":\"\",\"target\":48,\"title\":\"Tours por días\",\"type\":\"tourCat\",\"children\":[{\"text\":\"Tours de 2 a 4 días\",\"href\":\"tours-de-2-a-4-d-as\",\"icon\":\"\",\"target\":80,\"title\":\"Tours de 2 a 4 días\",\"type\":\"tourCat\"},{\"text\":\"Tours de 5 a 7 días\",\"href\":\"tours-de-5-a-7-d-as\",\"icon\":\"\",\"target\":81,\"title\":\"Tours de 5 a 7 días\",\"type\":\"tourCat\"},{\"text\":\"Tours de 8 a 10 días\",\"href\":\"tours-de-8-a-10-d-as\",\"icon\":\"\",\"target\":82,\"title\":\"Tours de 8 a 10 días\",\"type\":\"tourCat\"},{\"text\":\"Tours de 11 a 14 días\",\"href\":\"tours-de-11-a-14-d-as\",\"icon\":\"\",\"target\":83,\"title\":\"Tours de 11 a 14 días\",\"type\":\"tourCat\"},{\"text\":\"Tours de 15 a 25 días\",\"href\":\"tours-de-15-a-25-d-as\",\"icon\":\"\",\"target\":84,\"title\":\"Tours de 15 a 25 días\",\"type\":\"tourCat\"}]},{\"text\":\"Tours de fe Religiosa en Turquía\",\"href\":\"tours-de-fe-religiosa-en-turqu-a\",\"icon\":\"\",\"target\":49,\"title\":\"Tours de fe Religiosa en Turquía\",\"type\":\"tourCat\",\"children\":[{\"text\":\"las Siete Iglesias del Apocalipsis Tour\",\"href\":\"las-siete-iglesias-del-apocalipsis-tour\",\"icon\":\"\",\"target\":85,\"title\":\"las Siete Iglesias del Apocalipsis Tour\",\"type\":\"tourCat\"},{\"text\":\"Tours de monumentos islámicos en Turquía\",\"href\":\"tours-de-monumentos-isl-micos-en-turqu-a\",\"icon\":\"\",\"target\":86,\"title\":\"Tours de monumentos islámicos en Turquía\",\"type\":\"tourCat\"}]},{\"text\":\"Tours por Varios Paises\",\"href\":\"tours-por-varios-paises\",\"icon\":\"\",\"target\":50,\"title\":\"Tours por Varios Paises\",\"type\":\"tourCat\"},{\"text\":\"Excursiones de Grupos Garantizadas\",\"href\":\"excursiones-de-grupos-garantizadas\",\"icon\":\"\",\"target\":51,\"title\":\"Excursiones de Grupos Garantizadas\",\"type\":\"tourCat\"},{\"text\":\"GRANDE OFERTA ! Tours de última hora\",\"href\":\"grande-oferta-tours-de-ltima-hora\",\"icon\":\"\",\"target\":52,\"title\":\"GRANDE OFERTA ! Tours de última hora\",\"type\":\"tourCat\"},{\"text\":\"Excursiones por la Costa de  Turquía\",\"href\":\"excursiones-por-la-costa-de-turqu-a\",\"icon\":\"\",\"target\":61,\"title\":\"Excursiones por la Costa de  Turquía\",\"type\":\"tourCat\"}]},{\"text\":\"Viajes especiales Turquía\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-3.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"GRANDE OFERTA Turquía Tours !!!\",\"href\":\"grande-oferta-turqu-a-tours\",\"icon\":\"\",\"target\":62,\"title\":\"GRANDE OFERTA Turquía Tours !!!\",\"type\":\"tourCat\"},{\"text\":\"Tours de trekking & senderismo  Turquia\",\"href\":\"tours-de-trekking-senderismo-turquia\",\"icon\":\"\",\"target\":63,\"title\":\"Tours de trekking & senderismo  Turquia\",\"type\":\"tourCat\"},{\"text\":\"Turismo médico en Turquía\",\"href\":\"turismo-m-dico-en-turqu-a\",\"icon\":\"\",\"target\":64,\"title\":\"Turismo médico en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours de Luna de Miel Turquia\",\"href\":\"tours-de-luna-de-miel-turquia\",\"icon\":\"\",\"target\":65,\"title\":\"Tours de Luna de Miel Turquia\",\"type\":\"tourCat\"},{\"text\":\"Tours de yoga en Turquía\",\"href\":\"tours-de-yoga-en-turqu-a\",\"icon\":\"\",\"target\":66,\"title\":\"Tours de yoga en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours para Señoras en Turquía\",\"href\":\"tours-para-se-oras-en-turqu-a\",\"icon\":\"\",\"target\":67,\"title\":\"Tours para Señoras en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Viajes para estudiantes en Turquía\",\"href\":\"viajes-para-estudiantes-en-turqu-a\",\"icon\":\"\",\"target\":68,\"title\":\"Viajes para estudiantes en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours de compras en Turquía\",\"href\":\"tours-de-compras-en-turqu-a\",\"icon\":\"\",\"target\":69,\"title\":\"Tours de compras en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Alquiler de barcos Turquía\",\"href\":\"alquiler-de-barcos-turqu-a\",\"icon\":\"\",\"target\":70,\"title\":\"Alquiler de barcos Turquía\",\"type\":\"tourCat\"},{\"text\":\"Organizaciones de Bodas en Turquia\",\"href\":\"organizaciones-de-bodas-en-turquia\",\"icon\":\"\",\"target\":71,\"title\":\"Organizaciones de Bodas en Turquia\",\"type\":\"tourCat\"},{\"text\":\"Tours de lujo en Turquía\",\"href\":\"tours-de-lujo-en-turqu-a\",\"icon\":\"\",\"target\":72,\"title\":\"Tours de lujo en Turquía\",\"type\":\"tourCat\"},{\"text\":\"Tours de Göbeklitepe en Turquía\",\"href\":\"tours-de-gobeklitepe-en-turqu-a\",\"icon\":\"\",\"target\":88,\"title\":\"Tours de Göbeklitepe en Turquía\",\"type\":\"tourCat\"}]},{\"text\":\"Viajes especiales Turquía\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-4.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"Cuna de civilizaciones Sureste de Anatolia, Tour Turquía - 9 Días\",\"href\":\"cuna-de-civilizaciones-sureste-de-anatolia-tour-turqu-a---9-d-as\",\"icon\":\"\",\"target\":202,\"title\":\"Cuna de civilizaciones Sureste de Anatolia, Tour Turquía - 9 Días\",\"type\":\"tour\"},{\"text\":\" Cuna de civilizaciones Este y sureste de Anatolia Tour Turquía - 13 Días\",\"href\":\"cuna-de-civilizaciones-este-y-sureste-de-anatolia-tour-turqu-a---13-d-as\",\"icon\":\"\",\"target\":201,\"title\":\" Cuna de civilizaciones Este y sureste de Anatolia Tour Turquía - 13 Días\",\"type\":\"tour\"},{\"text\":\"Tour por Turquía y Crucero por las islas de Grecia  - 10 Días\",\"href\":\"tour-por-turqu-a-y-crucero-por-las-islas-de-grecia---10-d-as\",\"icon\":\"\",\"target\":200,\"title\":\"Tour por Turquía y Crucero por las islas de Grecia  - 10 Días\",\"type\":\"tour\"},{\"text\":\"Gran Tour de Turquía por el Mar Negro -14 Días\",\"href\":\"gran-tour-de-turqu-a-por-el-mar-negro--14-d-as\",\"icon\":\"\",\"target\":199,\"title\":\"Gran Tour de Turquía por el Mar Negro -14 Días\",\"type\":\"tour\"},{\"text\":\"Tour de Turquía por el Mar Negro - 7 días Ankara - Ankara\",\"href\":\"tour-de-turqu-a-por-el-mar-negro---7-d-as-ankara---ankara\",\"icon\":\"\",\"target\":198,\"title\":\"Tour de Turquía por el Mar Negro - 7 días Ankara - Ankara\",\"type\":\"tour\"},{\"text\":\"Tour de Turquía & Georgia por el Mar Negro - 5 días\",\"href\":\"tour-de-turqu-a-georgia-por-el-mar-negro---5-d-as\",\"icon\":\"\",\"target\":197,\"title\":\"Tour de Turquía & Georgia por el Mar Negro - 5 días\",\"type\":\"tour\"},{\"text\":\"Tour de Turquía por el Mar Negro - 8 Días\",\"href\":\"tour-de-turqu-a-por-el-mar-negro---8-d-as\",\"icon\":\"\",\"target\":196,\"title\":\"Tour de Turquía por el Mar Negro - 8 Días\",\"type\":\"tour\"}]},{\"text\":\"GRANDE OFERTA Turquía Tours\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"sablonFile\":\"style-4.php\",\"baslikdurum\":\"on\",\"type\":\"sablon\",\"children\":[{\"text\":\"Trekking por las tierras altas de Fethiye y Cameli - 7 días\",\"href\":\"trekking-por-las-tierras-altas-de-fethiye-y-cameli---7-d-as\",\"icon\":\"\",\"target\":129,\"title\":\"Trekking por las tierras altas de Fethiye y Cameli - 7 días\",\"type\":\"tour\"},{\"text\":\"Trekking por las mesetas del Mar Negro en Turquía - 7 días\",\"href\":\"trekking-por-las-mesetas-del-mar-negro-en-turqu-a---7-d-as\",\"icon\":\"\",\"target\":128,\"title\":\"Trekking por las mesetas del Mar Negro en Turquía - 7 días\",\"type\":\"tour\"},{\"text\":\"Tour de escalada al Monte Ararat en Turquía - 6 Días\",\"href\":\"tour-de-escalada-al-monte-ararat-en-turqu-a---6-d-as\",\"icon\":\"\",\"target\":127,\"title\":\"Tour de escalada al Monte Ararat en Turquía - 6 Días\",\"type\":\"tour\"},{\"text\":\"Tour de Senderismo Capadocia Turquía - 8 Días\",\"href\":\"tour-de-senderismo-capadocia-turqu-a---8-d-as\",\"icon\":\"\",\"target\":126,\"title\":\"Tour de Senderismo Capadocia Turquía - 8 Días\",\"type\":\"tour\"},{\"text\":\" Tour de senderismo Lycian Way Turquía - 6 Días\",\"href\":\"tour-de-senderismo-lycian-way-turqu-a---6-d-as\",\"icon\":\"\",\"target\":124,\"title\":\" Tour de senderismo Lycian Way Turquía - 6 Días\",\"type\":\"tour\"},{\"text\":\"Tour clásico de Turquía - 9 días   \",\"href\":\"tour-cl-sico-de-turqu-a---9-d-as\",\"icon\":\"\",\"target\":123,\"title\":\"Tour clásico de Turquía - 9 días   \",\"type\":\"tour\"},{\"text\":\"Misteriosa gira de Turquía por Jonia y Panfilia - 8 Días\",\"href\":\"misteriosa-gira-de-turqu-a-por-jonia-y-panfilia---8-d-as\",\"icon\":\"\",\"target\":122,\"title\":\"Misteriosa gira de Turquía por Jonia y Panfilia - 8 Días\",\"type\":\"tour\"}]}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_langs`
--

DROP TABLE IF EXISTS `nictr_langs`;
CREATE TABLE IF NOT EXISTS `nictr_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `subtitle` text COLLATE utf8_turkish_ci NOT NULL,
  `img` text COLLATE utf8_turkish_ci NOT NULL,
  `url` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_langs`
--

INSERT INTO `nictr_langs` (`id`, `title`, `subtitle`, `img`, `url`) VALUES
(1, 'TÜRKÇE', 'TR', '027-turkey.png', 'tr'),
(2, 'ENGLISH', 'EN', '002-united-kingdom.png', 'en'),
(3, 'DEUTSCH', 'DE', '006-germany.png', 'de'),
(4, 'FRENCH', 'FR', '003-france.png', 'fr'),
(5, 'ARABIC', 'AR', '003-france.png', 'ar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_langs_meta`
--

DROP TABLE IF EXISTS `nictr_langs_meta`;
CREATE TABLE IF NOT EXISTS `nictr_langs_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langID` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_langs_meta`
--

INSERT INTO `nictr_langs_meta` (`id`, `langID`, `type`, `type_meta`) VALUES
(1, 1, 'kategori', 'kategori'),
(2, 1, 'sayfa', 'sayfa'),
(3, 1, 'yazi', 'yazi'),
(4, 1, 'bizişimdiara', 'Bizi Şimdi Ara'),
(5, 2, 'bizişimdiara', 'Call Us Now'),
(6, 1, 'kalkisnoktasi', 'Kalkış Noktası'),
(7, 1, 'tarihsecin', 'Kalkış Tarihi'),
(8, 1, 'varisNoktasi', 'Varış Noktası'),
(9, 1, 'kisisayisi', 'Kişi Sayısı'),
(10, 1, 'ara', 'Ara'),
(11, 2, 'kalkisnoktasi', 'Point of departure'),
(12, 2, 'tarihsecin', 'Departure date'),
(13, 2, 'varisNoktasi', 'Point of destination'),
(14, 2, 'kisisayisi', 'Number of Persons'),
(15, 2, 'ara', 'Search'),
(16, 1, 'resimyok', 'Resim Yok'),
(17, 2, 'resimyok', 'No image'),
(18, 1, 'bizitakipedin', 'Bizi Takip Edin'),
(19, 2, 'bizitakipedin', 'Follow Us'),
(20, 1, 'maksimum', 'Maksimum'),
(21, 2, 'maksimum', 'maximum'),
(22, 1, 'bagaj', 'Bagaj'),
(23, 2, 'bagaj', 'Luggage'),
(24, 1, 'kişi', 'Kişi'),
(25, 2, 'kişi', 'People'),
(26, 1, 'rezervasyonyap', 'Rezervasyon Yap'),
(27, 2, 'rezervasyonyap', 'Make a reservation'),
(28, 1, 'yolculukbilgileri', 'Yolculuk Bilgileri'),
(29, 2, 'yolculukbilgileri', 'Trip Information'),
(30, 1, 'mesafe', 'Toplam mesafe'),
(31, 1, 'tvs', 'Tahmini varış süresi'),
(32, 2, 'mesafe', 'Total distance'),
(33, 2, 'tvs', 'Estimated time of arrival'),
(34, 1, 'ekozellikler', 'Ek Özellikler'),
(35, 2, 'ekozellikler', 'Additional features'),
(36, 1, 'odemebilgileri', 'Rezervasyon Bilgileri'),
(37, 2, 'odemebilgileri', 'Reservation Information'),
(38, 1, 'aracucreti', 'Araç Ücreti'),
(39, 2, 'aracucreti', 'Vehicle Fee'),
(40, 1, 'odenecektutar', 'Ödenecek Tutar'),
(41, 2, 'odenecektutar', 'Amount to be paid'),
(42, 1, 'sepettutari', 'Sepet Tutarı'),
(43, 2, 'sepettutari', 'Basket Amount'),
(44, 1, 'kdv', 'KDV'),
(45, 2, 'kdv', 'VAT'),
(46, 1, 'toplamtutar', 'Toplam Tutar'),
(47, 2, 'toplamtutar', 'Total Amount'),
(48, 1, 'odemeyap', 'Ödeme Yap'),
(49, 2, 'odemeyap', 'Pay'),
(50, 1, 'yolcubilgileri', 'Yolcu bilgileri'),
(51, 2, 'yolcubilgileri', 'Passenger information'),
(52, 1, 'isimsoyisim', 'İsim Soyisim'),
(53, 1, 'tcno', 'T.C. Kimlik NO'),
(54, 1, 'pasaportno', 'Pasaport No'),
(55, 1, 'heskodu', 'HES Kodu'),
(56, 1, 'telefon', 'Telefon'),
(57, 1, 'eposta', 'E-posta'),
(58, 1, 'dogumtarihi', 'Doğum Tarihi'),
(59, 2, 'isimsoyisim', 'Name Surname'),
(60, 2, 'tcno', 'Identification number'),
(61, 2, 'pasaportno', 'Passport number'),
(62, 2, 'heskodu', 'HES Code'),
(63, 2, 'telefon', 'Phone'),
(64, 2, 'eposta', 'E-mail'),
(65, 2, 'dogumtarihi', 'Date of birth'),
(66, 1, 'vatandasdegilim', 'Ben türkiye cumhuriyeti vatandaşı değilim!'),
(67, 2, 'vatandasdegilim', 'I am not a citizen of the Republic of Turkey!'),
(68, 1, 'ilgilikisi', 'İlgili Kişi'),
(69, 2, 'ilgilikisi', 'Related person'),
(70, 1, 'odemebasarili', 'Ödeme Başarılı bir şekilde alınmıştır.'),
(71, 2, 'odemebasarili', 'Payment Received Successfully.'),
(72, 1, 'islembasarili', 'İşlem Başarılı'),
(73, 2, 'islembasarili', 'Operation Success'),
(74, 1, 'islembasarisiz', 'İşlem Başarısız'),
(75, 2, 'islembasarisiz', 'Operation Failed'),
(78, 3, 'kategori', 'kategorie'),
(79, 3, 'sayfa', 'seite'),
(80, 3, 'yazi', 'schreiben'),
(81, 3, 'bizişimdiara', 'Ruf uns jetzt an'),
(82, 3, 'kalkisnoktasi', 'Ausstiegspunkt'),
(83, 3, 'tarihsecin', 'Veröffentlichungsdatum'),
(84, 3, 'varisNoktasi', 'Ziel'),
(85, 3, 'kisisayisi', 'Anzahl der Personen'),
(86, 3, 'ara', 'Suche'),
(87, 3, 'resimyok', 'kein Bild hinzugefügt'),
(88, 3, 'bizitakipedin', 'Folge uns'),
(89, 3, 'maksimum', 'maximal'),
(90, 3, 'bagaj', 'Gepäck'),
(91, 3, 'kişi', 'Person'),
(92, 3, 'rezervasyonyap', 'eine Reservierung machen'),
(93, 3, 'yolculukbilgileri', 'Reiseinformation'),
(94, 3, 'mesafe', 'Distanz'),
(95, 3, 'tvs', 'Geschätzte Ankunftszeit'),
(96, 3, 'ekozellikler', 'Zusatzfunktionen'),
(97, 3, 'odemebilgileri', 'Zahlungsinformationen'),
(98, 3, 'aracucreti', 'Fahrzeuggebühr'),
(99, 3, 'odenecektutar', 'Geld zahlbar'),
(100, 3, 'sepettutari', 'Warenkorbbetrag'),
(101, 3, 'kdv', 'MwSt.'),
(102, 3, 'toplamtutar', 'Gesamtsumme'),
(103, 3, 'odemeyap', 'Gesamtsaldo'),
(104, 3, 'yolcubilgileri', 'Fahrgastinformationen'),
(105, 3, 'isimsoyisim', 'Vorname Nachname'),
(106, 3, 'tcno', 'Identifikationsnummer'),
(107, 3, 'pasaportno', 'Ausweisnummer'),
(108, 3, 'heskodu', 'Hes-Code'),
(109, 3, 'telefon', 'Telefon'),
(110, 3, 'eposta', 'Email'),
(111, 3, 'dogumtarihi', 'Geburtsdatum'),
(112, 3, 'vatandasdegilim', 'Ich bin kein Staatsbürger der Republik Türkei'),
(113, 3, 'ilgilikisi', 'berechtigte Person'),
(114, 3, 'odemebasarili', 'Bezahlung erfolgreich'),
(115, 3, 'islembasarili', 'Transaktion Erfolgreich'),
(116, 3, 'islembasarisiz', 'Operation fehlgeschlagen'),
(117, 1, 'kategoriler', 'Kategoriler'),
(118, 2, 'kategoriler', 'Categories'),
(119, 3, 'kategoriler', 'Kategorien'),
(120, 1, 'sonhaberler', 'Son Haberler'),
(121, 2, 'sonhaberler', 'Latest News'),
(122, 3, 'sonhaberler', 'Neuesten Nachrichten'),
(123, 2, 'sayfa', 'page'),
(124, 2, 'yazi', 'post'),
(125, 2, 'kategori', 'category'),
(126, 1, 'ofis', 'Ofis'),
(127, 2, 'ofis', 'Office'),
(128, 3, 'ofis', 'Office'),
(129, 1, 'mesajgonder', 'Mesajı gönder'),
(130, 2, 'mesajgonder', 'Send to message'),
(131, 3, 'mesajgonder', 'Nachricht senden'),
(132, 1, 'merhaba', 'Merhaba'),
(133, 2, 'merhaba', 'Hi'),
(134, 3, 'merhaba', 'Hallo'),
(135, 1, 'iletisimbilgileriniz', 'İletişim Bilgileriniz'),
(136, 2, 'iletisimbilgileriniz', 'Your Contact Information'),
(137, 3, 'iletisimbilgileriniz', 'Ihre Kontaktinformationen'),
(138, 1, 'ourmail', 'E-posta adresiniz'),
(139, 2, 'ourmail', 'E-Mail Address'),
(140, 3, 'ourmail', 'E-Mail-Addresse'),
(141, 1, 'konu', 'E-posta adresiniz'),
(142, 2, 'konu', 'E-Mail Address'),
(143, 3, 'konu', 'E-Mail-Addresse'),
(144, 1, 'message', 'Mesajınız'),
(145, 2, 'message', 'your message'),
(146, 3, 'message', 'deine Nachricht'),
(147, 1, 'noreply', 'Lütfen bu maili yanıtlamayınız'),
(148, 2, 'noreply', 'Please do not reply to this email'),
(149, 3, 'noreply', 'Bitte antworten Sie nicht auf diese Email'),
(150, 1, 'aracmodeli', 'Araç modeli'),
(151, 2, 'aracmodeli', 'Vehicle Model'),
(152, 3, 'aracmodeli', 'Fahrzeugmodell'),
(153, 1, 'hizmetdisi', 'Hizmet alanı dışında'),
(154, 2, 'hizmetdisi', 'Out of service area'),
(155, 3, 'hizmetdisi', 'außerhalb des Servicebereichs'),
(156, 1, 'aramahata', 'Arama yapılamadı'),
(157, 2, 'aramahata', 'Search failed'),
(158, 3, 'aramahata', 'Suche fehlgeschlagen'),
(159, 4, 'kategori', 'category'),
(160, 4, 'sayfa', ''),
(161, 4, 'yazi', ''),
(162, 4, 'bizişimdiara', ''),
(163, 4, 'kalkisnoktasi', ''),
(164, 4, 'tarihsecin', ''),
(165, 4, 'varisNoktasi', ''),
(166, 4, 'kisisayisi', ''),
(167, 4, 'ara', ''),
(168, 4, 'resimyok', ''),
(169, 4, 'bizitakipedin', ''),
(170, 4, 'maksimum', ''),
(171, 4, 'bagaj', ''),
(172, 4, 'kişi', ''),
(173, 4, 'rezervasyonyap', ''),
(174, 4, 'yolculukbilgileri', ''),
(175, 4, 'mesafe', ''),
(176, 4, 'tvs', ''),
(177, 4, 'ekozellikler', 'asd'),
(178, 4, 'odemebilgileri', 'asd'),
(179, 4, 'aracucreti', ''),
(180, 4, 'odenecektutar', 'asda'),
(181, 4, 'sepettutari', ''),
(182, 4, 'kdv', ''),
(183, 4, 'toplamtutar', ''),
(184, 4, 'odemeyap', ''),
(185, 4, 'yolcubilgileri', ''),
(186, 4, 'isimsoyisim', ''),
(187, 4, 'tcno', ''),
(188, 4, 'pasaportno', ''),
(189, 4, 'heskodu', ''),
(190, 4, 'telefon', ''),
(191, 4, 'eposta', ''),
(192, 4, 'dogumtarihi', ''),
(193, 4, 'vatandasdegilim', ''),
(194, 4, 'ilgilikisi', ''),
(195, 4, 'odemebasarili', ''),
(196, 4, 'islembasarili', ''),
(197, 4, 'islembasarisiz', ''),
(198, 4, 'kategoriler', ''),
(199, 4, 'sonhaberler', 'sd'),
(200, 4, 'ofis', ''),
(201, 4, 'mesajgonder', ''),
(202, 4, 'merhaba', 'Salutddd'),
(203, 4, 'iletisimbilgileriniz', 'tesdaasdd'),
(204, 4, 'ourmail', 'E-Mail-Addresseasd'),
(205, 4, 'konu', 'teasdasd'),
(206, 4, 'message', 'asdasd'),
(207, 4, 'noreply', 'asd'),
(208, 4, 'aracmodeli', 'asd'),
(209, 4, 'hizmetdisi', 'asd'),
(210, 4, 'aramahata', 'asd'),
(211, 1, 'yolcubilgileri', 'Yolcu bilgileri'),
(212, 2, 'yolcubilgileri', 'Passenger information'),
(213, 3, 'yolcubilgileri', 'Fahrgastinformationen'),
(214, 4, 'yolcubilgileri', 'Informations passagers'),
(215, 1, 'siparisview', 'Siparişi görüntülemek için tıklayınız.'),
(216, 2, 'siparisview', 'Click to view the order.'),
(217, 3, 'siparisview', 'Klicken Sie hier, um die Bestellung anzuzeigen.'),
(218, 4, 'siparisview', 'Cliquez pour voir la commande.'),
(219, 1, 'googlecaptchaerror', 'Robot doğrulaması yapılamadı lütfen sayfayı yenileyiniz!'),
(220, 2, 'googlecaptchaerror', 'Robot verification failed, please refresh the page!'),
(221, 3, 'googlecaptchaerror', 'Roboterüberprüfung fehlgeschlagen, bitte aktualisieren Sie die Seite!'),
(222, 4, 'googlecaptchaerror', 'La vérification du robot a échoué, veuillez actualiser la page !'),
(223, 1, 'formgonderildi', 'Form Gönderildi'),
(224, 2, 'formgonderildi', 'Form submitted'),
(225, 3, 'formgonderildi', 'Formular gesendet'),
(226, 4, 'formgonderildi', 'Formulaire soumis'),
(227, 1, 'tekrardene', 'Tekrar deneyiniz'),
(228, 2, 'tekrardene', 'Try again'),
(229, 3, 'tekrardene', 'Versuch es noch einmal'),
(230, 4, 'tekrardene', 'Essayer à nouveau');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_log`
--

DROP TABLE IF EXISTS `nictr_log`;
CREATE TABLE IF NOT EXISTS `nictr_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Transaction` text NOT NULL,
  `TransactionDate` timestamp NOT NULL,
  `userIP` text NOT NULL,
  `userOS` text NOT NULL,
  `userLang` text NOT NULL,
  `userAgent` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_log`
--

INSERT INTO `nictr_log` (`ID`, `Transaction`, `TransactionDate`, `userIP`, `userOS`, `userLang`, `userAgent`) VALUES
(1, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:12:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(2, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:20:35', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(3, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:28:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(4, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:28:54', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(5, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:29:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(6, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:30:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(7, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:30:03', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(8, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-20 19:35:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(9, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:35:34', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(10, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:36:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(11, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:37:05', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(12, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-20 19:38:41', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(13, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:38:45', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(14, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:38:48', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(15, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:39:19', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(16, 'asd', '2022-03-24 17:05:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(17, 'asd', '2022-03-24 17:42:07', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(18, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(19, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(20, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(21, 'asd', '2022-03-24 17:42:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(22, 'asd', '2022-03-24 17:42:49', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(23, 'asd', '2022-03-24 17:42:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(24, 'asd', '2022-03-24 17:42:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(25, 'asd', '2022-03-24 17:42:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(26, 'asd', '2022-03-24 17:45:37', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(27, 'asd', '2022-03-24 17:46:04', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(28, 'asd', '2022-03-24 17:46:08', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(29, 'asd', '2022-03-24 17:46:23', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(30, 'asd', '2022-03-24 17:47:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(31, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 05:24:16', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(32, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 05:24:27', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(33, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:06:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(34, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:15:42', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(35, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:19:18', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(36, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:21:04', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(37, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:21:36', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(38, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(39, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:25', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(40, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:25:45', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(41, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:59', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(42, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(43, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:52', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(44, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:53', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(45, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:53', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(46, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:34', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(47, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:49', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(48, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(49, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:59', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(50, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:28:52', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(51, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:30:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(52, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:32:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(53, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:32:32', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(54, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:33:20', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(55, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:33:38', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(56, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:34:21', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(57, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:34:26', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(58, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:35', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(59, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:39', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(60, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:41', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(61, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(62, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(63, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(64, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(65, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(66, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(67, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(68, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(69, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(70, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(71, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(72, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:37:06', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(73, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:37:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(74, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:37:25', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(75, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:38:17', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(76, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:38:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(77, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(78, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:42', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(79, 'Yönetici paneline giriş için yetersiz yetki. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:54', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(80, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:41:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(81, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:50:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(82, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:51:58', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(83, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:52:21', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(84, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:14:22', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(85, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:14:26', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(86, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:15:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(87, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:15:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(88, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:16:19', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(89, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 12:19:46', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(90, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 12:19:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(91, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-26 13:02:17', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_ban`
--

DROP TABLE IF EXISTS `nictr_login_ban`;
CREATE TABLE IF NOT EXISTS `nictr_login_ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` text COLLATE utf8_turkish_ci NOT NULL,
  `endDate` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_ban`
--

INSERT INTO `nictr_login_ban` (`id`, `startDate`, `endDate`, `ip`) VALUES
(3, '25.03.2022', '2022.03.25 10:54:30', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_error`
--

DROP TABLE IF EXISTS `nictr_login_error`;
CREATE TABLE IF NOT EXISTS `nictr_login_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `date` text COLLATE utf8_turkish_ci NOT NULL,
  `browser` text COLLATE utf8_turkish_ci NOT NULL,
  `os` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL,
  `userAgent` text COLLATE utf8_turkish_ci NOT NULL,
  `username` text COLLATE utf8_turkish_ci NOT NULL,
  `password` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_error`
--

INSERT INTO `nictr_login_error` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`, `username`, `password`) VALUES
(1, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(2, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(3, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(4, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(5, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(6, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(7, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(8, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(9, 6, '13.12.2021', 'Opera', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61', 'demo@internettescil.com.tr', '12345'),
(10, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(11, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.a'),
(12, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.a'),
(13, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(14, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(15, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(16, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(17, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', 'asd'),
(18, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', 'asd'),
(19, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021'),
(20, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021'),
(21, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021'),
(22, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_info`
--

DROP TABLE IF EXISTS `nictr_login_info`;
CREATE TABLE IF NOT EXISTS `nictr_login_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `date` text COLLATE utf8_turkish_ci NOT NULL,
  `browser` text COLLATE utf8_turkish_ci NOT NULL,
  `os` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL,
  `userAgent` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_info`
--

INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(1, 1, '29.11.2021', 'Chrome', 'Android 6', '212.133.232.221', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36'),
(2, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(3, 1, '30.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(4, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(5, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(6, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(7, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(8, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(9, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(10, 1, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(11, 6, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(12, 6, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(13, 1, '06.12.2021', 'Chrome', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(14, 6, '07.12.2021', 'Opera', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(15, 6, '07.12.2021', 'Opera', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(16, 1, '08.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(17, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(18, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(19, 6, '09.12.2021', 'Chrome', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(20, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(21, 1, '10.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(274, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(275, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(276, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(277, 1, '19.05.2021', 'Chrome', 'Android 10', '188.58.47.130', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36'),
(278, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(279, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(280, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(281, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(282, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(283, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(284, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(285, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(286, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(287, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(288, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(289, 1, '21.05.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(290, 2, '22.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(291, 1, '22.05.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(292, 2, '22.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(293, 2, '28.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(294, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(295, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(296, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(297, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(298, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(299, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(300, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(301, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(302, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(303, 2, '31.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(304, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(305, 1, '01.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(306, 1, '01.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(307, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(308, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(309, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(310, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(311, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(312, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(313, 1, '03.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(314, 1, '03.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(315, 2, '03.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(316, 1, '04.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(317, 1, '05.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(318, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(319, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(320, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(321, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(322, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(323, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(324, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(325, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(326, 2, '07.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(327, 2, '08.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(328, 1, '08.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(329, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(330, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(331, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(332, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(333, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(334, 1, '10.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(335, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(336, 1, '10.06.2021', 'Chrome', 'Android 10', '31.142.70.181', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36'),
(337, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(338, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(339, 1, '11.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(340, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(341, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(342, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(343, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(344, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(345, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(346, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(347, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(348, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(349, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(350, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(351, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(352, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(353, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(354, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(355, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(356, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(357, 1, '13.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(358, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(359, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(360, 1, '14.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(361, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(362, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(363, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(364, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(365, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(366, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(367, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(368, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(369, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(370, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(371, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(372, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(373, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(374, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(375, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(376, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(377, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(378, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(379, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(380, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(381, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(382, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(383, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(384, 1, '16.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(385, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(386, 3, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(387, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(388, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(389, 3, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(390, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(391, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(392, 2, '18.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(393, 2, '18.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(394, 2, '19.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(395, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(396, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(397, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(398, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(399, 2, '20.06.2021', 'Chrome', 'Windows 10', '188.58.14.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(400, 2, '20.06.2021', 'Chrome', 'Windows 10', '188.58.14.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(401, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(402, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(403, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(404, 2, '25.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(405, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(406, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(407, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(408, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(409, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(410, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(411, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(412, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(413, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(414, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(415, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(416, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(417, 2, '28.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(418, 2, '28.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(419, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(420, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(421, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(422, 1, '29.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(423, 1, '30.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(424, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(425, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(426, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(427, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(428, 1, '30.06.2021', 'Chrome', 'Android 10', '178.240.182.115', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36'),
(429, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(430, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(431, 1, '30.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(432, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(433, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(434, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(435, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(436, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(437, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(438, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(439, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(440, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(441, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(442, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(443, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(444, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(445, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(446, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(447, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(448, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(449, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(450, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(451, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(452, 2, '04.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(453, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(454, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(455, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(456, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(457, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(458, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(459, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(460, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(461, 1, '07.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(462, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(463, 1, '07.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(464, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(465, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(466, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(467, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(468, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(469, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(470, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(471, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(472, 1, '08.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(473, 2, '09.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(474, 1, '09.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(475, 2, '09.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(476, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(477, 1, '10.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(478, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(479, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(480, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(481, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(482, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(483, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(484, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(485, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(486, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(487, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(488, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(489, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(490, 2, '13.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(491, 2, '13.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(492, 2, '14.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(493, 2, '14.07.2021', 'Chrome', 'Windows 10', '78.187.21.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(494, 2, '14.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(495, 1, '15.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(496, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(497, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(498, 1, '15.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(499, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(500, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(501, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(502, 2, '16.07.2021', 'Chrome', 'Windows 10', '178.246.207.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(503, 2, '21.07.2021', 'Chrome', 'Windows 10', '5.24.163.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(504, 2, '23.07.2021', 'Chrome', 'Windows 10', '5.24.98.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(505, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.129.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(506, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.129.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(507, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.159.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(508, 2, '25.07.2021', 'Chrome', 'Windows 10', '178.240.132.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(509, 1, '26.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(510, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(511, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(512, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(513, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(514, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(515, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(516, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(517, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(518, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.55.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(519, 2, '28.07.2021', 'Chrome', 'Windows 10', '31.142.55.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(520, 1, '29.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(521, 1, '30.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(522, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(523, 2, '31.07.2021', 'Chrome', 'Windows 10', '31.142.105.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(524, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(525, 2, '31.07.2021', 'Chrome', 'Windows 10', '31.142.105.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36');
INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(526, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(527, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(528, 1, '02.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(529, 2, '08.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(530, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(531, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(532, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(533, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(534, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(535, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(536, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(537, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(538, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(539, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(540, 1, '10.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(541, 1, '10.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(542, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(543, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(544, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(545, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(546, 2, '12.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(547, 2, '14.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(548, 2, '14.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(549, 1, '15.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(550, 2, '16.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(551, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(552, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(553, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(554, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(555, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(556, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(557, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(558, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(559, 1, '18.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(560, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(561, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(562, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(563, 2, '20.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(564, 2, '20.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(565, 1, '23.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(566, 1, '30.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(567, 2, '30.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(568, 2, '30.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(569, 1, '31.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(570, 2, '06.09.2021', 'Chrome', 'Windows 10', '176.42.85.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(571, 2, '14.09.2021', 'Chrome', 'Windows 10', '176.234.44.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(572, 1, '14.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(573, 1, '14.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(574, 2, '15.09.2021', 'Chrome', 'Windows 10', '176.234.44.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(575, 1, '15.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(576, 2, '22.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(577, 2, '22.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(578, 2, '23.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(579, 2, '23.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(580, 2, '24.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(581, 2, '26.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(582, 2, '27.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(583, 1, '27.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(584, 2, '27.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(585, 1, '27.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(586, 1, '27.09.2021', 'Chrome', 'Android 10', '77.67.154.46', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Mobile Safari/537.36'),
(587, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(588, 1, '28.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(589, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(590, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(591, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(592, 1, '28.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(593, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(594, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(595, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(596, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(597, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(598, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(599, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(600, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(601, 1, '30.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(602, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(603, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(604, 1, '30.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(605, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(606, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(607, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(608, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(609, 2, '01.10.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(610, 2, '01.10.2021', 'Chrome', 'Windows 10', '176.40.136.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(611, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(612, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(613, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(614, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(615, 1, '02.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(616, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(617, 2, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(618, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(619, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(620, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(621, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(622, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(623, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(624, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(625, 1, '04.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(626, 1, '04.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(627, 3, '04.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(628, 2, '04.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(629, 3, '05.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(630, 3, '06.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(631, 1, '06.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(632, 3, '06.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(633, 1, '07.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(634, 3, '07.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(635, 3, '07.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(636, 3, '08.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(637, 1, '11.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(638, 2, '11.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(639, 2, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(640, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(641, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(642, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(643, 1, '14.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(644, 2, '14.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(645, 1, '14.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(646, 3, '15.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(647, 1, '15.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(648, 3, '15.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(649, 1, '16.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(650, 1, '16.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(651, 3, '16.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(652, 3, '16.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(653, 3, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(654, 2, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(655, 3, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(656, 2, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(657, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(658, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(659, 1, '19.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(660, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(661, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(662, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(663, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(664, 1, '20.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(665, 2, '20.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(666, 2, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(667, 2, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(668, 3, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(669, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(670, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(671, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(672, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(673, 1, '22.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(674, 2, '23.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(675, 1, '23.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(676, 2, '24.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(677, 2, '24.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(678, 2, '25.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(679, 2, '25.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(680, 1, '26.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(681, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(682, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(683, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(684, 2, '27.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(685, 2, '27.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(686, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(687, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(688, 3, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(689, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(690, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(691, 3, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(692, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(693, 1, '29.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(694, 2, '29.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(695, 2, '29.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(696, 1, '30.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(697, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(698, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(699, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(700, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(701, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(702, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(703, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(704, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(705, 3, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(706, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(707, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(708, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(709, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(710, 2, '02.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(711, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(712, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(713, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(714, 1, '04.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(715, 1, '06.11.2021', 'Chrome', 'Android 10', '78.188.195.38', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.50 Mobile Safari/537.36'),
(716, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(717, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(718, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(719, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(720, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(721, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(722, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(723, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(724, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(725, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(726, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(727, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(728, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(729, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(730, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(731, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(732, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(733, 2, '11.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(734, 1, '11.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(735, 1, '12.11.2021', 'Chrome', 'Android 10', '5.24.114.232', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(736, 1, '12.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(737, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(738, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(739, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(740, 1, '14.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(741, 2, '14.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(742, 2, '14.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(743, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(744, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(745, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(746, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(747, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(748, 1, '16.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(749, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(750, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(751, 1, '16.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(752, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(753, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(754, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(755, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(756, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(757, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(758, 1, '17.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(759, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(760, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(761, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(762, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(763, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(764, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(765, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(766, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(767, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(768, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(769, 1, '18.11.2021', 'Chrome', 'Android 1', '176.89.2.215', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(770, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(771, 1, '19.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(772, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(773, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(774, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(775, 1, '19.11.2021', 'Chrome', 'Android 1', '176.89.2.215', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(776, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(777, 1, '19.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(778, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(779, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(780, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(781, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(782, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(783, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(784, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(785, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(786, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(787, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(788, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(789, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(790, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(791, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(792, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(793, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(794, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(795, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(796, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(797, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(798, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(799, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(800, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36');
INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(801, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(802, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(803, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(804, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(805, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(806, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(807, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(808, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(809, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(810, 1, '25.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(811, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(812, 1, '26.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(813, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(814, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(815, 3, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(816, 3, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(817, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(818, 1, '26.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(819, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(820, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(821, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(822, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(823, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(824, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(825, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(826, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(827, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(828, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(829, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(830, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(831, 3, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(832, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(833, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(834, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(835, 1, '29.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(836, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(837, 3, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(838, 3, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(839, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(840, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(841, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(842, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(843, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(844, 1, '30.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(845, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(846, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(847, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(848, 1, '30.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(849, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(850, 1, '30.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(851, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(852, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(853, 2, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(854, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(855, 2, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(856, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(857, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(858, 1, '01.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(859, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(860, 2, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(861, 3, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(862, 3, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(863, 2, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(864, 2, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(865, 2, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(866, 3, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(867, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(868, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(869, 3, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(870, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(871, 3, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(872, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(873, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(874, 1, '05.12.2021', 'Chrome', 'Android 1', '31.142.67.57', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36'),
(875, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(876, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(877, 3, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(878, 3, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(879, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(880, 1, '05.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(881, 3, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(882, 3, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(883, 2, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(884, 2, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(885, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(886, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(887, 1, '07.12.2021', 'Chrome', 'Windows 10', '31.142.67.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(888, 1, '07.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(889, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(890, 1, '08.12.2021', 'Chrome', 'Windows 10', '212.133.235.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(891, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(892, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(893, 1, '08.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(894, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(895, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(896, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(897, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(898, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(899, 1, '09.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(900, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(901, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(902, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43'),
(903, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(904, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43'),
(905, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(906, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(907, 1, '10.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(908, 6, '13.12.2021', 'Opera', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(909, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(910, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(911, 6, '13.12.2021', 'Opera', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(912, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(913, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(914, 6, '14.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(915, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(916, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(917, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(918, 6, '14.12.2021', 'Opera', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(919, 6, '15.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(920, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(921, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(922, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(923, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(924, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(925, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(926, 6, '17.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(927, 6, '17.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(928, 6, '20.12.2021', 'Chrome', 'Windows 10', '212.133.232.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(929, 1, '20.12.2021', 'Chrome', 'Windows 10', '212.133.232.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(930, 1, '21.12.2021', 'Chrome', 'Windows 10', '212.133.236.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(931, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(932, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(933, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(934, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(935, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(936, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(937, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(938, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(939, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(940, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(941, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(942, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(943, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(944, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(945, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(946, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(947, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(948, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(949, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(950, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(951, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(952, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(953, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(954, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(955, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(956, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(957, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(958, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(959, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(960, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(961, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(962, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(963, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(964, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(965, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(966, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(967, 1, '26.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_mailsetting`
--

DROP TABLE IF EXISTS `nictr_mailsetting`;
CREATE TABLE IF NOT EXISTS `nictr_mailsetting` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `host` text NOT NULL,
  `port` text NOT NULL,
  `encryption` text NOT NULL,
  `mail` text NOT NULL,
  `pass` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_mailsetting`
--

INSERT INTO `nictr_mailsetting` (`id`, `host`, `port`, `encryption`, `mail`, `pass`) VALUES
(1, 'mail.internettescil.com.tr', '587', 'tls', 'ugur.isik@internettescil.com.tr', 'fx20qz60');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_mailtemplate`
--

DROP TABLE IF EXISTS `nictr_mailtemplate`;
CREATE TABLE IF NOT EXISTS `nictr_mailtemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `senderMail` text NOT NULL,
  `senderTitle` text NOT NULL,
  `reciverTemplate` text NOT NULL,
  `adminTemplate` text NOT NULL,
  `sablonmesaji` text NOT NULL,
  `sablonbasligi` text NOT NULL,
  `adminMail` text NOT NULL,
  `adminTitle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_mailtemplate`
--

INSERT INTO `nictr_mailtemplate` (`id`, `type`, `senderMail`, `senderTitle`, `reciverTemplate`, `adminTemplate`, `sablonmesaji`, `sablonbasligi`, `adminMail`, `adminTitle`) VALUES
(1, 'contact', 'info@bikare.work', 'Transfer', '<!DOCTYPE html><html> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style> </head> <body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>{{hi}},<strong> {{name}}</strong></p>\r\n<p style=\"text-align: center;\">{{sablonmesaji}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table style=\"height: 257px;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{iletisimbilgileriniz}}</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{isimsoyisim}}: <strong>{{name}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{ouremail}}: <strong>{{postemail}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{konu}}: <strong>{{postsubjet}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{message}}: <strong>{{postmessage}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '<!DOCTYPE html><html> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box;text-align: center;padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill:blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style> </head> <body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Bir ziyaret&ccedil;i iletişim formunu doldurdu</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>İsim Soyisim : <strong>{{name}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Email Adresi : <strong><a href=\"mailto:{{postemail}}\">{{postemail}}</a></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Konu : <strong>{{postsubjet}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Mesajı : <strong>{{postmessage}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>IP : <strong>{{ip}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı : <strong>{{browser}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı Tipi : <strong>{{header}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>İşletim Sistemi : <strong>{{os}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı Dili : <strong>{{lang}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '{\"TR\":\"İletişim talebiniz alındı. Yetkililerimizden biri en kısa sürede size geri dönecektir.\",\"EN\":\"Your contact request has been received. One of our officials will get back to you as soon as possible.\",\"GE\":\"Ihre Kontaktanfrage ist eingegangen. Einer unserer Mitarbeiter wird sich so schnell wie möglich bei Ihnen melden.\"}', '{\"TR\":\"İletişim Talebi Hakkında\",\"EN\":\"About Contact Request\",\"GE\":\"per Kontaktanfrage\"}', 'peniaugur80@gmail.com', 'Yeni iletişim talebi!'),
(2, 'requestForm', 'info@bikare.work', 'Transfer', '<!DOCTYPE html><html><head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style></head><body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 0px;\">&nbsp;</td>\r\n<td class=\"container\" style=\"width: 580px;\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo_tr.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>{{hi}},<strong>{{name}}</strong></p>\r\n<p style=\"text-align: center;\">{{sablonmesaji}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{siparislink}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{ilgilikisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliadsoyad}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilitelefon}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilidogumtarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilikimlik}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliemail}}</strong></td>\r\n</tr>\r\n</thead>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolculukbilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{kalkisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kalkistarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{varisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kisisayisi}}</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkist}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{varisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolcubilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n{{tablerow}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: right;\">\r\n<h2 style=\"color: #e52d27;\">{{fiyat}}₺</h2>\r\n<small>{{paydate}}</small></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td style=\"width: 0px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '<!DOCTYPE html><html><head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style></head><body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo_tr.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">Yeni bir transfer talebiniz var</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{ilgilikisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliadsoyad}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilitelefon}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilidogumtarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilikimlik}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliemail}}</strong></td>\r\n</tr>\r\n</thead>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolculukbilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{kalkisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kalkistarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{varisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kisisayisi}}</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkist}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{varisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolcubilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n{{tablerow}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: right;\">\r\n<h2 style=\"color: #e52d27;\">{{fiyat}}₺</h2>\r\n<small>{{paydate}}</small></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '{\"TR\":\"Siparişiniz alındı. Yetkililerimizden biri en kısa sürede size geri dönecektir.\",\"EN\":\"Your order has been received. One of our officials will get back to you as soon as possible.\\r\\nYou can click on the link below to view the order.\",\"DE\":\"\",\"FR\":\"\"}', '{\"TR\":\"İletişim Talebi Hakkında\",\"EN\":\"About Contact Request\",\"DE\":\"\",\"FR\":\"\"}', 'peniaugur80@gmail.com', 'Yeni iletişim talebi!');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_menu`
--

DROP TABLE IF EXISTS `nictr_menu`;
CREATE TABLE IF NOT EXISTS `nictr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_langID` int(11) NOT NULL,
  `menu_title` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_position` int(11) NOT NULL,
  `menu_author` int(11) NOT NULL,
  `menu_json` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_menu`
--

INSERT INTO `nictr_menu` (`id`, `menu_langID`, `menu_title`, `menu_position`, `menu_author`, `menu_json`) VALUES
(1, 1, 'Türkçe menü', 1, 1, '[{\"text\":\"Anasayfa\",\"href\":\"anasayfa\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Anasayfa\",\"type\":\"sayfa\"},{\"text\":\"Kurumsal\",\"href\":\"kurumsal\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Kurumsal\",\"type\":\"kategori\",\"children\":[{\"text\":\"Hakkımızda\",\"href\":\"hakkimizda\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Hakkımızda\",\"type\":\"yazi\"},{\"text\":\"Misyonumuz\",\"href\":\"misyonumuz\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Misyonumuz\",\"type\":\"yazi\"},{\"text\":\"Viyonumuz\",\"href\":\"viyonumuz\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Viyonumuz\",\"type\":\"yazi\"}]},{\"text\":\"Hizmetlerimiz\",\"href\":\"hizmetlerimiz\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Hizmetlerimiz\",\"type\":\"kategori\"},{\"text\":\"İletişim\",\"href\":\"iletisim\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"İletişim\",\"type\":\"sayfa\"}]'),
(2, 2, 'English Menü', 1, 1, '[{\"text\":\"Home\",\"href\":\"home\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Home\",\"type\":\"sayfa\"},{\"text\":\"Corporate\",\"href\":\"corporate\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Corporate\",\"type\":\"kategori\",\"children\":[{\"text\":\"About US\",\"href\":\"about-us\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"About US\",\"type\":\"yazi\"},{\"text\":\"Our Mission\",\"href\":\"our-mission\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Our Mission\",\"type\":\"yazi\"},{\"text\":\"Our vision\",\"href\":\"our-vision\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"our vision\",\"type\":\"yazi\"}]},{\"text\":\"Our Services\",\"href\":\"our-services\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Our Services\",\"type\":\"kategori\"},{\"text\":\"Contact\",\"href\":\"contact\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Contact\",\"type\":\"sayfa\"}]'),
(3, 1, 'türkçe-AltMenu', 2, 1, '[{\"text\":\"Hakkımızda\",\"href\":\"#\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Hakkımızda\",\"type\":\"url\",\"children\":[{\"text\":\"Anasayfa\",\"href\":\"anasayfa\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Anasayfa\",\"type\":\"sayfa\"},{\"text\":\"Kurumsal\",\"href\":\"kurumsal\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Kurumsal\",\"type\":\"kategori\"},{\"text\":\"İletişim\",\"href\":\"iletisim\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"İletişim\",\"type\":\"sayfa\"}]}]'),
(4, 3, 'de-topmenu', 1, 1, '[{\"text\":\"Startseite\",\"href\":\"startseite\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Startseite\",\"type\":\"sayfa\"},{\"text\":\"Unsere Dienstleistungen\",\"href\":\"unsere-dienstleistungen\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Unsere Dienstleistungen\",\"type\":\"kategori\"},{\"text\":\"Kontakt\",\"href\":\"kontakt\",\"icon\":\"\",\"target\":\"_self\",\"title\":\"Kontakt\",\"type\":\"sayfa\"}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_postcat`
--

DROP TABLE IF EXISTS `nictr_postcat`;
CREATE TABLE IF NOT EXISTS `nictr_postcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catID` int(11) NOT NULL,
  `langID` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `url` text COLLATE utf8_turkish_ci NOT NULL,
  `img` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_postcat`
--

INSERT INTO `nictr_postcat` (`id`, `catID`, `langID`, `title`, `url`, `img`) VALUES
(1, 0, 1, 'Kurumsal', 'kurumsal', ''),
(2, 0, 2, 'Corporate', 'corporate', ''),
(5, 0, 1, 'Blog', 'blog', ''),
(6, 0, 2, 'Blog', 'blog', ''),
(7, 5, 1, 'Popüler Transfer Noktaları', 'populer-transfer-noktalari', ''),
(8, 6, 2, 'Popular Transfer Destinations', 'popular-transfer-destinations', ''),
(9, 5, 1, 'Turizm', 'turizm', ''),
(10, 0, 3, 'Blog', 'blog', ''),
(11, 10, 3, 'Beliebte Transferziele', 'beliebte-transferziele', ''),
(12, 0, 1, 'Hizmetlerimiz', 'hizmetlerimiz', ''),
(13, 0, 2, 'Our Services', 'our-services', ''),
(14, 0, 3, 'Unsere Dienstleistungen', 'unsere-dienstleistungen', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_posts`
--

DROP TABLE IF EXISTS `nictr_posts`;
CREATE TABLE IF NOT EXISTS `nictr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_turkish_ci NOT NULL,
  `post_title` text COLLATE utf8_turkish_ci NOT NULL,
  `post_status` int(11) NOT NULL DEFAULT '1',
  `post_langID` int(11) NOT NULL,
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_posts`
--

INSERT INTO `nictr_posts` (`ID`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_langID`, `post_password`, `post_modified`, `post_modified_gmt`, `post_slug`) VALUES
(1, 1, '2021-11-22 14:09:02', '', 'Misyonumuz', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'misyonumuz'),
(2, 1, '2021-11-22 14:09:11', '', 'Viyonumuz', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'viyonumuz'),
(3, 6, '2021-12-23 13:17:21', '<p>Hakkımızda test i&ccedil;erik</p>', 'Hakkımızda', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hakkimizda'),
(4, 1, '2021-11-22 14:22:12', '', 'About US', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'about-us'),
(5, 1, '2021-11-22 14:23:10', '', 'our vision', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'our-vision'),
(6, 1, '2021-11-22 14:23:20', '', 'Our Mission', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'our-mission'),
(7, 6, '2021-12-06 10:07:11', '', 'İstanbul Havalimanı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'istanbul-havalimani'),
(8, 6, '2021-12-06 10:03:53', '<p>Adnan Menderes Havalimanı, T&uuml;rkiye\'nin İzmir iline hizmet veren uluslararası havalimanıdır. Şehir merkezinin 14 km g&uuml;neyinde, Gaziemir ve Menderes il&ccedil;eleri sınırları i&ccedil;indedir. Adını 1950-1960 yılları arasında başbakanlık yapan Adnan Menderes\'ten almaktadır.</p>', 'Adnan Menderes Havalimanı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'adnan-menderes-havalimani'),
(9, 1, '2021-12-03 10:42:50', '', 'Amsterdam', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'amsterdam'),
(10, 1, '2021-12-03 10:42:51', '', 'Prag', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'prag'),
(11, 1, '2021-12-03 10:42:52', '<p><span style=\"font-size: 16px;\">Azerbaycan, 11 farklı iklim b&ouml;lgesinden 9\'una ev sahipliği yapması sayesinde, plaj ve yemyeşil ormanlardan karlı dağlara kadar &ccedil;eşitli manzaraları kendinde barındırıyor.</span><br /><br /><span style=\"font-size: 16px;\">Azerbaycan, 11 farklı iklim b&ouml;lgesinden 9\'una ev sahipliği yapması sayesinde,<a class=\"text-18\" title=\"plaj\" href=\"https://www.turizmnews.com/haber/plaj/\">&nbsp;plaj&nbsp;</a>ve yemyeşil ormanlardan karlı dağlara kadar &ccedil;eşitli manzaraları kendinde barındırıyor. Kafkas dağlarının ortasında,<a class=\"text-18\" title=\"kayak\" href=\"https://www.turizmnews.com/haber/kayak/\">&nbsp;kayak&nbsp;</a>tutkunları i&ccedil;in en tatmin edici pistlerden donmuş şelalelere ve yılbaşı fuarına kadar &ccedil;eşitli deneyimler sunan Azerbaycan, her mevsim olduğu gibi,kış tatilinde de unutulmaz anılar vad ediyor.</span><br /><br /><span style=\"font-size: 16px;\">Kayak imkanları ile başlayacak olursak, Azerbaycan&rsquo;da 3 b&uuml;y&uuml;k, tam teşekk&uuml;ll&uuml; dağ<a class=\"text-18\" title=\"tatil\" href=\"https://www.turizmnews.com/haber/tatil/\">&nbsp;tatil&nbsp;</a>k&ouml;y&uuml; bulunuyor. Bunlardan birincisi &uuml;lkenin kuzeyinde yer alan Gusar kentinde faaliyet g&ouml;steren Şahdağ tatil merkezi. Dağların arasında huzurlu bir konuma sahip olan merkez&rsquo;de kayak ve diğer kış aktivitelerinin yanı sıra spa ve sağlıklı yaşam merkezi, havuz ve hamam hizmetleri sunan birinci sınıf hotel ve restoranlar &ccedil;alışmakta. Geleneksel kayak hizmetlerine ilaveten, bu yılın en heyecan verici haberi ise &ccedil;ox yakında a&ccedil;ılışı yapılacak Şahdağ hız treninin kullanıma sunulması olacak.<a class=\"text-18\" title=\"Azerbaycan\" href=\"https://www.turizmnews.com/haber/Azerbaycan/\">&nbsp;Azerbaycan&nbsp;</a>ve t&uuml;m Kafkasya b&ouml;lgesinde bir ilk olacak 2590 metre uzunlukta hız treni, 920 metre kalkış şeridine, 1670 metre iniş şeridine ve 9 keskin d&ouml;ng&uuml;ye sahip. 2 kişilik kızaklarının 10 saniye aralıklarla işlev</span><br /><span style=\"font-size: 16px;\">g&ouml;receği hız treni, kesinlikle ekstrem aktivite meraklılarının uğrak yeri olacaktır.</span><br /><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71bce0c6ec.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71bce0c6ec.jpg\" /></span><br /><span style=\"font-size: 16px;\">Şahdağ tatil merkezi</span><br /><br /><span style=\"font-size: 16px;\">Kafkas Dağlarının b&uuml;y&uuml;leyici manzarası ile &ccedil;evrelenmiş bir diğer meşhur dağ tatil merkezi Gebele kentinde yer alan Tufandağ. Aynı anda 3.000 kişiyi ağırlayabilen kompleks, restoranlar, kafeler, barlar ve dinlenme alanlarının yanı sıra &ccedil;ocuklar ve yetişkinler i&ccedil;in kayak okulu ile iyi bir donanıma sahiptir. 15 kilometrelik m&uuml;kemmel bakımlı yama&ccedil;lar, m&uuml;kemmel bir snowboard ve kayak deneyimi sunmakta. Sadece teleferikle ulaşılabilen ve Azerbaycan\'ın en y&uuml;ksek noktasında yer alan &ldquo;Chalet Steak and Wine House&rdquo; restoranı ise karlı manzara ve yerel şarap eşliğinde lezzetli yemeklerin tadını &ccedil;ıkararak g&uuml;n&uuml; sonlandırmak i&ccedil;in m&uuml;kemmel bir se&ccedil;im olacaktır.</span><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71c108b185.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71c108b185.jpg\" /></span><br /><span style=\"font-size: 16px;\">Tufandağ tatil merkezi</span><br /><br /><span style=\"font-size: 16px;\">Azerbaycan&rsquo;ın &uuml;&ccedil;&uuml;nc&uuml; ve kış tatili i&ccedil;in en yeni merkezi Nah&ccedil;ıvan&rsquo;dan bir saatlik s&uuml;r&uuml;ş mesafesinde yer alan Akbulak k&ouml;y&uuml;nde hizmet veriyor. Bu b&ouml;lge uzun zamandır tarım turizmi ve doğada dinlenmek i&ccedil;in pop&uuml;ler olmuş, temiz havası ve berrak havasıyla turistleri cezbetmiştir. Ancak kayak merkezi, artık yıl boyunca harika seyahat fırsatları teklif edilmesini sağlıyor. Merkezde sadece kayak, snowboard veya kızakla gezmekle kalmayıp, K&uuml;&ccedil;&uuml;k Kafkas Dağları manzarasının keyfini &ccedil;ıkarabilir ve lezzetli y&ouml;resel yemeklerin tadına bakabilirsiniz. Merkez, 38 odalı bir otel de dahil olmak &uuml;zere turistlere hitap etmek i&ccedil;in gerekli her şeye sahiptir.</span><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71c6c744e0.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71c6c744e0.jpg\" /></span><br /><span style=\"font-size: 16px;\">Akbulak</span><br /><br /><span style=\"font-size: 16px;\">Dağ tatil merkezlerinde kayak, snowboard, zip line ve diğer kış aktivitelerinin tadını &ccedil;ıkarmakla beraber Azerbaycanın y&uuml;zde 60&rsquo;ından fazlasını oluşturan dağlarda kendine &ouml;zg&uuml; atmosferi ile se&ccedil;ilen k&ouml;yler ve buz tutmuş şelaler kış aylarında y&uuml;r&uuml;y&uuml;ş i&ccedil;in benzersiz deneyimler sunmakta. Bu k&ouml;ylerden biri Şahdağ merkezinin yakınlarındaki, kış aylarında buzullara d&ouml;n&uuml;şen ve buz tırmanışı i&ccedil;in pop&uuml;ler bir yer haline gelen katlı şelaleleriyle &uuml;nl&uuml; Laza k&ouml;y&uuml;.</span><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71d120a6ce.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71d120a6ce.jpg\" /></span><br /><span style=\"font-size: 16px;\">Laza k&ouml;y&uuml;</span><br /><br /><br /><span style=\"font-size: 16px;\">Bir diğer benzer deneyim sunan k&ouml;y, Guba kentinde, deniz seviyesinden 2200 metre y&uuml;kseklikte bulunan Grız k&ouml;y&uuml;. Aynı şekilde kış aylarında donan şelalesi ile &uuml;nl&uuml; olan k&ouml;y doğa hayranları i&ccedil;in m&uuml;kemmel bir manzara yaratıyor.</span><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71d3b0de93.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71d3b0de93.jpg\" /></span><br /><span style=\"font-size: 16px;\">Grız şelalesi</span><br /><br /><span style=\"font-size: 16px;\">Azerbaycan&rsquo;ın kış masalını hatırlatan tatil deneyimi yalnız dağ tatil merkezleri ve ya uzak k&ouml;ylere y&uuml;r&uuml;y&uuml;ş ile kısıtlanmıyor. Başkent Bak&uuml;&rsquo;de her yıl Fevvareler Meydanı&rsquo;nda d&uuml;zenlenen ve Aralık ayından itibaren Ocak ayının ortalarına kadar devam eden &ldquo;Soğuk Eller, Sıcak Kalp&rdquo; adlı fuar da şehiri canlandıran etkinliklerden biri. Şenlikli bir şekilde dekore edilmiş meydanda, &ccedil;eşitli hediyelik eşyaların satışa sunulduğu masalsı d&uuml;kanlar bulabilir, konserlere ve eğlenceli yarışmalara denk gelebilir, &ccedil;ay veya kahve, geleneksel tatlı ve yemeklerin tadına bakabilirsiniz.</span><br /><span style=\"font-size: 16px;\"><img class=\" lazyloaded\" src=\"https://www.turizmnews.com/images/files/2021/12/61a71d60d045a.jpg\" alt=\"\" data-src=\"https://www.turizmnews.com/images/files/2021/12/61a71d60d045a.jpg\" /></span><br /><span style=\"font-size: 16px;\">Bak&uuml;</span><br /><br /><span style=\"font-size: 16px;\">Uzun yıllardır d&uuml;zenlenen bu fuar sadece &ccedil;ocuklar ve yetişkinler i&ccedil;in eğlence ama&ccedil;lı değil, aynı zamanda b&ouml;lgenin en b&uuml;y&uuml;k sosyal projelerinden biri. Ş&ouml;yle ki, fuarda kazanılan t&uuml;m gelirler sağlık yardımına ihtiyacı olan &ccedil;ocukların tedavisine ayrılıyor.</span><br /><span style=\"font-size: 16px;\">Sonu&ccedil; olarak, adrenalin dolu aktivitilerin olduğu birinci sınıf tatil merkezleri, yerel insanların sıcak misafirperverliğini hiss edeceğiniz ve doğal mucizelere tanık olacağınız kış k&ouml;ylernin yanı sıra eğlence dolu etkinliklerin olduğu Bak&uuml;&rsquo;de harika bir kış deneyimi yaşayabilir ve kendinizi peri masalında hissedebilirsiniz.</span></p>', 'Azerbaycan\'da Peri Masalını Hatırlatan Kış Mevsimi', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'azerbaycan-da-peri-masalini-hatirlatan-kis-mevsimi'),
(12, 1, '2021-12-03 10:42:52', '<p>Rusya&rsquo;da yıl sonuna kadar y&uuml;r&uuml;rl&uuml;ğe girecek &nbsp;yeni<a class=\"text-18\" title=\"yasa\" href=\"https://www.turizmnews.com/haber/yasa/\">&nbsp;yasa&nbsp;</a>ve uygulamalardan birisi, yabancılar i&ccedil;in b&uuml;y&uuml;k &ouml;nem taşıyor: Rusya&rsquo;da &uuml;&ccedil; aydan fazla kalacak yabancı &uuml;lke &nbsp;vatandaşları i&ccedil;in parmak izi,<a class=\"text-18\" title=\"biyometrik\" href=\"https://www.turizmnews.com/haber/biyometrik/\">&nbsp;biyometrik&nbsp;</a>fotoğraf ve sağlık raporu zorunluluğu getirildi.<br />&nbsp;<br />Bu uygulama 29 Aralık tarihinden itibaren y&uuml;r&uuml;rl&uuml;ğe girecek.<br />&nbsp;<br />Yani uzun s&uuml;reli ikamet edecekler artık başvuru yapmadan &ouml;nce devlet hastanelerinden uyuşturucu bağımlısı ve HİV taşıyıcısı olmadığına, toplum i&ccedil;in tehdit yaratan<a class=\"text-18\" title=\"bulaşıcı\" href=\"https://www.turizmnews.com/haber/bula%C5%9F%C4%B1c%C4%B1/\">&nbsp;bulaşıcı&nbsp;</a>hastalıkları bulunmadığına dair rapor almaları gerekecek.<br />&nbsp;<br />Rusya&rsquo;ya &ccedil;alışmak i&ccedil;in gelen yabancıların<a class=\"text-18\" title=\"giriş\" href=\"https://www.turizmnews.com/haber/giri%C5%9F/\">&nbsp;giriş&nbsp;</a>tarihinden itibaren 30 g&uuml;n, diğer yabancıların ise 90 g&uuml;n i&ccedil;inde bu belgeleri tamamlamaları istenecek. (T&uuml;rkRus)</p>', 'Yabancılara 29 Aralık uyarısı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yabancilara-29-aralik-uyarisi'),
(13, 1, '2021-12-03 10:42:53', '<p>İSTANBUL (AA) - T&uuml;rk Hava Yolları (THY), 22-28 Kasım arasında g&uuml;nl&uuml;k 1.019 sefer yaparak Avrupa\'da en &ccedil;ok<a class=\"text-18\" title=\"u&ccedil;uş\" href=\"https://www.turizmnews.com/haber/u%C3%A7u%C5%9F/\">&nbsp;u&ccedil;uş&nbsp;</a>yapan 2.<a class=\"text-18\" title=\"hava yolu\" href=\"https://www.turizmnews.com/haber/hava%20yolu/\">&nbsp;hava yolu&nbsp;</a>şirketi oldu.<br /><br />Avrupa Hava Seyr&uuml;sefer Emniyeti Teşkilatının (EUROCONTROL), 22-28 Kasım tarihleri arasındaki hava trafiği verilerine g&ouml;re, haftada 140 bin 372 u&ccedil;uş, g&uuml;nde 20 bin 053 sefer ger&ccedil;ekleştirildi.<br /><br />Yeni tip<a class=\"text-18\" title=\"koronavir&uuml;s\" href=\"https://www.turizmnews.com/haber/koronavir%C3%BCs/\">&nbsp;koronavir&uuml;s&nbsp;</a>&ouml;nlemleri kapsamındaki kısıtlamaların b&uuml;y&uuml;k oranda kalkmasıyla İrlandalı Ryanair Group, g&uuml;nl&uuml;k 2 bin 103 u&ccedil;uşla Avrupa\'nın en &ccedil;ok u&ccedil;an hava yolu olarak kayıtlara ge&ccedil;ti.<br /><br />THY, g&uuml;nl&uuml;k bin 19 u&ccedil;uşla 2. sırada yer alırken, Lufthansa Havayolları 934 seferle 3. sırayı aldı.<br /><br /><strong>Pegasus Hava Yolları da 401 u&ccedil;uşla listede 10. sırada yer aldı</strong><br /><br />Raporda, u&ccedil;uş seferlerinin salgın &ouml;ncesi, 2019 seviyesinin yaklaşık y&uuml;zde 76,3 oranına yaklaştığı ve son 1 haftalık periyotta<a class=\"text-18\" title=\"tatil\" href=\"https://www.turizmnews.com/haber/tatil/\">&nbsp;tatil&nbsp;</a>u&ccedil;uşlarının azalması nedeniyle u&ccedil;uşların &ouml;nceki haftaya g&ouml;re y&uuml;zde 2,8 oranında gerilediği kaydedildi.</p>', 'THY, Avrupa\'da ikinci 2. sırada yer aldı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'thy-avrupa-da-ikinci-2-sirada-yer-aldi'),
(14, 1, '2021-12-03 10:42:53', '<p>&nbsp;95&rsquo;e yakın &uuml;lkede bulunan yaklaşık 9 bin oteliyle d&uuml;nyanın franchise veren en b&uuml;y&uuml;k şirketi<a class=\"text-18\" title=\"Wyndham\" href=\"https://www.turizmnews.com/haber/Wyndham/\">&nbsp;Wyndham&nbsp;</a>Hotels &amp; Resorts, k&uuml;lt&uuml;rel zenginlikleriyle ziyaret&ccedil;ileri kendine &ccedil;eken Jaipur, Varanasi,<a class=\"text-18\" title=\"Mohali\" href=\"https://www.turizmnews.com/haber/Mohali/\">&nbsp;Mohali&nbsp;</a>ve Udaipur&rsquo;da Ramada by Wyndham, Howard Johnson by Wyndham ve &uuml;st sınıf Wyndham markaları altında yakın zamanda a&ccedil;ılan ve a&ccedil;ılması beklenen d&ouml;rt yeni otel ile<a class=\"text-18\" title=\"Hindistan\" href=\"https://www.turizmnews.com/haber/Hindistan/\">&nbsp;Hindistan&nbsp;</a>pazarındaki varlığını g&uuml;&ccedil;lendiriyor.</p>\n<p>Yeni a&ccedil;ılışlarla birlikte Wyndham&rsquo;ın Hindistan&rsquo;daki otel sayısı 50&rsquo;ye ulaşacak ve bu a&ccedil;ılışlar, şirketin sekizi 2022&rsquo;de a&ccedil;ılması beklenen yaklaşık 30 otelin bulunduğu proje stokuna sahip olduğu Hindistan alt kıtasındaki b&uuml;y&uuml;me kararlılığının bir par&ccedil;asını oluşturuyor.</p>\n<p>Wyndham Hotels &amp; Resorts Ortadoğu, Avrasya ve Afrika Geliştirme Başkan Yardımcısı Panos Loupasis, &ldquo;D&uuml;nyanın en hızlı b&uuml;y&uuml;yen ekonomilerinden Hindistan, konaklama a&ccedil;ısından &ccedil;ok b&uuml;y&uuml;k bir potansiyel sunuyor. Bu d&ouml;rt yeni a&ccedil;ılış, &uuml;lke genelinde daha da fazla konaklama se&ccedil;eneği sunmaya y&ouml;nelik b&uuml;y&uuml;me hedeflerimiz a&ccedil;ısından &ouml;nemli bir kilometre taşı teşkil ediyor. Burada ve Hindistan alt kıtası genelindeki g&uuml;&ccedil;l&uuml; b&uuml;y&uuml;me &ccedil;izgimizi s&uuml;rd&uuml;rmeyi, b&ouml;ylesine g&uuml;zel ve zengin &ccedil;eşitliliğe bir b&ouml;lgede seyahati herkes i&ccedil;in m&uuml;mk&uuml;n kılmayı d&ouml;rt g&ouml;zle bekliyoruz&rdquo; dedi.</p>', 'Hindistan\'da 50 otele ulaşıyor', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hindistan-da-50-otele-ulasiyor'),
(15, 1, '2021-12-03 10:44:32', '<div class=\"post-body my-3\">\n<div class=\"detay\">\n<p>Ulusal ve uluslararası<a class=\"text-18\" title=\"turizm\" href=\"https://www.turizmnews.com/haber/turizm/\">&nbsp;turizm&nbsp;</a>akt&ouml;rlerinin buluşup iş anlaşmalarının yapıldığı bir turizm borsasına d&ouml;n&uuml;şen Travel Turkey İzmir Turizm Fuarı, birbirinden &ccedil;eşitli etkinlikleri ile 2-4 Aralık 2021 tarihleri arasında misafirlerine zengin bir fuar deneyimi yaşatmaya hazırlanıyor. D&uuml;nya turizm trendlerini İzmir&rsquo;de buluşturacak olan 15. Travel Turkey İzmir Turizm Fuarı, aynı zamanda T&uuml;rkiye&rsquo;nin tarihi ve k&uuml;lt&uuml;rel değerlerini de &ouml;ne &ccedil;ıkarmaya devam ediyor. Yaz turizminin yanı sıra T&uuml;rkiye&rsquo;nin d&ouml;rt bir yanındaki tarihi, k&uuml;lt&uuml;rel ve doğal g&uuml;zelliklerin keşfedilmesini sağlayan fuar, &uuml;lkenin d&ouml;rt mevsim yaşayan bir turizm potansiyeline sahip olduğunun t&uuml;m d&uuml;nyaya tanıtılmasına katkı sunuyor. Bu yıl ilk kez d&uuml;zenlenecek TTI Outdoor &ndash; Kamp, Karavan, Outdoor ve Ekipmanları Fuarı ise, 2-5 Aralık tarihleri arasında doğa tutkunu misafirlerini ağırlayacak.</p>\n<p><strong>Onur konuğu il: Edirne</strong></p>\n<p>D&uuml;nya turizm trendlerinde kentlerin &ouml;n plana &ccedil;ıkması, Travel Turkey İzmir kapsamında misafir edilen onur konuğu illere de &ccedil;ıkarma yapıyor. K&uuml;lt&uuml;rel mirasları fuar &ccedil;atısı altında buluşturan Travel Turkey İzmir, onur konuğu il olarak bu yıl Edirne&rsquo;yi ağırlayacak. &nbsp;Anadolu ve Rumeli&rsquo;yi birbirine bağlayan Meri&ccedil; K&ouml;pr&uuml;s&uuml; gibi her iki yakanın tarihi ve k&uuml;lt&uuml;rel değerlerini i&ccedil;inde barındıran Edirne, t&uuml;m mirası ile 2-4 Aralık tarihleri arasında onur konuğu il olarak fuardaki yerini alacak. Edirne&rsquo;nin turizmi, tarihi, k&uuml;lt&uuml;r&uuml; ve gastronomisi; kente hizmet veren işletmelerden olan Keşan Ticaret ve Sanayi Odası,<a class=\"text-18\" title=\"Edirne\" href=\"https://www.turizmnews.com/haber/Edirne/\">&nbsp;Edirne&nbsp;</a>Ticaret Borsası, İpsala Ticaret Borsası, Keşan Ticaret Borsası, Uzunk&ouml;pr&uuml; Ticaret Borsası, Uzunk&ouml;pr&uuml; Ticaret Odası, Uzunk&ouml;pr&uuml; Bal &Uuml;reticileri Birliği, oteller, seyahat acenteleri, turizm STK&rsquo;ları, profesyonel tur rehberleri eşliğinde tanıtılacak.</p>\n<p><strong>İzmir&rsquo;in turizm faaliyetleri tanıtılacak</strong></p>\n<p>Turizm trendlerinin t&uuml;m d&uuml;nyada hızlı bir değişime girmesi, T&uuml;rkiye&rsquo;de de s&uuml;rd&uuml;r&uuml;lebilir turizmin &ouml;nemini a&ccedil;ığa &ccedil;ıkardı. İzmir B&uuml;y&uuml;kşehir Belediyesi &ouml;ng&ouml;r&uuml;s&uuml; ve kent paydaşları ile geliştirilen İzmir Turizm Stratejisi ve Eylem Planı, Şubat ayında d&uuml;zenlenen 14. Travel Turkey İzmir Dijital Fuarı&rsquo;nda tanıtılmıştı. &ldquo;Uygarlıklara y&ouml;n veren pek &ccedil;ok kavram, d&uuml;ş&uuml;nce ve yaklaşımın İzmir&rsquo;den d&uuml;nyaya taşınması&rdquo; fikrinden hareket eden turizm stratejisi, 15. Travel Turkey İzmir Turizm Fuarı&rsquo;na da yansıtılacak. Bu kapsamda ge&ccedil;tiğimiz yıl b&uuml;y&uuml;k ilgi g&ouml;ren İzmir Sokakları da, İzmir B&uuml;y&uuml;kşehir Belediyesi, il&ccedil;e belediyeleri ve kent paydaşlarının kendilerine &ouml;zg&uuml; temalarıyla fuardaki yerini alacak.</p>\n<p><strong>İzmir sahnesi durmayacak</strong></p>\n<p>Kentin turizm faaliyetlerini &ouml;ne &ccedil;ıkararak İzmir&rsquo;in tarih, k&uuml;lt&uuml;r ve gastronomi değerlerini ziyaret&ccedil;ilerle buluşturacak İzmir Sokakları b&ouml;l&uuml;m&uuml;nde ayrıca fuarizmir A hol i&ccedil;erisinde bir sahne yer alacak. İzmir Sokakları Sahnesi&rsquo;nde il&ccedil;e belediye başkanlarının katılımı ile ger&ccedil;ekleşen sunumların yanı sıra; &ldquo;Visit İzmir&rdquo;, &ldquo;Cittaslow&rdquo;, &ldquo;İzmiras&rdquo;, &ldquo;İzmir Sinema Ofisi&rdquo;, &ldquo;Turuncu &Ccedil;ember&rdquo;, &ldquo;Başka Bir Tarım M&uuml;mk&uuml;n&rdquo;, &ldquo;Terra Madre Anadolu İzmir 2022&rdquo; gibi İzmir&rsquo;in nitelikli turizm faaliyetlerini destekleyen uygulamalar tanıtılacak.</p>\n<p><strong>Turizme dair her şey fuarda</strong></p>\n<p>Farklı etkinlikleri ile &ouml;n plana &ccedil;ıkmaya hazırlanan fuar, alanında uzman isimlerin yer aldığı s&ouml;yleşiler ile T&uuml;rkiye ve d&uuml;nya turizmine ışık tutuyor. 2 Aralık Perşembe saat 11.00&rsquo;da a&ccedil;ılışı yapılacak. fuarizmir B fuar sokağı sahnesi, programına 14.00&rsquo;da Başkanlar Zirvesi ile devam edecek. 3 Aralık Cuma g&uuml;n&uuml; 10.30&rsquo;da Arkeoloji Zirvesi Lansmanı ile hareket kazanan B fuar sokağı sahnesi; aynı g&uuml;n sırasıyla &ldquo;Film Setinde Acentenin Ne İşi Var?&rdquo;, &ldquo;Sağlık Turizmi Politikaları, T&uuml;rleri ve Seyahat Acentelerinin Rol&uuml;&rdquo;, &ldquo;Yeni Nesil Dizi ve Filmlerin Turizme Etkisi&rdquo;, &ldquo;Gastronomi Turizminin Gelişimi, Nereden Nereye Gidiyor?&rdquo; s&ouml;yleşileri ile devam ediyor. 4 Aralık Cumartesi g&uuml;n&uuml; 11.45&rsquo;te başlayan s&ouml;yleşiler ise &ldquo;Antalya&rsquo;nın Y&uuml;kselen K&uuml;lt&uuml;r ve Turizm Trendi: Patara&rdquo;, &ldquo;İzmir; Erken Tarihi ve Arkeolojisi&rdquo;, &ldquo;Influencer Marketing&rsquo;in Turizm Destinasyonlarına ve &Uuml;r&uuml;nlerine Etkisi&rdquo;, &ldquo;Bisiklet Turizminin Turizm Ekonomisine Katkısı&rdquo; konu başlıkları ile son buluyor.</p>\n<p><strong>Turizmin geleceği TTI Tech Stage&rsquo;de konuşulacak</strong></p>\n<p>Fuar kapsamında turizmde dijital d&ouml;n&uuml;ş&uuml;m konuları da g&uuml;ndeme geliyor. B Hol&rsquo;de d&uuml;zenlenen s&ouml;yleşileri takip eden izleyiciler, konuya dair merak ettiklerini sorabilecek.<a class=\"text-18\" title=\"Fuar\" href=\"https://www.turizmnews.com/haber/Fuar/\">&nbsp;Fuar&nbsp;</a>s&uuml;resince aralıksız olarak devam edecek s&ouml;yleşilerin konu başlıkları; &ldquo;&rdquo;Geleceğin Acentesi Olmak&rdquo;, &ldquo;K&uuml;resel Trendler ve T&uuml;rk Turizmi i&ccedil;in Fırsatlar&rdquo;, &ldquo;Turizm Sekt&ouml;r&uuml;nde Dijital Medyanın ve KVKK&rsquo;nın &Ouml;nemi&rdquo;, &ldquo;Yeni Nesil Misafir İlişkileri ve CRM &Ccedil;&ouml;z&uuml;mleri&rdquo;, &ldquo;Dijitalleşen Konaklama Sekt&ouml;r&uuml;nde Mobil Uygulamaların &Ouml;nemi&rdquo;, &ldquo;Doğrudan Rezervasyonun &Ouml;nemi ve Stratejileri&rdquo;, &ldquo;Turizm Sekt&ouml;r&uuml;nde M&uuml;şteri Deneyimi&rdquo; olacak. Teknoloji sahnesinin bulunduğu alanda ayrıca Filipinler, Kıbrıs ve Uganda &uuml;lke sunumları ger&ccedil;ekleşecek.</p>\n<p><strong>Sergiler ve performanslar dikkat &ccedil;ekiyor</strong></p>\n<p>Travel Turkey İzmir Fuarı, birbirinden renkli sergileri ile misafirlerini ağırlayacak. A ve B holleri ile fuaye alanında kurulacak sergiler, 2-4 Aralık tarihlerinde 10.00-18.00 saatleri arasında ziyaret edilebilecek. Şanlıurfa Haleplibah&ccedil;e Mozaik Sergisi ve Kitre Bebek Sergisi yer alacak. B Holde ise yıllardır fuarın ilgi &ccedil;eken b&ouml;l&uuml;mlerinden biri olan Klasik Otomobiller Sergisi bulunurken; Artemis Tapınağı, Efes&rsquo;in g&ouml;sterildiği sanal ger&ccedil;eklik deneyim alanı ziyaret&ccedil;ilerin beğenisine sunulacak. Fuar girişinde yer alan A Fuaye alanında kurulan performans sahnesinde ise, 3-4 Aralık tarihlerinde &ccedil;eşitli dans g&ouml;sterileri, geleneksel şovlar ve halk oyunları; fuar ziyaret&ccedil;ilerine renkli bir karşılama yapacak.</p>\n<p><strong>TTI Outdoor&rsquo;la &lsquo;Doğadaki yerini keşfet!&rsquo;</strong></p>\n<p>D&uuml;nya turizminde yenilikleri İzmir&rsquo;de tanıtan Travel Turkey İzmir&rsquo;in b&ouml;l&uuml;mlerinden biri olan alternatif turizm alanı, artan yoğun ilgiyle beraber yeni bir fuarın oluşmasına zemin hazırlamıştı. 15&rsquo;inci Travel Turkey İzmir Turizm Fuarı ile eş zamanlı olarak ilk kez d&uuml;zenlenecek olan TTI Outdoor Fuarı, doğayla i&ccedil; i&ccedil;e olma isteğini yaşam tarzı haline getiren t&uuml;m alternatif turizm tutkunlarının ihtiya&ccedil;larına cevap veriyor. C Hol&rsquo;de halka a&ccedil;ık olarak d&uuml;zenlenen TTI Outdoor Kamp, Karavan, Tekne, Outdoor Ekipmanları Fuarı&rsquo;nda Ege B&ouml;lgesi&rsquo;nin doğa ile uyumlu yaşam tarzı sergilenirken, son zamanlarda yoğun ilgi g&ouml;ren doğaya d&ouml;n&uuml;ş kavramı ele alınıyor. Fuar, İzmir ve &ccedil;evresinin a&ccedil;ık alan turistik faaliyetlerine olan coğrafi uygunluğunu &ouml;n plana &ccedil;ıkartarak sekt&ouml;r profesyonelleri i&ccedil;in alternatif bir buluşma noktası olacak. Fuar, k&uuml;resel &ouml;l&ccedil;ekte oluşan a&ccedil;ık alan turistik faaliyetleri trendinin hem hizmet hem de &uuml;retim kısmında b&uuml;y&uuml;k rol oynayan T&uuml;rkiye&rsquo;nin uluslararası pazardaki farkındalığını artıracak.</p>\n<p><strong>Macera severler fuarda buluşuyor</strong></p>\n<p>5 Aralık Pazar g&uuml;n&uuml;ne kadar devam edecek olan TTI Outdoor Fuarı, birbirinden farklı aktiviteleri ile macera ve eğlenceyi birleştirecek. Ziyaret&ccedil;iler, fuar s&uuml;resince 10.00-18.00 saatleri arasında &ldquo;Homeros Macera Parkı Aktiviteleri&rdquo;, &ldquo;Accell Bisiklet Aktiviteleri&rdquo;, &ldquo;&Ouml;d&uuml;ll&uuml; Yarışmalar&rdquo; ve alanında uzman spor danışmanları ile farklı spor dalları hakkında bilgi sahibi olabilecekleri &ldquo;Decathlon&rdquo; etkinliklerine katılabilecek. Fuar i&ccedil;inde kurulan &ldquo;Hub Meetings&rdquo; alanında ise &ldquo;Kamp-Karavan&rdquo;, &ldquo;Bisiklet&rdquo;, &ldquo;Pandemi D&ouml;neminde Kamp Organizasyonları&rdquo;, &ldquo;T&uuml;rkiye Amat&ouml;r Yelken Sporu&rdquo; gibi alanlarda s&ouml;yleşiler ger&ccedil;ekleşecek. Fuar kapsamında ayrıca, Ressam Savaş Simitli Resim Sergisi sanatseverlerle buluşacak.</p>\n<p>2-4 Aralık 2021 tarihleri arasında profesyonel ziyaret&ccedil;iye a&ccedil;ık olarak fuarizmir A ve B hollerinde d&uuml;zenlenen 15. Travel Turkey İzmir Turizm Fuarı, son g&uuml;n&uuml;nde halka a&ccedil;ık olarak ger&ccedil;ekleşiyor. TTI Outdoor Kamp, Karavan, Tekne, Outdoor ve Ekipmanları Fuarı ise, 2-5 Aralık tarihlerinde halka a&ccedil;ık ve &uuml;cretsiz olarak C holde d&uuml;zenleniyor. Her iki fuar da T.C. K&uuml;lt&uuml;r ve Turizm Bakanlığı ile T.C. Ticaret Bakanlığı himayelerinde; İzmir B&uuml;y&uuml;kşehir Belediyesi ev sahipliği, İZFAŞ ve T&Uuml;RSAB Fuarcılık A.Ş. tarafından ger&ccedil;ekleştiriliyor.</p>\n</div>\n</div>\n<div class=\"py-3\"><a class=\"pr-2\" title=\"Fuar\" href=\"https://www.turizmnews.com/haber/Fuar/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># Fuar</span></a><a class=\"pr-2\" title=\"travel turkey\" href=\"https://www.turizmnews.com/haber/travel-turkey/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># travel turkey</span></a><a class=\"pr-2\" title=\"rota\" href=\"https://www.turizmnews.com/haber/rota/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># rota</span></a><a class=\"pr-2\" title=\"turizm\" href=\"https://www.turizmnews.com/haber/turizm/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># turizm</span></a><a class=\"pr-2\" title=\"konuk\" href=\"https://www.turizmnews.com/haber/konuk/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># konuk</span></a><a class=\"pr-2\" title=\"Edirne\" href=\"https://www.turizmnews.com/haber/Edirne/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># Edirne</span></a></div>', 'Turizmin yol haritası İzmir\'de çiziliyor', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'turizmin-yol-haritasi-izmir-de-ciziliyor'),
(16, 1, '2021-12-03 10:42:54', '<p>T&uuml;rk Hava Yolları Genel M&uuml;d&uuml;r&uuml; Bilal Ekşi, &ldquo;İstanbul\'daki şiddetli<a class=\"text-18\" title=\"fırtına\" href=\"https://www.turizmnews.com/haber/f%C4%B1rt%C4%B1na/\">&nbsp;fırtına&nbsp;</a>sebebi ile<a class=\"text-18\" title=\"u&ccedil;ak\" href=\"https://www.turizmnews.com/haber/u%C3%A7ak/\">&nbsp;u&ccedil;ak&nbsp;</a>iniş ve kalkışlarında maalesef gecikmeler olmaktadır&rdquo; dedi.</p>\n<p>Ekşi, sosyal medya hesabından yaptığı paylaşımda, &ldquo;İstanbul\'daki şiddetli fırtına sebebi ile u&ccedil;ak iniş ve kalkışlarında maalesef gecikmeler olmaktadır. Bu sebeple<a class=\"text-18\" title=\"İstanbul\" href=\"https://www.turizmnews.com/haber/%C4%B0stanbul/\">&nbsp;İstanbul&nbsp;</a>varışlı seferlerimizde de kalkış meydanlarımızda gecikmeler olabilmektedir. Anlayışınız i&ccedil;in teşekk&uuml;r ederiz&rdquo; ifadelerini kullandı.</p>', 'THY Genel Müdürü Ekşi\'den fırtına açıklaması', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'thy-genel-muduru-eksi-den-firtina-aciklamasi'),
(17, 1, '2021-12-03 10:42:55', '<div class=\"post-body my-3\">\n<div class=\"detay\">Fransa&rsquo;nın uluslararası otel zinciri Accor &ccedil;atısı altında yer alan<a class=\"text-18\" title=\"l&uuml;ks\" href=\"https://www.turizmnews.com/haber/l%C3%BCks/\">&nbsp;l&uuml;ks&nbsp;</a>otel markası M&ouml;venpick, Balmumcu&rsquo;daki yeni oteli ile misafirlerinin hizmetine a&ccedil;ıldı.&nbsp;M&ouml;venpick Hotel<a class=\"text-18\" title=\"İstanbul\" href=\"https://www.turizmnews.com/haber/%C4%B0stanbul/\">&nbsp;İstanbul&nbsp;</a>Bosphorus a&ccedil;ıldı.<a class=\"text-18\" title=\"Otel\" href=\"https://www.turizmnews.com/haber/Otel/\">&nbsp;Otel&nbsp;</a>eski The Plaza, Mercure the Plaza Bosphorus\'un yerinde a&ccedil;ıldı.<br /><br />30 ile 163 m&sup2; arasında değişen genişlikte, 11 farklı kategorideki oda ve suitleri ile misafirlerini ağırlayacak olan M&ouml;venpick Bosphorus, hi&ccedil;bir detayın es ge&ccedil;ilmediği deluxe odalarının yanı sıra, boğaz manzaralı odaları, 1+1 geniş aile suitleri ve yine Boğaz&rsquo;a nazır Panoramic Bosphorus Suit ile İstanbul&rsquo;un keyfini &ccedil;ıkarmak isteyen misafirleri i&ccedil;in her zevke ve gereksinime uygun se&ccedil;enekler sunuyor.<br /><br />M&ouml;venpick Bosphorus&rsquo;un kral dairesi kategorisinde yer alan 163 m&sup2; genişliğindeki Royal Bosphorus ve 143 m&sup2; b&uuml;y&uuml;kl&uuml;ğ&uuml;ndeki Presidential Suit&rsquo;i ise ihtişamın ve l&uuml;ks&uuml;n tanımı niteliğinde bir dizayna sahip. &nbsp;</div>\n</div>\n<div class=\"py-3\"><a class=\"pr-2\" title=\"Otel\" href=\"https://www.turizmnews.com/haber/Otel/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># Otel</span></a><a class=\"pr-2\" title=\"l&uuml;ks\" href=\"https://www.turizmnews.com/haber/l%C3%BCks/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># l&uuml;ks</span></a><a class=\"pr-2\" title=\"İstanbul\" href=\"https://www.turizmnews.com/haber/%C4%B0stanbul/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># İstanbul</span></a><a class=\"pr-2\" title=\"manzara\" href=\"https://www.turizmnews.com/haber/manzara/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># manzara</span></a><a class=\"pr-2\" title=\"s&uuml;it\" href=\"https://www.turizmnews.com/haber/s%C3%BCit/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># s&uuml;it</span></a><a class=\"pr-2\" title=\"accor\" href=\"https://www.turizmnews.com/haber/accor/\"><span class=\"btn btn-outline-secondary btn-sm mb-2\"># accor</span></a></div>', 'İstanbul\'un yeni lüks oteli açıldı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'istanbul-un-yeni-luks-oteli-acildi'),
(18, 1, '2021-12-03 10:42:56', '<p>Sivil Havacılık Genel M&uuml;d&uuml;rl&uuml;ğ&uuml; (SHGM), Meteorolojinin Nevşehir\'de hava koşullarının olumsuz olacağı y&ouml;n&uuml;nde uyarı yapmasının ardından,&nbsp; sıcak hava balon turlarını<a class=\"text-18\" title=\"iptal\" href=\"https://www.turizmnews.com/haber/iptal/\">&nbsp;iptal&nbsp;</a>etti.</p>', 'Kapadokya\'da balon turları iptal', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'kapadokya-da-balon-turlari-iptal'),
(19, 1, '2021-12-10 11:15:03', '<p>Sabiha G&ouml;k&ccedil;en Uluslararası Havalimanı Pendik il&ccedil;esi sınırlarında inşa edilen İstanbul\'un 2. havalimanı. Havalimanı ismini, d&uuml;nyanın ilk kadın savaş pilotu ve T&uuml;rkiye\'nin ilk kadın pilotu olan Sabiha G&ouml;k&ccedil;en\'den almıştır.</p>', 'Sabiha Gökçen Havalimanı', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sabiha-gokcen-havalimani'),
(23, 1, '2021-12-10 11:15:03', '<p>Milas-Bodrum Havalimanı, Muğla ilinin Milas il&ccedil;esinde bulunan uluslararası havalimanıdır. Bodrum il&ccedil;esine de hizmet vermektedir.</p>', 'Milas-Bodrum Havalimanı', 2, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'milas-bodrum-havalimani'),
(25, 1, '2021-12-10 11:13:55', '<p>Trabzon Havalimanı, T&uuml;rkiye\'nin Trabzon iline hizmet veren uluslararası havalimanı. 1957 yılında hizmete girdi.</p>', 'Trabzon Uluslararası Havalimanı', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'trabzon-uluslararasi-havalimani'),
(26, 1, '2021-12-10 10:26:49', '<p>Sabiha G&ouml;k&ccedil;en International Airport is the 2nd airport in Istanbul, built on the borders of Pendik district. airport. The airport is named after Sabiha G&ouml;k&ccedil;en, the world\'s first female fighter pilot and Turkey\'s first female pilot.</p>', ' Sabiha Gokcen Airport', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sabiha-gokcen-airport'),
(27, 1, '2021-12-10 10:26:49', '<p>Trabzon Airport is an international airport serving the Turkish province of Trabzon. it was commissioned in 1957.</p>', 'Trabzon Airport', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'trabzon-airport'),
(28, 1, '2021-12-10 10:26:48', '<p>Dalaman Airport is an international airport located within the borders of Dalaman district, Mugla Province, Turkey. 6 km of the city centre. the airport is located in the south; Along with Milas-Bodrum Airport, it is one of the two international airports serving Muğla.</p>', 'Dalaman Airport', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dalaman-airport'),
(29, 1, '2021-12-10 10:26:47', '<p>Adnan Menderes Airport is an international airport serving the province of Izmir, Turkey. It is located 14 km south of the city center, within the boundaries of Gaziemir and Menderes districts. Dec is named after Adnan Menderes, who was prime minister between 1950 and 1960.</p>', 'Adnan Menderes Airport', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'adnan-menderes-airport'),
(30, 1, '2021-12-10 10:26:47', '<p>Istanbul Airport is an international airport serving the city of Istanbul, Turkey. Dec October 29, 2018, the airport was opened on the European Side of the city, between the villages of Tayakadin and Akpinar on the Black Sea coast. The first flight was made from Istanbul to Ankara on October 29, 2018 with the code TK2124.</p>', 'İstanbul Airport', 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'istanbul-airport'),
(31, 1, '2021-12-10 10:26:46', '<p>Milas-Bodrum Airport is an international airport located in the Milas district of Muğla Province, Turkey. It also serves the district of Bodrum.</p>', 'Milas-Bodrum Airport', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'milas-bodrum-airport'),
(32, 6, '2021-12-13 09:25:32', '<p>Der Flughafen Istanbul ist der internationale Flughafen in Istanbul, T&uuml;rkei. Der Flughafen auf der Europ&auml;ischen Seite der Stadt, zwischen den D&ouml;rfern Tayakad und Akpinar an der Schwarzmeerk&uuml;ste, wurde am 29.Oktober 2018 er&ouml;ffnet. Der erste Flug mit dem Code TK2124 erfolgte am 29.Oktober 2018 von Istanbul nach Ankara.</p>', 'Flughafen İstanbul', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-istanbul'),
(33, 6, '2021-12-13 09:17:34', '<p>Der internationale Flughafen Sabiha Gokcen wurde an den Grenzen des Bezirks Pendik in Istanbul 2 gebaut. Flughafen. Der Flughafen erhielt seinen Namen von Sabiha Gokcen, der ersten Kampfpilotin der Welt und der ersten Pilotin der T&uuml;rkei.</p>', 'Flughafen Sabiha Gokcen', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-sabiha-gokcen'),
(34, 6, '2021-12-13 09:25:12', '<p>Der Flughafen Adnan Menderes ist der internationale Flughafen der t&uuml;rkischen Provinz Izmir. 14 km s&uuml;dlich des Stadtzentrums befinden sich die Bezirke Gaziemir und Menderes. Benannt wurde es nach Adnan Menderes, der von 1950 bis 1960 Premierminister war.</p>', 'Flughafen Adnan Menderes', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-adnan-menderes'),
(35, 6, '2021-12-13 09:26:58', '<p>Dalaman Flughafen ist ein Internationaler Flughafen innerhalb der Grenzen der Provinz Mugla, Dalaman Bezirk. 6 km vom Stadtzentrum entfernt. der Flughafen im S&uuml;den ist einer der beiden internationalen Flugh&auml;fen, die Mugla zusammen mit dem Flughafen Milas-Bodrum bedienen.</p>', 'Dalaman Flughafen', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dalaman-flughafen'),
(36, 6, '2021-12-13 09:29:14', '<p>Der Flughafen Trabzon ist der internationale Flughafen, der die t&uuml;rkische Provinz Trabzon bedient. 1957 wurde er in Dienst gestellt.</p>', 'Flughafen Trabzon', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-trabzon'),
(37, 6, '2021-12-13 09:32:00', '<p>Der Flughafen Milas-Bodrum ist ein Internationaler Flughafen im Bezirk Milas der Provinz Mugla. Es dient auch dem Keller.</p>', 'Flughafen Milas-Bodrum', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-milas-bodrum'),
(38, 6, '2021-12-13 10:42:05', '', 'BLABLA', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'blabla'),
(39, 6, '2021-12-14 14:53:35', '<p>&Ouml;zel Turizm, protokol taşımacılığı, kongre, seminer organizasyonlarında veya bunların dışında bireysel olarak kişi veya grupların havaalanı transferlerini ger&ccedil;ekleştirmektedir. Bu transferler esnasında ara&ccedil; se&ccedil;eneği olarak otomobil, VIP otomobil, minib&uuml;s, VIP minib&uuml;s, midib&uuml;s veya otob&uuml;s se&ccedil;enekleri sunulmaktadır. Yurti&ccedil;i ve yurtdışından havayoluyla gelen b&uuml;t&uuml;n konuklarımızın havaalanından karşılanıp istedikleri adrese ulaşımı sağlandığı gibi, havaalanına gitmek isteyen misafirlerimizin adreslerinden alınıp havaalanına transfer hizmeti de karşılıklı olarak ger&ccedil;ekleştirilmektedir.</p>', 'Havaalanı Transferi', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'havaalani-transferi'),
(40, 6, '2021-12-14 14:55:07', '<p>It carries out airport transfers of individuals or groups individually in private tourism, protocol transportation, congress, seminar organizations or outside them. During these transfers, car, VIP car, minibus, VIP van, midibus or bus options are offered as a vehicle option. All our guests arriving by air from home and abroad are welcomed at the airport and reached to the address they want, as well as the transfer service to the airport is provided mutually from the addresses of our guests who want to go to the airport.</p>', 'Airport Transfer', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'airport-transfer'),
(41, 6, '2021-12-14 14:58:06', '<p>Privattourismus, protokolltransport, Kongresse, seminarorganisationen oder au&szlig;erhalb von ihnen f&uuml;hren individuelle Flughafentransfers von Personen oder Gruppen durch. W&auml;hrend dieser Transfers werden Autos, VIP-Autos, Minibus, VIP-Minibus, Midibus oder Bus als Fahrzeugoption angeboten. Alle unsere G&auml;ste, die mit der Fluggesellschaft aus dem In-und Ausland ankommen, werden vom Flughafen abgeholt und an die gew&uuml;nschte Adresse gebracht, und der Transferservice zum Flughafen wird von den Adressen unserer G&auml;ste, die zum Flughafen gehen m&ouml;chten, gegenseitig durchgef&uuml;hrt.</p>', 'Flughafen Transfer', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flughafen-transfer'),
(42, 6, '2021-12-14 14:58:50', '<p>&Ouml;zel Turizm, &ouml;zel tur hizmetlerinde kişi veya kurum ayırt etmeden, yurti&ccedil;i veya yurtdışına y&ouml;nelik &ouml;zel turlara ara&ccedil; temini sağlamaktadır. Bu kapsamda &ouml;rneğin; kurum ve kuruluşların hazırladıkları &ouml;zel programlar &ccedil;er&ccedil;evesinde yurtdışı turlarına, vakıf ve derneklerin d&uuml;zenledikleri gezi programlarına, haftasonu ve g&uuml;n&uuml;birlik gezilere ara&ccedil; temininde bulunmaktadır.Programın nerede başlayıp nerede biteceğine kendinizin karar vereceği bu &ouml;zel turlara, &Ouml;zel Turizm g&uuml;vencesiyle, profesyonel s&uuml;r&uuml;c&uuml; ve modern filosundan se&ccedil;eceğiniz ara&ccedil;larla konforlu bir yolculuğa &ccedil;ıkabilirsiniz.</p>', 'Özel Turlar', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ozel-turlar'),
(43, 6, '2021-12-14 15:02:57', '<p>Privattourismus bietet fahrzeugversorgung f&uuml;r private Touren im In-oder Ausland, ohne zwischen Personen oder Institutionen zu unterscheiden. In diesem Zusammenhang bietet es beispielsweise Fahrzeuge f&uuml;r Auslandsreisen im Rahmen spezieller Programme an, die von Institutionen und Organisationen vorbereitet werden, f&uuml;r von Stiftungen und Vereinen organisierte Ausflugsprogramme, f&uuml;r Wochenend-und Tagesausfl&uuml;ge.Sie k&ouml;nnen auf diese speziellen Touren gehen, wo sie selbst entscheiden, wo das Programm beginnt und endet, mit einer speziellen Tourismusgarantie, mit professionellen Fahrern und Fahrzeugen Ihrer Wahl aus der modernen Flotte.</p>', 'Private Touren', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'private-touren'),
(44, 6, '2021-12-14 15:03:21', '<p>Special Tourism, private tour services in person or institution, to distinguish vehicle supply provides private tours for domestic or abroad. In this context, for example; It provides vehicles for foreign tours, excursion programs organized by foundations and associations, weekend and day trips within the framework of special programs prepared by institutions and organizations.</p>\n<p>You can go on these special tours, where you will decide for yourself where the program will start and end, with Special Tourism assurance, a professional driver and a comfortable journey with the vehicles you will choose from a modern fleet.</p>', 'Private Tours', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'private-tours'),
(45, 6, '2021-12-14 15:04:03', '<p>Kongre ve seminer organizasyonlarının en &ouml;nemli temel taşlarından birisi, gelen misafilerinizin doğru yere doğru zamanda iletilmesini sağlamaktır. Bu y&uuml;zden &Ouml;zel Turizm olarak; pazarlama, tanıtım, seminer ve her t&uuml;rl&uuml; toplantı ve organizasyonlarınızda konuklarınızın ilk geliş noktalarından (havaalanı, terminal, tren garı, otel&nbsp;vb.) alınarak organizasyonun d&uuml;zenlendiği yerlere transferleri, bu transferler esnasında talep edilirse rehberlik hizmeti sunulması ve organizasyon sonrasında t&uuml;m konukların istedikleri noktalara gerid&ouml;n&uuml;şlerinin sağlanması&nbsp;gibi se&ccedil;enekler &uuml;st&uuml;n bir kaliteyle sağlanır.&nbsp;<br />Gerek teke tek gerekse gruplar i&ccedil;in istenilen t&uuml;r ve kapasitede&nbsp;ara&ccedil;lar temin edilir.<br />&nbsp;<br />&Ouml;zel Turizm, kongre-seminer organizasyonlarında gelen misafirlerin sayısına g&ouml;re alternatif taşıma se&ccedil;enekleri sunar. Eğer heyet i&ccedil;erisinde protokol kapsamına giren kişiler mevcutsa, bu kişilere y&ouml;nelik Protokol Taşımacılığı Hizmeti de sunulabilmektedir.</p>', 'Kongre Seminer Organizasyon', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'kongre-seminer-organizasyon'),
(46, 6, '2021-12-14 15:09:38', '<p>Her k&ouml;şesinden tarih ve k&uuml;lt&uuml;r fışkıran Anadolu&rsquo;nun g&uuml;zelliklerini keşfetmek i&ccedil;in d&uuml;zenleyeceğiniz kısa veya uzun s&uuml;reli turlara &Ouml;zel Turizm g&uuml;vencesiyle &ccedil;ıkabilirsiniz. Her t&uuml;rl&uuml; k&uuml;lt&uuml;r ve inan&ccedil; gezileri, yerli ve yabancı turist grupları i&ccedil;in seyahat acenteleri tarafından d&uuml;zenlenen Anadolu turlarına ara&ccedil; temin edebilirsiniz.<br />&Ouml;zel Turizm bu gezilerinizde modern ara&ccedil; filosuyla, g&uuml;zergah deneyimi olan s&uuml;r&uuml;c&uuml;leriyle, bilgilendirici rehberleriyle, g&uuml;venli ve konforlu bir yolculuk se&ccedil;eneği sunuyor. &Ouml;zel grupların yurti&ccedil;i k&uuml;lt&uuml;r turlarına ara&ccedil; temini hizmeti sağladığımız gibi, yerli ve yabancı seyahat acentelerinin tur programlarında da talep edilen tip ve &ouml;zellikte ara&ccedil; sağlanmaktadır.</p>', 'Yurtiçi Kültür Turları', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yurtici-kultur-turlari'),
(47, 6, '2021-12-14 15:10:02', '<p>&Ouml;zel Turizm ara&ccedil; filosunda &ouml;zel donanımlı l&uuml;ks VIP ara&ccedil;lar bulunmaktadır. S&uuml;r&uuml;c&uuml;l&uuml; VIP hizmeti kapsamında kurum, kuruluşlar ya da şahıslara &ouml;zel g&uuml;nler (d&uuml;ğ&uuml;n, s&uuml;nnet t&ouml;reni vb.), havaalanı transferleri, geziler i&ccedil;in VIP segmentinden ara&ccedil; sunulmaktadır.<br /><br />Yolculuğunuz s&uuml;resince sizin emrinize sunulmuş ve sizin memnuniyetinize kendini adamış profesyonel s&uuml;r&uuml;c&uuml;lerimiz ile sizi &ouml;zel hissettirecek zamanlarda &Ouml;zel Turizm en doğru se&ccedil;imdir.<br /><br />Ara&ccedil; filomuzda 3 segmentte VIP ara&ccedil; bulunmaktadır. Bunlar VIP Otomobil, VIP Minib&uuml;s ve VIP Otob&uuml;st&uuml;r. Bu gruplarda yolcu sayısına veya protokol durumuna g&ouml;re farklı tipte ara&ccedil;lar &ouml;nerilmektedir. Mercedes Benz ve Volkswagen ara&ccedil;lardan oluşan VIP grubundaki ara&ccedil;ların genel &ouml;zellikleri arasında; deri d&ouml;şeme, plazma tv, klima, airbag, minibar gibi unsurlar yer almaktadır.</p>', 'Yurtiçi', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yurtici'),
(48, 6, '2021-12-14 15:10:23', '<p>&Ouml;zel Turizm sadece tekil ara&ccedil; temini hizmeti sunmamaktadır. Talep &uuml;zerine uzun&nbsp;veya kısa s&uuml;reli zamanlar i&ccedil;in istenilen segmentte (otomobil, minib&uuml;s, otob&uuml;s)&nbsp;istenilen sayıda ara&ccedil; temini &Ouml;zel urizm&nbsp;tarafından sorunsuz sağlanır.&nbsp;B&uuml;y&uuml;k&nbsp;grupların&nbsp;&nbsp;okul gezileri, personel seyahatleri gibi etkinliklerine&nbsp;istenilen donanımlarda ara&ccedil; temini&nbsp;&Ouml;zel Tur&nbsp;g&uuml;vencesiyle sağlanmaktadır.</p>', 'Filo Kiralama', 0, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'filo-kiralama'),
(49, 6, '2021-12-14 15:10:40', '<p>One of the most important cornerstones of congress and seminar organizations is to ensure that your incoming guests are delivered to the right place at the right time. For this reason, as a Private Tourism; marketing, promotion, seminars and all kinds of meetings and organizations from the first points of arrival of your guests (airport, terminal, train station, hotel, etc.) in your meetings and organizations.) such options as receiving and transferring to the places where the organization is organized, providing guidance services if requested during these transfers, and ensuring that all guests return to their desired points after the organization are provided with superior quality.&nbsp;<br />Vehicles of the desired type and capacity are provided for both jul and groups.<br />&nbsp;<br />Private Tourism offers alternative transportation options according to the number of guests arriving at the congress-seminar organizations. If there are people within the scope of the protocol in the delegation, Protocol Transportation Service for these people can also be provided.</p>', 'Organization of the Congress Seminar', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'organization-of-the-congress-seminar'),
(50, 6, '2021-12-14 15:11:31', '<p>You can go on short or long-term tours to explore the beauties of Anatolia, where history and culture are gushing from every corner, with the Special Tourism guarantee. You can provide vehicles for all kinds of cultural and faith trips, tours to Anatolia organized by travel agencies for domestic and foreign tourist groups. Jul.<br />Private Tourism offers a safe and comfortable journey option with its modern vehicle fleet, drivers with route experience, informative guides on these trips. We provide vehicle supply services for domestic cultural tours of private groups, as well as provide vehicles of the type and characteristics requested in the tour programs of domestic and foreign travel agencies. Jul.</p>', 'Domestic Cultural Tours', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'domestic-cultural-tours'),
(51, 6, '2021-12-14 15:12:04', '<p>The special Tourism vehicle fleet includes specially equipped luxury VIP vehicles. Special occasions for institutions, organizations or individuals within the scope of the VIP service with a driver (wedding, circumcision ceremony, etc.), airport transfers, vehicles from the VIP segment are offered for excursions.</p>\n<p>Private Tourism is the right choice when it will make you feel special with our professional drivers who have been put at your disposal during your journey and are dedicated to your satisfaction.</p>\n<p>There are VIP vehicles in our vehicle fleet in 3 segments. These are VIP Cars, VIP Minibuses and VIP Buses. Different types of vehicles are recommended in these groups according to the number of passengers or protocol status. The general characteristics of the VIP group of Mercedes Benz and Volkswagen vehicles include elements such as leather decking, plasma TV, air conditioning, airbag, minibar.</p>', 'Domestic', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'domestic'),
(52, 6, '2021-12-14 15:12:39', '<p>Private Tourism does not only provide individual car rental services. Jul. On request, the supply of the required number of vehicles in the desired segment (car, minibus, bus) for long or short-term times is provided by JUL-tial uriz without any problems. The provision of vehicles with the necessary equipment for the activities of large groups such as school trips and staff trips is provided with the guarantee of a private Tour. jul.</p>', 'Fleet Leasing', 0, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'fleet-leasing');
INSERT INTO `nictr_posts` (`ID`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_langID`, `post_password`, `post_modified`, `post_modified_gmt`, `post_slug`) VALUES
(53, 6, '2021-12-14 15:13:05', '<p>Einer der wichtigsten Eckpfeiler von Kongressen und Seminaren ist es, sicherzustellen, dass Ihre G&auml;ste zur richtigen Zeit am richtigen Ort ankommen. Daher als privater Tourismus; Marketing, Promotion, Seminare und alle Arten von Meetings und Veranstaltungen von den ersten ankunftspunkten Ihrer G&auml;ste (Flughafen, terminal, Bahnhof, Hotel usw.).) Transfers zu den Orten, an denen die Organisation organisiert ist, die Bereitstellung von Beratungsdiensten, wenn Sie w&auml;hrend dieser Transfers angefordert werden, und die Bereitstellung der R&uuml;ckkehr aller G&auml;ste zu den gew&uuml;nschten Punkten nach der Organisation werden mit einer &uuml;berlegenen Qualit&auml;t gew&auml;hrleistet.&nbsp;<br />Sowohl f&uuml;r einzelne als auch f&uuml;r Gruppen werden Fahrzeuge des gew&uuml;nschten Typs und der gew&uuml;nschten Kapazit&auml;t bereitgestellt.<br />&nbsp;<br />Der private Tourismus bietet alternative Transportm&ouml;glichkeiten, abh&auml;ngig von der Anzahl der G&auml;ste, die in Kongress-und seminarorganisationen ankommen. Wenn es in der Delegation Personen gibt, die unter das Protokoll fallen, kann auch ein Protokolltransportdienst f&uuml;r diese Personen angeboten werden.</p>', 'Kongress Seminar Organisation', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'kongress-seminar-organisation'),
(54, 6, '2021-12-14 15:15:05', '<p>Um die Sch&ouml;nheiten Anatoliens zu entdecken, die aus jeder Ecke der Geschichte und Kultur sprudeln, k&ouml;nnen Sie kurz-oder langzeittouren mit besonderer touristischer sicherheit unternehmen. Sie k&ouml;nnen Fahrzeuge f&uuml;r alle Arten von Kultur-und glaubensreisen, anatolischen Touren, die von Reiseb&uuml;ros f&uuml;r In-und ausl&auml;ndische Touristengruppen organisiert werden, zur Verf&uuml;gung stellen.<br />Privattourismus bietet Ihnen auf diesen Reisen eine sichere und komfortable Reiseoption mit einer modernen Fahrzeugflotte, reiserfahrenen Fahrern, informativen Guides. So wie wir Dienstleistungen f&uuml;r die Bereitstellung von Fahrzeugen f&uuml;r inl&auml;ndische Kulturreisen von privaten Gruppen anbieten, werden in den tourprogrammen von In-und ausl&auml;ndischen Reiseb&uuml;ros Fahrzeuge in der gew&uuml;nschten Art und Spezifikation bereitgestellt.</p>', 'Inländische Kulturreisen', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'inl-ndische-kulturreisen'),
(55, 6, '2021-12-14 15:15:41', '<p>In der privattourismusflotte gibt es speziell ausgestattete Luxus-VIP-Fahrzeuge. Im Rahmen des VIP-Service mit Fahrer werden besondere Anl&auml;sse f&uuml;r Institutionen, Organisationen oder Einzelpersonen (Hochzeit, beschneidungszeremonie usw.) angeboten.), Flughafentransfers, Fahrzeuge aus dem VIP-Segment werden f&uuml;r Ausfl&uuml;ge angeboten.</p>\n<p>Mit unseren professionellen Fahrern, die Ihnen w&auml;hrend Ihrer Reise zur Verf&uuml;gung stehen und sich ihrer zufriedenheit verschrieben haben, ist der Private Tourismus die richtige Wahl, wenn Sie sich besonders f&uuml;hlen.</p>\n<p>In unserer Fahrzeugflotte gibt es VIP-Fahrzeuge in 3 Segmenten. Dies sind VIP-Autos, VIP-Minibus und VIP-Bus. In diesen Gruppen werden je nach Anzahl der Passagiere oder protokollstatus verschiedene Fahrzeugtypen empfohlen. Zu den allgemeinen Merkmalen der Fahrzeuge der VIP-Gruppe von Mercedes Benz und Volks ① geh&ouml;ren Lederpolster, Plasma-tv, Klimaanlage, airbag, minibar.</p>', 'Inland', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'inland'),
(56, 6, '2021-12-14 15:16:05', '<p>Der private Tourismus bietet nicht nur eine einzigartige fahrzeugversorgung. Die Lieferung der gew&uuml;nschten Anzahl von Fahrzeugen im gew&uuml;nschten Segment (Auto, Minibus, Bus) f&uuml;r lange oder kurze Zeit auf Anfrage wird durch den speziellen urizm problemlos gew&auml;hrleistet. Die Bereitstellung von Fahrzeugen in der gew&uuml;nschten Ausr&uuml;stung f&uuml;r Aktivit&auml;ten gro&szlig;er Gruppen wie Schulausfl&uuml;ge, personalreisen wird durch spezielle Toursicherheit gew&auml;hrleistet.</p>', 'Flottenvermietung', 0, 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'flottenvermietung');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_post_meta`
--

DROP TABLE IF EXISTS `nictr_post_meta`;
CREATE TABLE IF NOT EXISTS `nictr_post_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_post_meta`
--

INSERT INTO `nictr_post_meta` (`id`, `postID`, `type`, `type_meta`) VALUES
(2, 1, 'cat', '1'),
(4, 2, 'cat', '1'),
(8, 4, 'cat', '2'),
(10, 5, 'cat', '2'),
(12, 6, 'cat', '2'),
(100, 9, 'image', ''),
(101, 9, 'cat', '6'),
(102, 9, 'cat', '8'),
(103, 10, 'image', ''),
(104, 10, 'cat', '6'),
(105, 10, 'cat', '8'),
(106, 11, 'image', 'azerbaycan-da-peri-masalini-hatirlatan-kis-mevsimi-324-webp.webp'),
(107, 11, 'cat', '5'),
(108, 11, 'cat', '9'),
(109, 12, 'image', 'yabancilara-29-aralik-uyarisi-9662.webp'),
(110, 12, 'cat', '5'),
(111, 12, 'cat', '9'),
(112, 13, 'image', 'thy-avrupa-da-ikinci-2-sirada-yer-aldi-2631-webp.webp'),
(113, 13, 'cat', '5'),
(114, 13, 'cat', '9'),
(115, 14, 'image', 'hindistan-da-50-otele-ulasiyor-4487.webp'),
(116, 14, 'cat', '5'),
(117, 14, 'cat', '9'),
(121, 16, 'image', 'thy-genel-muduru-eksi-den-firtina-aciklamasi-7265.webp'),
(122, 16, 'cat', '5'),
(123, 16, 'cat', '9'),
(124, 15, 'image', 'turizmin-yol-haritasi-izmir-de-ciziliyor-5218_1.webp'),
(125, 15, 'cat', '5'),
(126, 15, 'cat', '9'),
(127, 17, 'image', 'istanbul-un-yeni-luks-oteli-acildi-5329.webp'),
(128, 17, 'cat', '5'),
(129, 17, 'cat', '9'),
(130, 18, 'image', 'kapadokya-da-balon-turlari-iptal-3821.webp'),
(131, 18, 'cat', '5'),
(132, 18, 'cat', '9'),
(153, 8, 'image', 'izmir-adnan-menderes-havalimani-otopark-ucreti-fiyatlari-2021-telefon-numarasi-iletisim_8c865.webp'),
(154, 8, 'cat', '5'),
(155, 8, 'cat', '7'),
(158, 7, 'image', 'thumbs_b_c_513047b71adfafc5eaf6723f8b4e7995.webp'),
(159, 7, 'cat', '5'),
(160, 7, 'cat', '7'),
(181, 31, 'image', 'milas.webp'),
(182, 31, 'cat', '6'),
(183, 31, 'cat', '8'),
(184, 30, 'image', 'istanbul.webp'),
(185, 30, 'cat', '6'),
(186, 30, 'cat', '8'),
(187, 29, 'image', 'izmir-adnan-menderes-havalimani-otopark-ucreti-fiyatlari-2021-telefon-numarasi-iletisim_8c865_1.webp'),
(188, 29, 'cat', '6'),
(189, 29, 'cat', '8'),
(190, 28, 'image', 'dalaman.webp'),
(191, 28, 'cat', '6'),
(192, 28, 'cat', '8'),
(193, 27, 'image', 'trabzon.webp'),
(194, 27, 'cat', '6'),
(195, 27, 'cat', '8'),
(196, 26, 'image', 'sabiha-gokcen.webp'),
(197, 26, 'cat', '6'),
(198, 26, 'cat', '8'),
(199, 25, 'image', '1200px-trabzon_airport.webp'),
(200, 25, 'cat', '5'),
(201, 25, 'cat', '7'),
(202, 19, 'image', '1578390564762-havalimani_1.webp'),
(203, 19, 'cat', '5'),
(204, 19, 'cat', '7'),
(205, 23, 'image', 'image_750x_5e6a4d7137475.webp'),
(206, 23, 'cat', '5'),
(207, 23, 'cat', '7'),
(214, 33, 'image', '3246738_810x458.webp'),
(215, 33, 'cat', '10'),
(216, 33, 'cat', '11'),
(217, 32, 'image', 'istanbul_1.webp'),
(218, 32, 'cat', '10'),
(219, 32, 'cat', '11'),
(220, 34, 'image', 'unnamed.webp'),
(221, 34, 'cat', '10'),
(222, 34, 'cat', '11'),
(223, 35, 'image', 'dalaman-havalimani-1.webp'),
(224, 35, 'cat', '10'),
(225, 35, 'cat', '11'),
(226, 36, 'image', '1200px-trabzon_airport_1.webp'),
(227, 36, 'cat', '10'),
(228, 36, 'cat', '11'),
(229, 37, 'image', 'image_750x_5e6a4d7137475_1.webp'),
(230, 37, 'cat', '10'),
(231, 37, 'cat', '11'),
(232, 38, 'image', 'image_750x_5e6a4d7137475_2.webp'),
(233, 38, 'cat', '5'),
(234, 38, 'cat', '7'),
(235, 39, 'image', ''),
(236, 39, 'cat', '12'),
(237, 40, 'image', ''),
(238, 40, 'cat', '13'),
(239, 41, 'image', ''),
(240, 41, 'cat', '14'),
(241, 42, 'image', ''),
(242, 42, 'cat', '12'),
(243, 43, 'image', ''),
(244, 43, 'cat', '14'),
(245, 44, 'image', ''),
(246, 44, 'cat', '13'),
(247, 45, 'image', ''),
(248, 45, 'cat', '12'),
(249, 46, 'image', ''),
(250, 46, 'cat', '12'),
(251, 47, 'image', ''),
(252, 47, 'cat', '12'),
(253, 48, 'image', ''),
(254, 48, 'cat', '12'),
(255, 49, 'image', ''),
(256, 49, 'cat', '13'),
(257, 50, 'image', ''),
(258, 50, 'cat', '13'),
(259, 51, 'image', ''),
(260, 51, 'cat', '13'),
(261, 52, 'image', ''),
(262, 52, 'cat', '13'),
(263, 53, 'image', ''),
(264, 53, 'cat', '14'),
(265, 54, 'image', ''),
(266, 54, 'cat', '14'),
(267, 55, 'image', ''),
(268, 55, 'cat', '14'),
(269, 56, 'image', ''),
(270, 56, 'cat', '14'),
(271, 3, 'image', ''),
(272, 3, 'cat', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_settings`
--

DROP TABLE IF EXISTS `nictr_settings`;
CREATE TABLE IF NOT EXISTS `nictr_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aktif` int(11) NOT NULL DEFAULT '0',
  `langID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `siteurl` text COLLATE utf8_turkish_ci NOT NULL,
  `baslik` text COLLATE utf8_turkish_ci NOT NULL,
  `compName` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `lat` text COLLATE utf8_turkish_ci NOT NULL,
  `lng` text COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `gsm` text COLLATE utf8_turkish_ci NOT NULL,
  `fax` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `eposta` text COLLATE utf8_turkish_ci NOT NULL,
  `mailHost` text COLLATE utf8_turkish_ci NOT NULL,
  `mailPort` text COLLATE utf8_turkish_ci NOT NULL,
  `mailUser` text COLLATE utf8_turkish_ci NOT NULL,
  `mailPass` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_settings`
--

INSERT INTO `nictr_settings` (`id`, `aktif`, `langID`, `currencyID`, `siteurl`, `baslik`, `compName`, `aciklama`, `keywords`, `adres`, `lat`, `lng`, `tel`, `gsm`, `fax`, `eposta`, `mailHost`, `mailPort`, `mailUser`, `mailPass`) VALUES
(1, 1, 1, 1, 'http://localhost/NEMA/', 'JFF', 'JFF', '', 'jff, jain, jain farm,jain farm fresh', 'Konak/ İzmir', '32.817277169318494', '39.89654466273957', '+90 000 00 00', '+90 000 00 00', '', 'peniaugur80@gmail.com', 'mail.internettescil.com.tr', '587', 'ugur.isik@internettescil.com.tr', '12345q');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_slider`
--

DROP TABLE IF EXISTS `nictr_slider`;
CREATE TABLE IF NOT EXISTS `nictr_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dp` int(11) NOT NULL DEFAULT '0',
  `langID` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_slider_img`
--

DROP TABLE IF EXISTS `nictr_slider_img`;
CREATE TABLE IF NOT EXISTS `nictr_slider_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slideID` int(11) NOT NULL,
  `order` varchar(3) NOT NULL,
  `target` text NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `detail` text NOT NULL,
  `fileName` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_social`
--

DROP TABLE IF EXISTS `nictr_social`;
CREATE TABLE IF NOT EXISTS `nictr_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` text NOT NULL,
  `bg-color` text NOT NULL,
  `baslik` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_social`
--

INSERT INTO `nictr_social` (`id`, `icon`, `bg-color`, `baslik`, `url`) VALUES
(6, 'fa fa-facebook', '#2b4f8f', 'Facebook', 'javascript:;'),
(7, 'fa fa-twitter', '#1aa1f2', 'Twitter', 'javascript:;'),
(8, 'fa fa-youtube', '#ff0000', 'Youtube', 'javascript:;');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_terms`
--

DROP TABLE IF EXISTS `nictr_terms`;
CREATE TABLE IF NOT EXISTS `nictr_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langID` int(11) NOT NULL,
  `termID` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL,
  `slug` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_users`
--

DROP TABLE IF EXISTS `nictr_users`;
CREATE TABLE IF NOT EXISTS `nictr_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_turkish_ci NOT NULL,
  `surname` text COLLATE utf8_turkish_ci NOT NULL,
  `email` text COLLATE utf8_turkish_ci NOT NULL,
  `phone` text COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `company` text COLLATE utf8_turkish_ci NOT NULL,
  `department` text COLLATE utf8_turkish_ci NOT NULL,
  `password` text COLLATE utf8_turkish_ci NOT NULL,
  `login` int(11) DEFAULT '0',
  `loginID` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_users`
--

INSERT INTO `nictr_users` (`id`, `status`, `name`, `surname`, `email`, `phone`, `address`, `company`, `department`, `password`, `login`, `loginID`) VALUES
(1, 2, 'Uğur', 'Işık', 'ugur.isik@internettescil.com.tr', '', '', 'İnternet Tescil', 'PHP Developer', '$2y$10$JVvmdMZeKD7hEyWCX9FIFOcC9qqxDM194oFSIXm.Hc02cnZQ.Pff2', 1, 'c659987cdeba2709cf5c66c0383a93e5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_users_meta`
--

DROP TABLE IF EXISTS `nictr_users_meta`;
CREATE TABLE IF NOT EXISTS `nictr_users_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_users_meta`
--

INSERT INTO `nictr_users_meta` (`id`, `userID`, `type`, `type_meta`) VALUES
(1, 1, 'yetki', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

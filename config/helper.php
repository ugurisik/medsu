<?php

class helper
{
	static function redirect($url)
	{
		if ($url) {
			if (!headers_sent()) {
				header("Location:" . $url);
			} else {
				echo '<script>location.href="' . $url . '";</script>';
			}
		}
	}

	static function jsredirect()
	{
		echo "<script>window.location.href = '" . SITE_URL . "'+sessionStorage.getItem('v_url');</script>";
	}

	static function cleaner($text)
	{
		$array = array('insert', 'update', 'union', 'select', '*');
		$text = str_replace($array, '', $text);
		$text = trim($text);
		$text = strip_tags($text);
		return $text;
	}

	static function uyari($key, $value)
	{
		$_SESSION[$key] = $value;
	}

	static function jdil($json)
	{
		$veri = json_decode($json, true);

		return $veri[did];
	}
	static function jdilWithLangs($json, $langs)
	{
		$veri = json_decode($json, true);

		return $veri[$langs];
	}

	static function sefveri($json)
	{
		$veri = json_decode($json, true);

		foreach ($veri as $k => $ver) {
			$snc[$k] = helper::trtoen($ver);
		}
		$retrn = json_encode($snc);
		return $retrn;
	}

	static function kisaText($text, $karakter)
	{
		$arr = explode(' ', strip_tags($text));
		for ($i = 0; $i < $karakter; $i++) {
			$veri[] = $arr[$i];
		}
		return implode(" ", $veri);
	}

	static function alert($tur, $metin)
	{

		echo '<script>toastr.' . $tur . '("' . $metin . '");</script>';
	}


	static function trtoen($text)
	{
		$text = trim($text);
		$search = array('À', 'È', 'Ð', 'Ø', 'ß', 'à', 'è', 'ð', 'ø', 'ÿ', '©', 'Α', 'Ι', 'Ρ', 'Ά', 'Ϋ', 'α', 'ι', 'ρ', 'ά', 'ϊ', 'Ş', 'ş', 'А', 'З', 'П', 'Ч', 'Я', 'а', 'з', 'п', 'ч', 'я', 'Є', 'є', 'Č', 'Ž', 'č', 'ž', 'Ą', 'Ż', 'ą', 'ż', 'Ā', 'Š', 'ā', 'š', 'Á', 'É', 'Ñ', 'Ù', 'á', 'é', 'ñ', 'ù', 'Β', 'Κ', 'Σ', 'Έ', 'β', 'κ', 'σ', 'έ', 'ΰ', 'İ', 'ı', 'Б', 'И', 'Р', 'Ш', 'б', 'и', 'р', 'ш', 'І', 'і', 'Ď', 'ď', 'Ć', 'ć', 'Č', 'Ū', 'č', 'ū', 'Â', 'Ê', 'Ò', 'Ú', 'â', 'ê', 'ò', 'ú', 'Γ', 'Λ', 'Τ', 'Ί', 'γ', 'λ', 'τ', 'ί', 'ϋ', 'Ç', 'ç', 'В', 'Й', 'С', 'Щ', 'в', 'й', 'с', 'щ', 'Ї', 'ї', 'Ě', 'ě', 'Ę', 'ę', 'Ē', 'Ž', 'ē', 'ž', 'Ã', 'Ë', 'Ó', 'Û', 'ã', 'ë', 'ó', 'û', 'Δ', 'Μ', 'Υ', 'Ό', 'δ', 'μ', 'υ', 'ό', 'ΐ', 'Ü', 'ü', 'Г', 'К', 'Т', 'Ъ', 'г', 'к', 'т', 'ъ', 'Ґ', 'ґ', 'Ň', 'ň', 'Ł', 'ł', 'Ģ', 'ģ', 'Ä', 'Ì', 'Ô', 'Ü', 'ä', 'ì', 'ô', 'ü', 'Ε', 'Ν', 'Φ', 'Ύ', 'ε', 'ν', 'φ', 'ύ', 'Ö', 'ö', 'Д', 'Л', 'У', 'Ы', 'д', 'л', 'у', 'ы', 'Ř', 'ř', 'Ń', 'ń', 'Ī', 'ī', 'Å', 'Í', 'Õ', 'Ű', 'å', 'í', 'õ', 'ű', 'Ζ', 'Ξ', 'Χ', 'Ή', 'ζ', 'ξ', 'χ', 'ή', 'Ğ', 'ğ', 'Е', 'М', 'Ф', 'Ь', 'е', 'м', 'ф', 'ь', 'Š', 'š', 'Ó', 'ó', 'Ķ', 'ķ', 'Æ', 'Î', 'Ö', 'Ý', 'æ', 'î', 'ö', 'ý', 'Η', 'Ο', 'Ψ', 'Ώ', 'η', 'ο', 'ψ', 'ώ', 'Ё', 'Н', 'Х', 'Э', 'ё', 'н', 'х', 'э', 'Ť', 'ť', 'Ś', 'ś', 'Ļ', 'ļ', 'Ç', 'Ï', 'Ő', 'Þ', 'ç', 'ï', 'ő', 'þ', 'Θ', 'Π', 'Ω', 'Ϊ', 'θ', 'π', 'ω', 'ς', 'Ж', 'О', 'Ц', 'Ю', 'ж', 'о', 'ц', 'ю', 'Ů', 'ů', 'Ź', 'ź', 'Ņ', 'ņ', ' ', ' ', '', '/', ' ', ' ', '', '&', ',', '?');
		$replace = array('A', 'E', 'D', 'O', 'ss', 'a', 'e', 'd', 'o', 'y', '(c)', 'A', 'I', 'R', 'A', 'Y', 'a', 'i', 'r', 'a', 'i', 'S', 's', 'A', 'Z', 'P', 'Ch', 'Ya', 'a', 'z', 'p', 'ch', 'ya', 'Ye', 'ye', 'C', 'Z', 'c', 'z', 'A', 'Z', 'a', 'z', 'A', 'S', 'a', 's', 'A', 'E', 'N', 'U', 'a', 'e', 'n', 'u', 'B', 'K', 'S', 'E', 'b', 'k', 's', 'e', 'y', 'I', 'i', 'B', 'I', 'R', 'Sh', 'b', 'i', 'r', 'sh', 'I', 'i', 'D', 'd', 'C', 'c', 'C', 'u', 'c', 'u', 'A', 'E', 'O', 'U', 'a', 'e', 'o', 'u', 'G', 'L', 'T', 'I', 'g', 'l', 't', 'i', 'y', 'C', 'c', 'V', 'J', 'S', 'Sh', 'v', 'j', 's', 'sh', 'Yi', 'yi', 'E', 'e', 'e', 'e', 'E', 'Z', 'e', 'z', 'A', 'E', 'O', 'U', 'a', 'e', 'o', 'u', 'D', 'M', 'Y', 'O', 'd', 'm', 'y', 'o', 'i', 'U', 'u', 'G', 'K', 'T', '', 'g', 'k', 't', '', 'G', 'g', 'N', 'n', 'L', 'l', 'G', 'g', 'A', 'I', 'O', 'U', 'a', 'i', 'o', 'u', 'E', 'N', 'F', 'Y', 'e', 'n', 'f', 'y', 'O', 'o', 'D', 'L', 'U', 'Y', 'd', 'l', 'u', 'y', 'R', 'r', 'N', 'n', 'i', 'i', 'A', 'I', 'O', 'U', 'a', 'i', 'o', 'u', 'Z', '3', 'X', 'H', 'z', '3', 'x', 'h', 'G', 'g', 'E', 'M', 'F', '', 'e', 'm', 'f', '', 'S', 's', 'o', 'o', 'k', 'k', 'AE', 'I', 'O', 'Y', 'ae', 'i', 'o', 'y', 'H', 'O', 'PS', 'W', 'h', 'o', 'ps', 'w', 'Yo', 'N', 'H', 'E', 'yo', 'n', 'h', 'e', 'T', 't', 'S', 's', 'L', 'l', 'C', 'I', 'O', 'TH', 'c', 'i', 'o', 'th', '8', 'P', 'W', 'I', '8', 'p', 'w', 's', 'Zh', 'O', 'C', 'Yu', 'zh', 'o', 'c', 'yu', 'U', 'u', 'Z', 'z', 'N', 'n', '-', '', '', '-', '-', '', '', '', '', '');
		$new_text = str_replace($search, $replace, $text);
		return $new_text;
	}

	static function seoUrl($string)
	{
		$find = array('À', 'È', 'Ð', 'Ø', 'ß', 'à', 'è', 'ð', 'ø', 'ÿ', '©', 'Α', 'Ι', 'Ρ', 'Ά', 'Ϋ', 'α', 'ι', 'ρ', 'ά', 'ϊ', 'Ş', 'ş', 'А', 'З', 'П', 'Ч', 'Я', 'а', 'з', 'п', 'ч', 'я', 'Є', 'є', 'Č', 'Ž', 'č', 'ž', 'Ą', 'Ż', 'ą', 'ż', 'Ā', 'Š', 'ā', 'š', 'Á', 'É', 'Ñ', 'Ù', 'á', 'é', 'ñ', 'ù', 'Β', 'Κ', 'Σ', 'Έ', 'β', 'κ', 'σ', 'έ', 'ΰ', 'İ', 'ı', 'Б', 'И', 'Р', 'Ш', 'б', 'и', 'р', 'ш', 'І', 'і', 'Ď', 'ď', 'Ć', 'ć', 'Č', 'Ū', 'č', 'ū', 'Â', 'Ê', 'Ò', 'Ú', 'â', 'ê', 'ò', 'ú', 'Γ', 'Λ', 'Τ', 'Ί', 'γ', 'λ', 'τ', 'ί', 'ϋ', 'Ç', 'ç', 'В', 'Й', 'С', 'Щ', 'в', 'й', 'с', 'щ', 'Ї', 'ї', 'Ě', 'ě', 'Ę', 'ę', 'Ē', 'Ž', 'ē', 'ž', 'Ã', 'Ë', 'Ó', 'Û', 'ã', 'ë', 'ó', 'û', 'Δ', 'Μ', 'Υ', 'Ό', 'δ', 'μ', 'υ', 'ό', 'ΐ', 'Ü', 'ü', 'Г', 'К', 'Т', 'Ъ', 'г', 'к', 'т', 'ъ', 'Ґ', 'ґ', 'Ň', 'ň', 'Ł', 'ł', 'Ģ', 'ģ', 'Ä', 'Ì', 'Ô', 'Ü', 'ä', 'ì', 'ô', 'ü', 'Ε', 'Ν', 'Φ', 'Ύ', 'ε', 'ν', 'φ', 'ύ', 'Ö', 'ö', 'Д', 'Л', 'У', 'Ы', 'д', 'л', 'у', 'ы', 'Ř', 'ř', 'Ń', 'ń', 'Ī', 'ī', 'Å', 'Í', 'Õ', 'Ű', 'å', 'í', 'õ', 'ű', 'Ζ', 'Ξ', 'Χ', 'Ή', 'ζ', 'ξ', 'χ', 'ή', 'Ğ', 'ğ', 'Е', 'М', 'Ф', 'Ь', 'е', 'м', 'ф', 'ь', 'Š', 'š', 'Ó', 'ó', 'Ķ', 'ķ', 'Æ', 'Î', 'Ö', 'Ý', 'æ', 'î', 'ö', 'ý', 'Η', 'Ο', 'Ψ', 'Ώ', 'η', 'ο', 'ψ', 'ώ', 'Ё', 'Н', 'Х', 'Э', 'ё', 'н', 'х', 'э', 'Ť', 'ť', 'Ś', 'ś', 'Ļ', 'ļ', 'Ç', 'Ï', 'Ő', 'Þ', 'ç', 'ï', 'ő', 'þ', 'Θ', 'Π', 'Ω', 'Ϊ', 'θ', 'π', 'ω', 'ς', 'Ж', 'О', 'Ц', 'Ю', 'ж', 'о', 'ц', 'ю', 'Ů', 'ů', 'Ź', 'ź', 'Ņ', 'ņ', ' ', ' .', '.', '/', ' ', ' .', '.', '&', ',', '?', '+', '#', '.');
		$replace = array('A', 'E', 'D', 'O', 'ss', 'a', 'e', 'd', 'o', 'y', '(c)', 'A', 'I', 'R', 'A', 'Y', 'a', 'i', 'r', 'a', 'i', 'S', 's', 'A', 'Z', 'P', 'Ch', 'Ya', 'a', 'z', 'p', 'ch', 'ya', 'Ye', 'ye', 'C', 'Z', 'c', 'z', 'A', 'Z', 'a', 'z', 'A', 'S', 'a', 's', 'A', 'E', 'N', 'U', 'a', 'e', 'n', 'u', 'B', 'K', 'S', 'E', 'b', 'k', 's', 'e', 'y', 'I', 'i', 'B', 'I', 'R', 'Sh', 'b', 'i', 'r', 'sh', 'I', 'i', 'D', 'd', 'C', 'c', 'C', 'u', 'c', 'u', 'A', 'E', 'O', 'U', 'a', 'e', 'o', 'u', 'G', 'L', 'T', 'I', 'g', 'l', 't', 'i', 'y', 'C', 'c', 'V', 'J', 'S', 'Sh', 'v', 'j', 's', 'sh', 'Yi', 'yi', 'E', 'e', 'e', 'e', 'E', 'Z', 'e', 'z', 'A', 'E', 'O', 'U', 'a', 'e', 'o', 'u', 'D', 'M', 'Y', 'O', 'd', 'm', 'y', 'o', 'i', 'U', 'u', 'G', 'K', 'T', '', 'g', 'k', 't', '', 'G', 'g', 'N', 'n', 'L', 'l', 'G', 'g', 'A', 'I', 'O', 'U', 'a', 'i', 'o', 'u', 'E', 'N', 'F', 'Y', 'e', 'n', 'f', 'y', 'O', 'o', 'D', 'L', 'U', 'Y', 'd', 'l', 'u', 'y', 'R', 'r', 'N', 'n', 'i', 'i', 'A', 'I', 'O', 'U', 'a', 'i', 'o', 'u', 'Z', '3', 'X', 'H', 'z', '3', 'x', 'h', 'G', 'g', 'E', 'M', 'F', '', 'e', 'm', 'f', '', 'S', 's', 'o', 'o', 'k', 'k', 'AE', 'I', 'O', 'Y', 'ae', 'i', 'o', 'y', 'H', 'O', 'PS', 'W', 'h', 'o', 'ps', 'w', 'Yo', 'N', 'H', 'E', 'yo', 'n', 'h', 'e', 'T', 't', 'S', 's', 'L', 'l', 'C', 'I', 'O', 'TH', 'c', 'i', 'o', 'th', '8', 'P', 'W', 'I', '8', 'p', 'w', 's', 'Zh', 'O', 'C', 'Yu', 'zh', 'o', 'c', 'yu', 'U', 'u', 'Z', 'z', 'N', 'n', '-', '', '', '-', '-', '', '', '', '', '', 'plus', 'sharp', '');
		$string = strtolower(str_replace($find, $replace, $string));
		$string = preg_replace("@[^A-Za-z0-9\-_\.\+]@i", ' ', $string);
		$string = trim(preg_replace('/\s+/', ' ', $string));
		$string = str_replace(' ', '-', $string);
		return $string;
	}

	static function imageUpload($file, $path)
	{
		$filename = "public/img/" . date("Y") . "/" . $path;
		if (!is_dir($filename)) {
			mkdir($filename, 0777);
		}

		$file_ = $filename . "/" . uniqid() . "_" . strtolower(str_replace(" ", "-", htmlspecialchars(helper::trtoen(basename($file["file"]["name"])))));

		if (move_uploaded_file($file["file"]["tmp_name"], $file_)) {
			return $file_;
		} else {
			return false;
		}
	}

	static function dosyaYukle($file, $yol, $dil)
	{

		// Check if file was uploaded without errors
		if (isset($file) && $file["error"][$dil] == 0) {
			$allowed = array("pdf" => 'application/pdf', "mp4" => "video/mp4", "avi" => "video/x-msvideo", "wmv" => "video/x-ms-wmv", "mov" => "video/quicktime");
			$filename = $file["name"][$dil];
			$filetype = $file["type"][$dil];
			$filesize = $file["size"][$dil];

			// Verify file extension
			$ext = pathinfo($filename, PATHINFO_EXTENSION);
			if (!array_key_exists($ext, $allowed)) die("0");

			// Verify file size - 5MB maximum
			$maxsize = 500 * 1024 * 1024;
			if ($filesize > $maxsize) die("0");

			// Verify MYME type of the file
			if (in_array($filetype, $allowed)) {
				// Check whether file exists before uploading it
				$time = time();
				move_uploaded_file($file["tmp_name"][$dil], $_SERVER['DOCUMENT_ROOT'] . "/public/" . $yol . "/" . $time . "-" . $filename);
				return $time . "-" . $filename;
			} else {
				echo "0";
			}
		} else {
			echo "0";
		}
	}

	static function PanelMenu()
	{
		$panelMenu = [
			[
				"text" => "Siteyi Görüntüle",
				"href" => "" . SITE_URL . "",
				"icon" => "fa fa-home",
				"target" => "_blank"
			],
			[
				"text" => "İletişim Formu",
				"href" => ADMIN_URL . "contact/list",
				"active" => "contact",
				"icon" => "fa fa-comments",
				"target" => ""
			],
			[
				"text" => "Ayarlar",
				"href" => "#",
				"active" => "setting",
				"icon" => "fa fa-cogs",
				"target" => "",
				"children" => [
					[
						"text" => "Site Ayarları",
						"href" => "",
						"active" => "setlink",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Tüm Ayarlar",
								"href" => ADMIN_URL . "sitesettings",
								"active" => "sets",
								"icon" => "",
								"target" => "",
							]
						]
					],
					[
						"text" => "Site Dilleri",
						"href" => "",
						"active" => "lang",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Dil Değişkenleri",
								"href" => ADMIN_URL . "langs/langvariable",
								"active" => "langvariable",
								"icon" => "",
								"target" => "",
							]
						]
					],
					[
						"text" => "Görünüm Ayarları",
						"href" => "",
						"active" => "viewlink",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Menü Ayarları",
								"href" => ADMIN_URL . "menu",
								"active" => "menu",
								"icon" => "",
								"target" => "",
							],
							[
								"text" => "Tema Ayarları",
								"href" => ADMIN_URL . "themes",
								"active" => "themes",
								"icon" => "",
								"target" => "",
							]
						]
					],
					[
						"text" => "Sosyal Medya Link Yönetimi",
						"href" => ADMIN_URL . "social",
						"active" => "social",
						"icon" => "",
						"target" => "",
					],
					[
						"text" => "Mail ve Mail şablon Yönetimi",
						"href" => "",
						"active" => "mail",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Mail Ayarları",
								"href" => ADMIN_URL . "mail/settings",
								"active" => "mailsetting",
								"icon" => "",
								"target" => "",
							],
							[
								"text" => "Mail Şablonları",
								"href" => ADMIN_URL . "mail",
								"active" => "mailtemplate",
								"icon" => "",
								"target" => "",
							]
						]
					],
				]
			],
			[
				"text" => "Kullanıcı Yönetimi",
				"href" => ADMIN_URL . "users",
				"active" => "users",
				"icon" => "fa fa-user",
				"target" => "",
			],
			[
				"text" => "İçerik Yönetimi",
				"href" => "#",
				"active" => "content",
				"icon" => "fa fa-newspaper",
				"target" => "",
				"children" => [
					[
						"text" => "Yazı Yönetimi",
						"href" => "#",
						"active" => "post",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Kategoriler",
								"href" => "post/categories",
								"active" => "categories",
								"icon" => "",
								"target" => "",
							],
							[
								"text" => "Yazılar",
								"href" => "post/posts",
								"active" => "posts",
								"icon" => "",
								"target" => "",
							],[
								"text" => "Yeni Yazı",
								"href" => "post/addpost",
								"active" => "addpost",
								"icon" => "",
								"target" => "",
							]
						]
					],
					[
						"text" => "Sayfa Yönetimi",
						"href" => "#",
						"active" => "post",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Sayfalar",
								"href" => "pages",
								"active" => "categories",
								"icon" => "",
								"target" => "",
							],[
								"text" => "Yeni Sayfa",
								"href" => "pages/addpage",
								"active" => "addpage",
								"icon" => "",
								"target" => "",
							],[
								"text" => "Sayfa Parçaları",
								"href" => "pages/parts",
								"active" => "addpage",
								"icon" => "",
								"target" => "",
							]
						]
					],
					[
						"text" => "Dosya Yönetimi",
						"href" => "#",
						"active" => "files",
						"icon" => "",
						"target" => "",
						"children" => [
							[
								"text" => "Görseller",
								"href" => "files/images",
								"active" => "images",
								"icon" => "fa fa-image",
								"target" => "",
							],[
								"text" => "Videolar",
								"href" => "files/videos",
								"active" => "videos",
								"icon" => "fa fa-video-camera",
								"target" => "",
							],[
								"text" => "Dosyalar",
								"href" => "files/files",
								"active" => "files",
								"icon" => "fa fa-file",
								"target" => "",
							]
						]
					],
					[
						"text" => "Reklam Alanları",
						"href" => "ads",
						"active" => "ads",
						"icon" => "",
						"target" => "",
					],
					[
						"text" => "Yorumlar",
						"href" => "comments",
						"active" => "comments",
						"icon" => "",
						"target" => "",
					],
				]
			]
		];
		return $panelMenu;
	}
	static function yetkiKontrol($yetki)
	{
		$yetkiManager = new yetkiManager();
		if (!$yetkiManager->yetkiKontrol("".$yetki."")) {
			$data = array(
				"message" => "Bu işlem için yetkiniz yetersiz!",
				"type" => "error"
			);
			$json = json_encode($data, JSON_UNESCAPED_UNICODE);
			print_r($json);
			return true;
		}else{
			return false;
		}
	}

	static function yetki()
	{
		return [
			[
				"title" => "Kullanıcıları Görüntüleme",
				"short" => "usersview"
			],[
				"title" => "Kullanıcı Ekleme",
				"short" => "useradd"
			],[
				"title" => "Kullanıcı Silme",
				"short" => "userdelete"
			],[
				"title" => "Kullanıcı Güncelleme",
				"short" => "userupdate"
			], [
				"title" => "İletişim Formu Görüntüleme",
				"short" => "contactview"
			], [
				"title" => "Site Ayarları Görüntüleme",
				"short" => "sitesettingsview"
			], [
				"title" => "Site Ayarı Güncelleme",
				"short" => "sitesettingsupdate"
			], [
				"title" => "Dil Değişkenleri Görüntüleme",
				"short" => "langvariablesview"
			], [
				"title" => "Menü Ayarı Görüntüleme",
				"short" => "menusettingsview"
			],  [
				"title" => "Menü Ekleme",
				"short" => "addmenu"
			],  [
				"title" => "Menü Güncelleme",
				"short" => "updatemenu"
			], [
				"title" => "Sosyal Medyaları Görüntüleme",
				"short" => "socialmediaview"
			], [
				"title" => "Mail Şablonları Görüntüleme",
				"short" => "mailschemaview"
			], [
				"title" => "Mail Ayarları Görüntüleme",
				"short" => "mailsettingsview"
			]
			
		];
	}

	static function durum($v)
	{
		switch ($v) {
			case 0:
				return "<b class='btn btn-danger'>Pasif</b>";
				break;
			case 1:
				return "<b class='btn btn-success'>Aktif</b>";
				break;
		}
	}

	static function iconpack()
	{
		$icons = 'fab fa-500px fa-fw,fab fa-accessible-icon fa-fw,fab fa-accusoft fa-fw,fab fa-acquisitions-incorporated fa-fw,fas fa-ad fa-fw,fas fa-address-book fa-fw,far fa-address-book fa-fw,fas fa-address-card fa-fw,far fa-address-card fa-fw,fas fa-adjust fa-fw,fab fa-adn fa-fw,fab fa-adversal fa-fw,fab fa-affiliatetheme fa-fw,fas fa-air-freshener fa-fw,fab fa-airbnb fa-fw,fab fa-algolia fa-fw,fas fa-align-center fa-fw,fas fa-align-justify fa-fw,fas fa-align-left fa-fw,fas fa-align-right fa-fw,fab fa-alipay fa-fw,fas fa-allergies fa-fw,fab fa-amazon fa-fw,fab fa-amazon-pay fa-fw,fas fa-ambulance fa-fw,fas fa-american-sign-language-interpreting fa-fw,fab fa-amilia fa-fw,fas fa-anchor fa-fw,fab fa-android fa-fw,fab fa-angellist fa-fw,fas fa-angle-double-down fa-fw,fas fa-angle-double-left fa-fw,fas fa-angle-double-right fa-fw,fas fa-angle-double-up fa-fw,fas fa-angle-down fa-fw,fas fa-angle-left fa-fw,fas fa-angle-right fa-fw,fas fa-angle-up fa-fw,fas fa-angry fa-fw,far fa-angry fa-fw,fab fa-angrycreative fa-fw,fab fa-angular fa-fw,fas fa-ankh fa-fw,fab fa-app-store fa-fw,fab fa-app-store-ios fa-fw,fab fa-apper fa-fw,fab fa-apple fa-fw,fas fa-apple-alt fa-fw,fab fa-apple-pay fa-fw,fas fa-archive fa-fw,fas fa-archway fa-fw,fas fa-arrow-alt-circle-down fa-fw,far fa-arrow-alt-circle-down fa-fw,fas fa-arrow-alt-circle-left fa-fw,far fa-arrow-alt-circle-left fa-fw,fas fa-arrow-alt-circle-right fa-fw,far fa-arrow-alt-circle-right fa-fw,fas fa-arrow-alt-circle-up fa-fw,far fa-arrow-alt-circle-up fa-fw,fas fa-arrow-circle-down fa-fw,fas fa-arrow-circle-left fa-fw,fas fa-arrow-circle-right fa-fw,fas fa-arrow-circle-up fa-fw,fas fa-arrow-down fa-fw,fas fa-arrow-left fa-fw,fas fa-arrow-right fa-fw,fas fa-arrow-up fa-fw,fas fa-arrows-alt fa-fw,fas fa-arrows-alt-h fa-fw,fas fa-arrows-alt-v fa-fw,fab fa-artstation fa-fw,fas fa-assistive-listening-systems fa-fw,fas fa-asterisk fa-fw,fab fa-asymmetrik fa-fw,fas fa-at fa-fw,fas fa-atlas fa-fw,fab fa-atlassian fa-fw,fas fa-atom fa-fw,fab fa-audible fa-fw,fas fa-audio-description fa-fw,fab fa-autoprefixer fa-fw,fab fa-avianex fa-fw,fab fa-aviato fa-fw,fas fa-award fa-fw,fab fa-aws fa-fw,fas fa-baby fa-fw,fas fa-baby-carriage fa-fw,fas fa-backspace fa-fw,fas fa-backward fa-fw,fas fa-bacon fa-fw,fas fa-bacteria fa-fw,fas fa-bacterium fa-fw,fas fa-bahai fa-fw,fas fa-balance-scale fa-fw,fas fa-balance-scale-left fa-fw,fas fa-balance-scale-right fa-fw,fas fa-ban fa-fw,fas fa-band-aid fa-fw,fab fa-bandcamp fa-fw,fas fa-barcode fa-fw,fas fa-bars fa-fw,fas fa-baseball-ball fa-fw,fas fa-basketball-ball fa-fw,fas fa-bath fa-fw,fas fa-battery-empty fa-fw,fas fa-battery-full fa-fw,fas fa-battery-half fa-fw,fas fa-battery-quarter fa-fw,fas fa-battery-three-quarters fa-fw,fab fa-battle-net fa-fw,fas fa-bed fa-fw,fas fa-beer fa-fw,fab fa-behance fa-fw,fab fa-behance-square fa-fw,fas fa-bell fa-fw,far fa-bell fa-fw,fas fa-bell-slash fa-fw,far fa-bell-slash fa-fw,fas fa-bezier-curve fa-fw,fas fa-bible fa-fw,fas fa-bicycle fa-fw,fas fa-biking fa-fw,fab fa-bimobject fa-fw,fas fa-binoculars fa-fw,fas fa-biohazard fa-fw,fas fa-birthday-cake fa-fw,fab fa-bitbucket fa-fw,fab fa-bitcoin fa-fw,fab fa-bity fa-fw,fab fa-black-tie fa-fw,fab fa-blackberry fa-fw,fas fa-blender fa-fw,fas fa-blender-phone fa-fw,fas fa-blind fa-fw,fas fa-blog fa-fw,fab fa-blogger fa-fw,fab fa-blogger-b fa-fw,fab fa-bluetooth fa-fw,fab fa-bluetooth-b fa-fw,fas fa-bold fa-fw,fas fa-bolt fa-fw,fas fa-bomb fa-fw,fas fa-bone fa-fw,fas fa-bong fa-fw,fas fa-book fa-fw,fas fa-book-dead fa-fw,fas fa-book-medical fa-fw,fas fa-book-open fa-fw,fas fa-book-reader fa-fw,fas fa-bookmark fa-fw,far fa-bookmark fa-fw,fab fa-bootstrap fa-fw,fas fa-border-all fa-fw,fas fa-border-none fa-fw,fas fa-border-style fa-fw,fas fa-bowling-ball fa-fw,fas fa-box fa-fw,fas fa-box-open fa-fw,fas fa-box-tissue fa-fw,fas fa-boxes fa-fw,fas fa-braille fa-fw,fas fa-brain fa-fw,fas fa-bread-slice fa-fw,fas fa-briefcase fa-fw,fas fa-briefcase-medical fa-fw,fas fa-broadcast-tower fa-fw,fas fa-broom fa-fw,fas fa-brush fa-fw,fab fa-btc fa-fw,fab fa-buffer fa-fw,fas fa-bug fa-fw,fas fa-building fa-fw,far fa-building fa-fw,fas fa-bullhorn fa-fw,fas fa-bullseye fa-fw,fas fa-burn fa-fw,
				fab fa-buromobelexperte fa-fw,fas fa-bus fa-fw,fas fa-bus-alt fa-fw,fas fa-business-time fa-fw,fab fa-buy-n-large fa-fw,fab fa-buysellads fa-fw,fas fa-calculator fa-fw,fas fa-calendar fa-fw,far fa-calendar fa-fw,fas fa-calendar-alt fa-fw,far fa-calendar-alt fa-fw,fas fa-calendar-check fa-fw,far fa-calendar-check fa-fw,fas fa-calendar-day fa-fw,fas fa-calendar-minus fa-fw,far fa-calendar-minus fa-fw,fas fa-calendar-plus fa-fw,far fa-calendar-plus fa-fw,fas fa-calendar-times fa-fw,far fa-calendar-times fa-fw,fas fa-calendar-week fa-fw,fas fa-camera fa-fw,fas fa-camera-retro fa-fw,fas fa-campground fa-fw,fab fa-canadian-maple-leaf fa-fw,fas fa-candy-cane fa-fw,fas fa-cannabis fa-fw,fas fa-capsules fa-fw,fas fa-car fa-fw,fas fa-car-alt fa-fw,fas fa-car-battery fa-fw,fas fa-car-crash fa-fw,fas fa-car-side fa-fw,fas fa-caravan fa-fw,fas fa-caret-down fa-fw,fas fa-caret-left fa-fw,fas fa-caret-right fa-fw,fas fa-caret-square-down fa-fw,far fa-caret-square-down fa-fw,fas fa-caret-square-left fa-fw,far fa-caret-square-left fa-fw,fas fa-caret-square-right fa-fw,far fa-caret-square-right fa-fw,fas fa-caret-square-up fa-fw,far fa-caret-square-up fa-fw,fas fa-caret-up fa-fw,fas fa-carrot fa-fw,fas fa-cart-arrow-down fa-fw,fas fa-cart-plus fa-fw,fas fa-cash-register fa-fw,fas fa-cat fa-fw,fab fa-cc-amazon-pay fa-fw,fab fa-cc-amex fa-fw,fab fa-cc-apple-pay fa-fw,fab fa-cc-diners-club fa-fw,fab fa-cc-discover fa-fw,fab fa-cc-jcb fa-fw,fab fa-cc-mastercard fa-fw,fab fa-cc-paypal fa-fw,fab fa-cc-stripe fa-fw,fab fa-cc-visa fa-fw,fab fa-centercode fa-fw,fab fa-centos fa-fw,fas fa-certificate fa-fw,fas fa-chair fa-fw,fas fa-chalkboard fa-fw,fas fa-chalkboard-teacher fa-fw,fas fa-charging-station fa-fw,fas fa-chart-area fa-fw,fas fa-chart-bar fa-fw,far fa-chart-bar fa-fw,fas fa-chart-line fa-fw,fas fa-chart-pie fa-fw,fas fa-check fa-fw,fas fa-check-circle fa-fw,far fa-check-circle fa-fw,fas fa-check-double fa-fw,fas fa-check-square fa-fw,far fa-check-square fa-fw,fas fa-cheese fa-fw,fas fa-chess fa-fw,fas fa-chess-bishop fa-fw,fas fa-chess-board fa-fw,fas fa-chess-king fa-fw,fas fa-chess-knight fa-fw,fas fa-chess-pawn fa-fw,fas fa-chess-queen fa-fw,fas fa-chess-rook fa-fw,fas fa-chevron-circle-down fa-fw,fas fa-chevron-circle-left fa-fw,fas fa-chevron-circle-right fa-fw,fas fa-chevron-circle-up fa-fw,fas fa-chevron-down fa-fw,fas fa-chevron-left fa-fw,fas fa-chevron-right fa-fw,fas fa-chevron-up fa-fw,fas fa-child fa-fw,fab fa-chrome fa-fw,fab fa-chromecast fa-fw,fas fa-church fa-fw,fas fa-circle fa-fw,far fa-circle fa-fw,fas fa-circle-notch fa-fw,fas fa-city fa-fw,fas fa-clinic-medical fa-fw,fas fa-clipboard fa-fw,far fa-clipboard fa-fw,fas fa-clipboard-check fa-fw,fas fa-clipboard-list fa-fw,fas fa-clock fa-fw,far fa-clock fa-fw,fas fa-clone fa-fw,far fa-clone fa-fw,fas fa-closed-captioning fa-fw,far fa-closed-captioning fa-fw,fas fa-cloud fa-fw,fas fa-cloud-download-alt fa-fw,fas fa-cloud-meatball fa-fw,fas fa-cloud-moon fa-fw,fas fa-cloud-moon-rain fa-fw,fas fa-cloud-rain fa-fw,fas fa-cloud-showers-heavy fa-fw,fas fa-cloud-sun fa-fw,fas fa-cloud-sun-rain fa-fw,fas fa-cloud-upload-alt fa-fw,fab fa-cloudflare fa-fw,fab fa-cloudscale fa-fw,fab fa-cloudsmith fa-fw,fab fa-cloudversify fa-fw,fas fa-cocktail fa-fw,fas fa-code fa-fw,fas fa-code-branch fa-fw,fab fa-codepen fa-fw,fab fa-codiepie fa-fw,fas fa-coffee fa-fw,fas fa-cog fa-fw,fas fa-cogs fa-fw,fas fa-coins fa-fw,fas fa-columns fa-fw,fas fa-comment fa-fw,far fa-comment fa-fw,fas fa-comment-alt fa-fw,far fa-comment-alt fa-fw,fas fa-comment-dollar fa-fw,fas fa-comment-dots fa-fw,far fa-comment-dots fa-fw,fas fa-comment-medical fa-fw,fas fa-comment-slash fa-fw,fas fa-comments fa-fw,far fa-comments fa-fw,fas fa-comments-dollar fa-fw,fas fa-compact-disc fa-fw,fas fa-compass fa-fw,far fa-compass fa-fw,fas fa-compress fa-fw,fas fa-compress-alt fa-fw,fas fa-compress-arrows-alt fa-fw,fas fa-concierge-bell fa-fw,fab fa-confluence fa-fw,fab fa-connectdevelop fa-fw,fab fa-contao fa-fw,fas fa-cookie fa-fw,fas fa-cookie-bite fa-fw,fas fa-copy fa-fw,far fa-copy fa-fw,fas fa-copyright fa-fw,far fa-copyright fa-fw,fab fa-cotton-bureau fa-fw,fas fa-couch fa-fw,fab fa-cpanel fa-fw,fab fa-creative-commons fa-fw,fab fa-creative-commons-by fa-fw,fab fa-creative-commons-nc fa-fw,fab fa-creative-commons-nc-eu fa-fw,fab fa-creative-commons-nc-jp fa-fw,fab fa-creative-commons-nd fa-fw,fab fa-creative-commons-pd fa-fw,fab fa-creative-commons-pd-alt fa-fw,fab fa-creative-commons-remix fa-fw,fab fa-creative-commons-sa fa-fw,fab fa-creative-commons-sampling fa-fw,fab fa-creative-commons-sampling-plus fa-fw,fab fa-creative-commons-share fa-fw,fab fa-creative-commons-zero fa-fw,fas fa-credit-card fa-fw,far fa-credit-card fa-fw,fab fa-critical-role fa-fw,fas fa-crop fa-fw,fas fa-crop-alt fa-fw,fas fa-cross fa-fw,fas fa-crosshairs fa-fw,fas fa-crow fa-fw,fas fa-crown fa-fw,fas fa-crutch fa-fw,fab fa-css3 fa-fw,fab fa-css3-alt fa-fw,fas fa-cube fa-fw,fas fa-cubes fa-fw,fas fa-cut fa-fw,fab fa-cuttlefish fa-fw,fab fa-d-and-d fa-fw,fab fa-d-and-d-beyond fa-fw,fab fa-dailymotion fa-fw,fab fa-dashcube fa-fw,fas fa-database fa-fw,fas fa-deaf fa-fw,fab fa-deezer fa-fw,fab fa-delicious fa-fw,fas fa-democrat fa-fw,fab fa-deploydog fa-fw,
				fab fa-deskpro fa-fw,fas fa-desktop fa-fw,fab fa-dev fa-fw,fab fa-deviantart fa-fw,fas fa-dharmachakra fa-fw,fab fa-dhl fa-fw,fas fa-diagnoses fa-fw,fab fa-diaspora fa-fw,fas fa-dice fa-fw,fas fa-dice-d20 fa-fw,fas fa-dice-d6 fa-fw,fas fa-dice-five fa-fw,fas fa-dice-four fa-fw,fas fa-dice-one fa-fw,fas fa-dice-six fa-fw,fas fa-dice-three fa-fw,fas fa-dice-two fa-fw,fab fa-digg fa-fw,fab fa-digital-ocean fa-fw,fas fa-digital-tachograph fa-fw,fas fa-directions fa-fw,fab fa-discord fa-fw,fab fa-discourse fa-fw,fas fa-disease fa-fw,fas fa-divide fa-fw,fas fa-dizzy fa-fw,far fa-dizzy fa-fw,fas fa-dna fa-fw,fab fa-dochub fa-fw,fab fa-docker fa-fw,fas fa-dog fa-fw,fas fa-dollar-sign fa-fw,fas fa-dolly fa-fw,fas fa-dolly-flatbed fa-fw,fas fa-donate fa-fw,fas fa-door-closed fa-fw,fas fa-door-open fa-fw,fas fa-dot-circle fa-fw,far fa-dot-circle fa-fw,fas fa-dove fa-fw,fas fa-download fa-fw,fab fa-draft2digital fa-fw,fas fa-drafting-compass fa-fw,fas fa-dragon fa-fw,fas fa-draw-polygon fa-fw,fab fa-dribbble fa-fw,fab fa-dribbble-square fa-fw,fab fa-dropbox fa-fw,fas fa-drum fa-fw,fas fa-drum-steelpan fa-fw,fas fa-drumstick-bite fa-fw,fab fa-drupal fa-fw,fas fa-dumbbell fa-fw,fas fa-dumpster fa-fw,fas fa-dumpster-fire fa-fw,fas fa-dungeon fa-fw,fab fa-dyalog fa-fw,fab fa-earlybirds fa-fw,fab fa-ebay fa-fw,fab fa-edge fa-fw,fab fa-edge-legacy fa-fw,fas fa-edit fa-fw,far fa-edit fa-fw,fas fa-egg fa-fw,fas fa-eject fa-fw,fab fa-elementor fa-fw,fas fa-ellipsis-h fa-fw,fas fa-ellipsis-v fa-fw,fab fa-ello fa-fw,fab fa-ember fa-fw,fab fa-empire fa-fw,fas fa-envelope fa-fw,far fa-envelope fa-fw,fas fa-envelope-open fa-fw,far fa-envelope-open fa-fw,fas fa-envelope-open-text fa-fw,fas fa-envelope-square fa-fw,fab fa-envira fa-fw,fas fa-equals fa-fw,fas fa-eraser fa-fw,fab fa-erlang fa-fw,fab fa-ethereum fa-fw,fas fa-ethernet fa-fw,fab fa-etsy fa-fw,fas fa-euro-sign fa-fw,fab fa-evernote fa-fw,fas fa-exchange-alt fa-fw,fas fa-exclamation fa-fw,fas fa-exclamation-circle fa-fw,fas fa-exclamation-triangle fa-fw,fas fa-expand fa-fw,fas fa-expand-alt fa-fw,fas fa-expand-arrows-alt fa-fw,fab fa-expeditedssl fa-fw,fas fa-external-link-alt fa-fw,fas fa-external-link-square-alt fa-fw,fas fa-eye fa-fw,far fa-eye fa-fw,fas fa-eye-dropper fa-fw,fas fa-eye-slash fa-fw,far fa-eye-slash fa-fw,fab fa-facebook fa-fw,fab fa-facebook-f fa-fw,fab fa-facebook-messenger fa-fw,fab fa-facebook-square fa-fw,fas fa-fan fa-fw,fab fa-fantasy-flight-games fa-fw,fas fa-fast-backward fa-fw,fas fa-fast-forward fa-fw,fas fa-faucet fa-fw,fas fa-fax fa-fw,fas fa-feather fa-fw,fas fa-feather-alt fa-fw,fab fa-fedex fa-fw,fab fa-fedora fa-fw,fas fa-female fa-fw,fas fa-fighter-jet fa-fw,fab fa-figma fa-fw,fas fa-file fa-fw,far fa-file fa-fw,fas fa-file-alt fa-fw,far fa-file-alt fa-fw,fas fa-file-archive fa-fw,far fa-file-archive fa-fw,fas fa-file-audio fa-fw,far fa-file-audio fa-fw,fas fa-file-code fa-fw,far fa-file-code fa-fw,fas fa-file-contract fa-fw,fas fa-file-csv fa-fw,fas fa-file-download fa-fw,fas fa-file-excel fa-fw,far fa-file-excel fa-fw,fas fa-file-export fa-fw,fas fa-file-image fa-fw,far fa-file-image fa-fw,fas fa-file-import fa-fw,fas fa-file-invoice fa-fw,fas fa-file-invoice-dollar fa-fw,fas fa-file-medical fa-fw,fas fa-file-medical-alt fa-fw,fas fa-file-pdf fa-fw,far fa-file-pdf fa-fw,fas fa-file-powerpoint fa-fw,far fa-file-powerpoint fa-fw,fas fa-file-prescription fa-fw,fas fa-file-signature fa-fw,fas fa-file-upload fa-fw,fas fa-file-video fa-fw,far fa-file-video fa-fw,fas fa-file-word fa-fw,far fa-file-word fa-fw,fas fa-fill fa-fw,fas fa-fill-drip fa-fw,fas fa-film fa-fw,fas fa-filter fa-fw,fas fa-fingerprint fa-fw,fas fa-fire fa-fw,fas fa-fire-alt fa-fw,fas fa-fire-extinguisher fa-fw,fab fa-firefox fa-fw,fab fa-firefox-browser fa-fw,fas fa-first-aid fa-fw,fab fa-first-order fa-fw,fab fa-first-order-alt fa-fw,fab fa-firstdraft fa-fw,fas fa-fish fa-fw,fas fa-fist-raised fa-fw,fas fa-flag fa-fw,far fa-flag fa-fw,fas fa-flag-checkered fa-fw,fas fa-flag-usa fa-fw,fas fa-flask fa-fw,fab fa-flickr fa-fw,fab fa-flipboard fa-fw,fas fa-flushed fa-fw,far fa-flushed fa-fw,fab fa-fly fa-fw,fas fa-folder fa-fw,far fa-folder fa-fw,fas fa-folder-minus fa-fw,fas fa-folder-open fa-fw,far fa-folder-open fa-fw,fas fa-folder-plus fa-fw,fas fa-font fa-fw,fab fa-font-awesome fa-fw,fab fa-font-awesome-alt fa-fw,fab fa-font-awesome-flag fa-fw,fab fa-fonticons fa-fw,fab fa-fonticons-fi fa-fw,fas fa-football-ball fa-fw,fab fa-fort-awesome fa-fw,fab fa-fort-awesome-alt fa-fw,fab fa-forumbee fa-fw,fas fa-forward fa-fw,fab fa-foursquare fa-fw,fab fa-free-code-camp fa-fw,fab fa-freebsd fa-fw,fas fa-frog fa-fw,fas fa-frown fa-fw,far fa-frown fa-fw,fas fa-frown-open fa-fw,far fa-frown-open fa-fw,fab fa-fulcrum fa-fw,fas fa-funnel-dollar fa-fw,fas fa-futbol fa-fw,far fa-futbol fa-fw,fab fa-galactic-republic fa-fw,fab fa-galactic-senate fa-fw,fas fa-gamepad fa-fw,fas fa-gas-pump fa-fw,fas fa-gavel fa-fw,fas fa-gem fa-fw,far fa-gem fa-fw,fas fa-genderless fa-fw,fab fa-get-pocket fa-fw,fab fa-gg fa-fw,fab fa-gg-circle fa-fw,fas fa-ghost fa-fw,fas fa-gift fa-fw,fas fa-gifts fa-fw,fab fa-git fa-fw,fab fa-git-alt fa-fw,fab fa-git-square fa-fw,fab fa-github fa-fw,fab fa-github-alt fa-fw,fab fa-github-square fa-fw,fab fa-gitkraken fa-fw,fab fa-gitlab fa-fw,fab fa-gitter fa-fw,fas fa-glass-cheers fa-fw,fas fa-glass-martini fa-fw,fas fa-glass-martini-alt fa-fw,fas fa-glass-whiskey fa-fw,fas fa-glasses fa-fw,fab fa-glide fa-fw,fab fa-glide-g fa-fw,fas fa-globe fa-fw,fas fa-globe-africa fa-fw,fas fa-globe-americas fa-fw,fas fa-globe-asia fa-fw,fas fa-globe-europe fa-fw,fab fa-gofore fa-fw,fas fa-golf-ball fa-fw,fab fa-goodreads fa-fw,fab fa-goodreads-g fa-fw,fab fa-google fa-fw,fab fa-google-drive fa-fw,fab fa-google-pay fa-fw,fab fa-google-play fa-fw,fab fa-google-plus fa-fw,fab fa-google-plus-g fa-fw,fab fa-google-plus-square fa-fw,fab fa-google-wallet fa-fw,fas fa-gopuram fa-fw,fas fa-graduation-cap fa-fw,fab fa-gratipay fa-fw,fab fa-grav fa-fw,fas fa-greater-than fa-fw,fas fa-greater-than-equal fa-fw,fas fa-grimace fa-fw,far fa-grimace fa-fw,fas fa-grin fa-fw,far fa-grin fa-fw,fas fa-grin-alt fa-fw,far fa-grin-alt fa-fw,fas fa-grin-beam fa-fw,far fa-grin-beam fa-fw,fas fa-grin-beam-sweat fa-fw,far fa-grin-beam-sweat fa-fw,
				fas fa-grin-hearts fa-fw,far fa-grin-hearts fa-fw,fas fa-grin-squint fa-fw,far fa-grin-squint fa-fw,fas fa-grin-squint-tears fa-fw,far fa-grin-squint-tears fa-fw,fas fa-grin-stars fa-fw,far fa-grin-stars fa-fw,fas fa-grin-tears fa-fw,far fa-grin-tears fa-fw,fas fa-grin-tongue fa-fw,far fa-grin-tongue fa-fw,fas fa-grin-tongue-squint fa-fw,far fa-grin-tongue-squint fa-fw,fas fa-grin-tongue-wink fa-fw,far fa-grin-tongue-wink fa-fw,fas fa-grin-wink fa-fw,far fa-grin-wink fa-fw,fas fa-grip-horizontal fa-fw,fas fa-grip-lines fa-fw,fas fa-grip-lines-vertical fa-fw,fas fa-grip-vertical fa-fw,fab fa-gripfire fa-fw,fab fa-grunt fa-fw,fab fa-guilded fa-fw,fas fa-guitar fa-fw,fab fa-gulp fa-fw,fas fa-h-square fa-fw,fab fa-hacker-news fa-fw,fab fa-hacker-news-square fa-fw,fab fa-hackerrank fa-fw,fas fa-hamburger fa-fw,fas fa-hammer fa-fw,fas fa-hamsa fa-fw,fas fa-hand-holding fa-fw,fas fa-hand-holding-heart fa-fw,fas fa-hand-holding-medical fa-fw,fas fa-hand-holding-usd fa-fw,fas fa-hand-holding-water fa-fw,fas fa-hand-lizard fa-fw,far fa-hand-lizard fa-fw,fas fa-hand-middle-finger fa-fw,fas fa-hand-paper fa-fw,far fa-hand-paper fa-fw,fas fa-hand-peace fa-fw,far fa-hand-peace fa-fw,fas fa-hand-point-down fa-fw,far fa-hand-point-down fa-fw,fas fa-hand-point-left fa-fw,far fa-hand-point-left fa-fw,fas fa-hand-point-right fa-fw,far fa-hand-point-right fa-fw,fas fa-hand-point-up fa-fw,far fa-hand-point-up fa-fw,fas fa-hand-pointer fa-fw,far fa-hand-pointer fa-fw,fas fa-hand-rock fa-fw,far fa-hand-rock fa-fw,fas fa-hand-scissors fa-fw,far fa-hand-scissors fa-fw,fas fa-hand-sparkles fa-fw,fas fa-hand-spock fa-fw,far fa-hand-spock fa-fw,fas fa-hands fa-fw,fas fa-hands-helping fa-fw,fas fa-hands-wash fa-fw,fas fa-handshake fa-fw,far fa-handshake fa-fw,fas fa-handshake-alt-slash fa-fw,fas fa-handshake-slash fa-fw,fas fa-hanukiah fa-fw,fas fa-hard-hat fa-fw,fas fa-hashtag fa-fw,fas fa-hat-cowboy fa-fw,fas fa-hat-cowboy-side fa-fw,fas fa-hat-wizard fa-fw,fas fa-hdd fa-fw,far fa-hdd fa-fw,fas fa-head-side-cough fa-fw,fas fa-head-side-cough-slash fa-fw,fas fa-head-side-mask fa-fw,fas fa-head-side-virus fa-fw,fas fa-heading fa-fw,fas fa-headphones fa-fw,fas fa-headphones-alt fa-fw,fas fa-headset fa-fw,fas fa-heart fa-fw,far fa-heart fa-fw,fas fa-heart-broken fa-fw,fas fa-heartbeat fa-fw,fas fa-helicopter fa-fw,fas fa-highlighter fa-fw,fas fa-hiking fa-fw,fas fa-hippo fa-fw,fab fa-hips fa-fw,fab fa-hire-a-helper fa-fw,fas fa-history fa-fw,fab fa-hive fa-fw,fas fa-hockey-puck fa-fw,fas fa-holly-berry fa-fw,fas fa-home fa-fw,fab fa-hooli fa-fw,fab fa-hornbill fa-fw,fas fa-horse fa-fw,fas fa-horse-head fa-fw,fas fa-hospital fa-fw,far fa-hospital fa-fw,fas fa-hospital-alt fa-fw,fas fa-hospital-symbol fa-fw,fas fa-hospital-user fa-fw,fas fa-hot-tub fa-fw,fas fa-hotdog fa-fw,fas fa-hotel fa-fw,fab fa-hotjar fa-fw,fas fa-hourglass fa-fw,far fa-hourglass fa-fw,fas fa-hourglass-end fa-fw,fas fa-hourglass-half fa-fw,fas fa-hourglass-start fa-fw,fas fa-house-damage fa-fw,fas fa-house-user fa-fw,fab fa-houzz fa-fw,fas fa-hryvnia fa-fw,fab fa-html5 fa-fw,fab fa-hubspot fa-fw,fas fa-i-cursor fa-fw,fas fa-ice-cream fa-fw,fas fa-icicles fa-fw,fas fa-icons fa-fw,fas fa-id-badge fa-fw,far fa-id-badge fa-fw,fas fa-id-card fa-fw,far fa-id-card fa-fw,fas fa-id-card-alt fa-fw,fab fa-ideal fa-fw,fas fa-igloo fa-fw,fas fa-image fa-fw,far fa-image fa-fw,fas fa-images fa-fw,far fa-images fa-fw,fab fa-imdb fa-fw,fas fa-inbox fa-fw,fas fa-indent fa-fw,fas fa-industry fa-fw,fas fa-infinity fa-fw,fas fa-info fa-fw,fas fa-info-circle fa-fw,fab fa-innosoft fa-fw,fab fa-instagram fa-fw,fab fa-instagram-square fa-fw,fab fa-instalod fa-fw,fab fa-intercom fa-fw,fab fa-internet-explorer fa-fw,fab fa-invision fa-fw,fab fa-ioxhost fa-fw,fas fa-italic fa-fw,fab fa-itch-io fa-fw,fab fa-itunes fa-fw,fab fa-itunes-note fa-fw,fab fa-java fa-fw,fas fa-jedi fa-fw,fab fa-jedi-order fa-fw,fab fa-jenkins fa-fw,fab fa-jira fa-fw,fab fa-joget fa-fw,fas fa-joint fa-fw,fab fa-joomla fa-fw,fas fa-journal-whills fa-fw,fab fa-js fa-fw,fab fa-js-square fa-fw,fab fa-jsfiddle fa-fw,fas fa-kaaba fa-fw,fab fa-kaggle fa-fw,fas fa-key fa-fw,fab fa-keybase fa-fw,fas fa-keyboard fa-fw,far fa-keyboard fa-fw,fab fa-keycdn fa-fw,fas fa-khanda fa-fw,fab fa-kickstarter fa-fw,fab fa-kickstarter-k fa-fw,fas fa-kiss fa-fw,far fa-kiss fa-fw,fas fa-kiss-beam fa-fw,far fa-kiss-beam fa-fw,fas fa-kiss-wink-heart fa-fw,far fa-kiss-wink-heart fa-fw,fas fa-kiwi-bird fa-fw,fab fa-korvue fa-fw,fas fa-landmark fa-fw,fas fa-language fa-fw,fas fa-laptop fa-fw,fas fa-laptop-code fa-fw,fas fa-laptop-house fa-fw,fas fa-laptop-medical fa-fw,fab fa-laravel fa-fw,fab fa-lastfm fa-fw,fab fa-lastfm-square fa-fw,fas fa-laugh fa-fw,far fa-laugh fa-fw,fas fa-laugh-beam fa-fw,far fa-laugh-beam fa-fw,fas fa-laugh-squint fa-fw,far fa-laugh-squint fa-fw,fas fa-laugh-wink fa-fw,far fa-laugh-wink fa-fw,fas fa-layer-group fa-fw,fas fa-leaf fa-fw,fab fa-leanpub fa-fw,fas fa-lemon fa-fw,far fa-lemon fa-fw,fab fa-less fa-fw,fas fa-less-than fa-fw,fas fa-less-than-equal fa-fw,fas fa-level-down-alt fa-fw,fas fa-level-up-alt fa-fw,fas fa-life-ring fa-fw,far fa-life-ring fa-fw,fas fa-lightbulb fa-fw,far fa-lightbulb fa-fw,fab fa-line fa-fw,fas fa-link fa-fw,fab fa-linkedin fa-fw,fab fa-linkedin-in fa-fw,fab fa-linode fa-fw,fab fa-linux fa-fw,fas fa-lira-sign fa-fw,fas fa-list fa-fw,fas fa-list-alt fa-fw,far fa-list-alt fa-fw,fas fa-list-ol fa-fw,fas fa-list-ul fa-fw,fas fa-location-arrow fa-fw,fas fa-lock fa-fw,fas fa-lock-open fa-fw,fas fa-long-arrow-alt-down fa-fw,fas fa-long-arrow-alt-left fa-fw,fas fa-long-arrow-alt-right fa-fw,fas fa-long-arrow-alt-up fa-fw,fas fa-low-vision fa-fw,fas fa-luggage-cart fa-fw,fas fa-lungs fa-fw,fas fa-lungs-virus fa-fw,fab fa-lyft fa-fw,fab fa-magento fa-fw,fas fa-magic fa-fw,fas fa-magnet fa-fw,fas fa-mail-bulk fa-fw,fab fa-mailchimp fa-fw,fas fa-male fa-fw,fab fa-mandalorian fa-fw,fas fa-map fa-fw,far fa-map fa-fw,fas fa-map-marked fa-fw,fas fa-map-marked-alt fa-fw,fas fa-map-marker fa-fw,fas fa-map-marker-alt fa-fw,fas fa-map-pin fa-fw,fas fa-map-signs fa-fw,fab fa-markdown fa-fw,fas fa-marker fa-fw,fas fa-mars fa-fw,fas fa-mars-double fa-fw,fas fa-mars-stroke fa-fw,fas fa-mars-stroke-h fa-fw,fas fa-mars-stroke-v fa-fw,fas fa-mask fa-fw,
				fab fa-mastodon fa-fw,fab fa-maxcdn fa-fw,fab fa-mdb fa-fw,fas fa-medal fa-fw,fab fa-medapps fa-fw,fab fa-medium fa-fw,fab fa-medium-m fa-fw,fas fa-medkit fa-fw,fab fa-medrt fa-fw,fab fa-meetup fa-fw,fab fa-megaport fa-fw,fas fa-meh fa-fw,far fa-meh fa-fw,fas fa-meh-blank fa-fw,far fa-meh-blank fa-fw,fas fa-meh-rolling-eyes fa-fw,far fa-meh-rolling-eyes fa-fw,fas fa-memory fa-fw,fab fa-mendeley fa-fw,fas fa-menorah fa-fw,fas fa-mercury fa-fw,fas fa-meteor fa-fw,fab fa-microblog fa-fw,fas fa-microchip fa-fw,fas fa-microphone fa-fw,fas fa-microphone-alt fa-fw,fas fa-microphone-alt-slash fa-fw,fas fa-microphone-slash fa-fw,fas fa-microscope fa-fw,fab fa-microsoft fa-fw,fas fa-minus fa-fw,fas fa-minus-circle fa-fw,fas fa-minus-square fa-fw,far fa-minus-square fa-fw,fas fa-mitten fa-fw,fab fa-mix fa-fw,fab fa-mixcloud fa-fw,fab fa-mixer fa-fw,fab fa-mizuni fa-fw,fas fa-mobile fa-fw,fas fa-mobile-alt fa-fw,fab fa-modx fa-fw,fab fa-monero fa-fw,fas fa-money-bill fa-fw,fas fa-money-bill-alt fa-fw,far fa-money-bill-alt fa-fw,fas fa-money-bill-wave fa-fw,fas fa-money-bill-wave-alt fa-fw,fas fa-money-check fa-fw,fas fa-money-check-alt fa-fw,fas fa-monument fa-fw,fas fa-moon fa-fw,far fa-moon fa-fw,fas fa-mortar-pestle fa-fw,fas fa-mosque fa-fw,fas fa-motorcycle fa-fw,fas fa-mountain fa-fw,fas fa-mouse fa-fw,fas fa-mouse-pointer fa-fw,fas fa-mug-hot fa-fw,fas fa-music fa-fw,fab fa-napster fa-fw,fab fa-neos fa-fw,fas fa-network-wired fa-fw,fas fa-neuter fa-fw,fas fa-newspaper fa-fw,far fa-newspaper fa-fw,fab fa-nimblr fa-fw,fab fa-node fa-fw,fab fa-node-js fa-fw,fas fa-not-equal fa-fw,fas fa-notes-medical fa-fw,fab fa-npm fa-fw,fab fa-ns8 fa-fw,fab fa-nutritionix fa-fw,fas fa-object-group fa-fw,far fa-object-group fa-fw,fas fa-object-ungroup fa-fw,far fa-object-ungroup fa-fw,fab fa-octopus-deploy fa-fw,fab fa-odnoklassniki fa-fw,fab fa-odnoklassniki-square fa-fw,fas fa-oil-can fa-fw,fab fa-old-republic fa-fw,fas fa-om fa-fw,fab fa-opencart fa-fw,fab fa-openid fa-fw,fab fa-opera fa-fw,fab fa-optin-monster fa-fw,fab fa-orcid fa-fw,fab fa-osi fa-fw,fas fa-otter fa-fw,fas fa-outdent fa-fw,fab fa-page4 fa-fw,fab fa-pagelines fa-fw,fas fa-pager fa-fw,fas fa-paint-brush fa-fw,fas fa-paint-roller fa-fw,fas fa-palette fa-fw,fab fa-palfed fa-fw,fas fa-pallet fa-fw,fas fa-paper-plane fa-fw,far fa-paper-plane fa-fw,fas fa-paperclip fa-fw,fas fa-parachute-box fa-fw,fas fa-paragraph fa-fw,fas fa-parking fa-fw,fas fa-passport fa-fw,fas fa-pastafarianism fa-fw,fas fa-paste fa-fw,fab fa-patreon fa-fw,fas fa-pause fa-fw,fas fa-pause-circle fa-fw,far fa-pause-circle fa-fw,fas fa-paw fa-fw,fab fa-paypal fa-fw,fas fa-peace fa-fw,fas fa-pen fa-fw,fas fa-pen-alt fa-fw,fas fa-pen-fancy fa-fw,fas fa-pen-nib fa-fw,fas fa-pen-square fa-fw,fas fa-pencil-alt fa-fw,fas fa-pencil-ruler fa-fw,fab fa-penny-arcade fa-fw,fas fa-people-arrows fa-fw,fas fa-people-carry fa-fw,fas fa-pepper-hot fa-fw,fab fa-perbyte fa-fw,fas fa-percent fa-fw,fas fa-percentage fa-fw,fab fa-periscope fa-fw,fas fa-person-booth fa-fw,fab fa-phabricator fa-fw,fab fa-phoenix-framework fa-fw,fab fa-phoenix-squadron fa-fw,fas fa-phone fa-fw,fas fa-phone-alt fa-fw,fas fa-phone-slash fa-fw,fas fa-phone-square fa-fw,fas fa-phone-square-alt fa-fw,fas fa-phone-volume fa-fw,fas fa-photo-video fa-fw,fab fa-php fa-fw,fab fa-pied-piper fa-fw,fab fa-pied-piper-alt fa-fw,fab fa-pied-piper-hat fa-fw,fab fa-pied-piper-pp fa-fw,fab fa-pied-piper-square fa-fw,fas fa-piggy-bank fa-fw,fas fa-pills fa-fw,fab fa-pinterest fa-fw,fab fa-pinterest-p fa-fw,fab fa-pinterest-square fa-fw,fas fa-pizza-slice fa-fw,fas fa-place-of-worship fa-fw,fas fa-plane fa-fw,fas fa-plane-arrival fa-fw,fas fa-plane-departure fa-fw,fas fa-plane-slash fa-fw,fas fa-play fa-fw,fas fa-play-circle fa-fw,far fa-play-circle fa-fw,fab fa-playstation fa-fw,fas fa-plug fa-fw,fas fa-plus fa-fw,fas fa-plus-circle fa-fw,fas fa-plus-square fa-fw,far fa-plus-square fa-fw,fas fa-podcast fa-fw,fas fa-poll fa-fw,fas fa-poll-h fa-fw,fas fa-poo fa-fw,fas fa-poo-storm fa-fw,fas fa-poop fa-fw,fas fa-portrait fa-fw,fas fa-pound-sign fa-fw,fas fa-power-off fa-fw,fas fa-pray fa-fw,fas fa-praying-hands fa-fw,fas fa-prescription fa-fw,fas fa-prescription-bottle fa-fw,fas fa-prescription-bottle-alt fa-fw,fas fa-print fa-fw,fas fa-procedures fa-fw,fab fa-product-hunt fa-fw,fas fa-project-diagram fa-fw,fas fa-pump-medical fa-fw,fas fa-pump-soap fa-fw,fab fa-pushed fa-fw,fas fa-puzzle-piece fa-fw,fab fa-python fa-fw,fab fa-qq fa-fw,fas fa-qrcode fa-fw,fas fa-question fa-fw,fas fa-question-circle fa-fw,far fa-question-circle fa-fw,fas fa-quidditch fa-fw,fab fa-quinscape fa-fw,fab fa-quora fa-fw,fas fa-quote-left fa-fw,fas fa-quote-right fa-fw,fas fa-quran fa-fw,fab fa-r-project fa-fw,fas fa-radiation fa-fw,fas fa-radiation-alt fa-fw,fas fa-rainbow fa-fw,fas fa-random fa-fw,fab fa-raspberry-pi fa-fw,fab fa-ravelry fa-fw,fab fa-react fa-fw,fab fa-reacteurope fa-fw,fab fa-readme fa-fw,fab fa-rebel fa-fw,fas fa-receipt fa-fw,fas fa-record-vinyl fa-fw,fas fa-recycle fa-fw,fab fa-red-river fa-fw,fab fa-reddit fa-fw,fab fa-reddit-alien fa-fw,fab fa-reddit-square fa-fw,fab fa-redhat fa-fw,fas fa-redo fa-fw,fas fa-redo-alt fa-fw,fas fa-registered fa-fw,far fa-registered fa-fw,fas fa-remove-format fa-fw,fab fa-renren fa-fw,fas fa-reply fa-fw,fas fa-reply-all fa-fw,fab fa-replyd fa-fw,fas fa-republican fa-fw,fab fa-researchgate fa-fw,fab fa-resolving fa-fw,fas fa-restroom fa-fw,fas fa-retweet fa-fw,fab fa-rev fa-fw,fas fa-ribbon fa-fw,fas fa-ring fa-fw,fas fa-road fa-fw,fas fa-robot fa-fw,fas fa-rocket fa-fw,fab fa-rocketchat fa-fw,fab fa-rockrms fa-fw,fas fa-route fa-fw,fas fa-rss fa-fw,fas fa-rss-square fa-fw,fas fa-ruble-sign fa-fw,fas fa-ruler fa-fw,fas fa-ruler-combined fa-fw,fas fa-ruler-horizontal fa-fw,fas fa-ruler-vertical fa-fw,fas fa-running fa-fw,fas fa-rupee-sign fa-fw,fab fa-rust fa-fw,fas fa-sad-cry fa-fw,far fa-sad-cry fa-fw,fas fa-sad-tear fa-fw,far fa-sad-tear fa-fw,fab fa-safari fa-fw,fab fa-salesforce fa-fw,fab fa-sass fa-fw,fas fa-satellite fa-fw,fas fa-satellite-dish fa-fw,fas fa-save fa-fw,far fa-save fa-fw,fab fa-schlix fa-fw,fas fa-school fa-fw,fas fa-screwdriver fa-fw,fab fa-scribd fa-fw,fas fa-scroll fa-fw,fas fa-sd-card fa-fw,fas fa-search fa-fw,fas fa-search-dollar fa-fw,
				fas fa-search-location fa-fw,fas fa-search-minus fa-fw,fas fa-search-plus fa-fw,fab fa-searchengin fa-fw,fas fa-seedling fa-fw,fab fa-sellcast fa-fw,fab fa-sellsy fa-fw,fas fa-server fa-fw,fab fa-servicestack fa-fw,fas fa-shapes fa-fw,fas fa-share fa-fw,fas fa-share-alt fa-fw,fas fa-share-alt-square fa-fw,fas fa-share-square fa-fw,far fa-share-square fa-fw,fas fa-shekel-sign fa-fw,fas fa-shield-alt fa-fw,fas fa-shield-virus fa-fw,fas fa-ship fa-fw,fas fa-shipping-fast fa-fw,fab fa-shirtsinbulk fa-fw,fas fa-shoe-prints fa-fw,fab fa-shopify fa-fw,fas fa-shopping-bag fa-fw,fas fa-shopping-basket fa-fw,fas fa-shopping-cart fa-fw,fab fa-shopware fa-fw,fas fa-shower fa-fw,fas fa-shuttle-van fa-fw,fas fa-sign fa-fw,fas fa-sign-in-alt fa-fw,fas fa-sign-language fa-fw,fas fa-sign-out-alt fa-fw,fas fa-signal fa-fw,fas fa-signature fa-fw,fas fa-sim-card fa-fw,fab fa-simplybuilt fa-fw,fas fa-sink fa-fw,fab fa-sistrix fa-fw,fas fa-sitemap fa-fw,fab fa-sith fa-fw,fas fa-skating fa-fw,fab fa-sketch fa-fw,fas fa-skiing fa-fw,fas fa-skiing-nordic fa-fw,fas fa-skull fa-fw,fas fa-skull-crossbones fa-fw,fab fa-skyatlas fa-fw,fab fa-skype fa-fw,fab fa-slack fa-fw,fab fa-slack-hash fa-fw,fas fa-slash fa-fw,fas fa-sleigh fa-fw,fas fa-sliders-h fa-fw,fab fa-slideshare fa-fw,fas fa-smile fa-fw,far fa-smile fa-fw,fas fa-smile-beam fa-fw,far fa-smile-beam fa-fw,fas fa-smile-wink fa-fw,far fa-smile-wink fa-fw,fas fa-smog fa-fw,fas fa-smoking fa-fw,fas fa-smoking-ban fa-fw,fas fa-sms fa-fw,fab fa-snapchat fa-fw,fab fa-snapchat-ghost fa-fw,fab fa-snapchat-square fa-fw,fas fa-snowboarding fa-fw,fas fa-snowflake fa-fw,far fa-snowflake fa-fw,fas fa-snowman fa-fw,fas fa-snowplow fa-fw,fas fa-soap fa-fw,fas fa-socks fa-fw,fas fa-solar-panel fa-fw,fas fa-sort fa-fw,fas fa-sort-alpha-down fa-fw,fas fa-sort-alpha-down-alt fa-fw,fas fa-sort-alpha-up fa-fw,fas fa-sort-alpha-up-alt fa-fw,fas fa-sort-amount-down fa-fw,fas fa-sort-amount-down-alt fa-fw,fas fa-sort-amount-up fa-fw,fas fa-sort-amount-up-alt fa-fw,fas fa-sort-down fa-fw,fas fa-sort-numeric-down fa-fw,fas fa-sort-numeric-down-alt fa-fw,fas fa-sort-numeric-up fa-fw,fas fa-sort-numeric-up-alt fa-fw,fas fa-sort-up fa-fw,fab fa-soundcloud fa-fw,fab fa-sourcetree fa-fw,fas fa-spa fa-fw,fas fa-space-shuttle fa-fw,fab fa-speakap fa-fw,fab fa-speaker-deck fa-fw,fas fa-spell-check fa-fw,fas fa-spider fa-fw,fas fa-spinner fa-fw,fas fa-splotch fa-fw,fab fa-spotify fa-fw,fas fa-spray-can fa-fw,fas fa-square fa-fw,far fa-square fa-fw,fas fa-square-full fa-fw,fas fa-square-root-alt fa-fw,fab fa-squarespace fa-fw,fab fa-stack-exchange fa-fw,fab fa-stack-overflow fa-fw,fab fa-stackpath fa-fw,fas fa-stamp fa-fw,fas fa-star fa-fw,far fa-star fa-fw,fas fa-star-and-crescent fa-fw,fas fa-star-half fa-fw,far fa-star-half fa-fw,fas fa-star-half-alt fa-fw,fas fa-star-of-david fa-fw,fas fa-star-of-life fa-fw,fab fa-staylinked fa-fw,fab fa-steam fa-fw,fab fa-steam-square fa-fw,fab fa-steam-symbol fa-fw,fas fa-step-backward fa-fw,fas fa-step-forward fa-fw,fas fa-stethoscope fa-fw,fab fa-sticker-mule fa-fw,fas fa-sticky-note fa-fw,far fa-sticky-note fa-fw,fas fa-stop fa-fw,fas fa-stop-circle fa-fw,far fa-stop-circle fa-fw,fas fa-stopwatch fa-fw,fas fa-stopwatch-20 fa-fw,fas fa-store fa-fw,fas fa-store-alt fa-fw,fas fa-store-alt-slash fa-fw,fas fa-store-slash fa-fw,fab fa-strava fa-fw,fas fa-stream fa-fw,fas fa-street-view fa-fw,fas fa-strikethrough fa-fw,fab fa-stripe fa-fw,fab fa-stripe-s fa-fw,fas fa-stroopwafel fa-fw,fab fa-studiovinari fa-fw,fab fa-stumbleupon fa-fw,fab fa-stumbleupon-circle fa-fw,fas fa-subscript fa-fw,fas fa-subway fa-fw,fas fa-suitcase fa-fw,fas fa-suitcase-rolling fa-fw,fas fa-sun fa-fw,far fa-sun fa-fw,fab fa-superpowers fa-fw,fas fa-superscript fa-fw,fab fa-supple fa-fw,fas fa-surprise fa-fw,far fa-surprise fa-fw,fab fa-suse fa-fw,fas fa-swatchbook fa-fw,fab fa-swift fa-fw,fas fa-swimmer fa-fw,fas fa-swimming-pool fa-fw,fab fa-symfony fa-fw,fas fa-synagogue fa-fw,fas fa-sync fa-fw,fas fa-sync-alt fa-fw,fas fa-syringe fa-fw,fas fa-table fa-fw,fas fa-table-tennis fa-fw,fas fa-tablet fa-fw,fas fa-tablet-alt fa-fw,fas fa-tablets fa-fw,fas fa-tachometer-alt fa-fw,fas fa-tag fa-fw,fas fa-tags fa-fw,fas fa-tape fa-fw,fas fa-tasks fa-fw,fas fa-taxi fa-fw,fab fa-teamspeak fa-fw,fas fa-teeth fa-fw,fas fa-teeth-open fa-fw,fab fa-telegram fa-fw,fab fa-telegram-plane fa-fw,fas fa-temperature-high fa-fw,fas fa-temperature-low fa-fw,fab fa-tencent-weibo fa-fw,fas fa-tenge fa-fw,fas fa-terminal fa-fw,fas fa-text-height fa-fw,fas fa-text-width fa-fw,fas fa-th fa-fw,fas fa-th-large fa-fw,fas fa-th-list fa-fw,fab fa-the-red-yeti fa-fw,fas fa-theater-masks fa-fw,fab fa-themeco fa-fw,fab fa-themeisle fa-fw,fas fa-thermometer fa-fw,fas fa-thermometer-empty fa-fw,fas fa-thermometer-full fa-fw,fas fa-thermometer-half fa-fw,fas fa-thermometer-quarter fa-fw,fas fa-thermometer-three-quarters fa-fw,fab fa-think-peaks fa-fw,fas fa-thumbs-down fa-fw,far fa-thumbs-down fa-fw,fas fa-thumbs-up fa-fw,far fa-thumbs-up fa-fw,fas fa-thumbtack fa-fw,fas fa-ticket-alt fa-fw,fab fa-tiktok fa-fw,fas fa-times fa-fw,fas fa-times-circle fa-fw,far fa-times-circle fa-fw,fas fa-tint fa-fw,fas fa-tint-slash fa-fw,fas fa-tired fa-fw,far fa-tired fa-fw,fas fa-toggle-off fa-fw,fas fa-toggle-on fa-fw,fas fa-toilet fa-fw,fas fa-toilet-paper fa-fw,fas fa-toilet-paper-slash fa-fw,fas fa-toolbox fa-fw,fas fa-tools fa-fw,fas fa-tooth fa-fw,fas fa-torah fa-fw,fas fa-torii-gate fa-fw,fas fa-tractor fa-fw,fab fa-trade-federation fa-fw,fas fa-trademark fa-fw,fas fa-traffic-light fa-fw,fas fa-trailer fa-fw,fas fa-train fa-fw,fas fa-tram fa-fw,fas fa-transgender fa-fw,fas fa-transgender-alt fa-fw,fas fa-trash fa-fw,fas fa-trash-alt fa-fw,far fa-trash-alt fa-fw,fas fa-trash-restore fa-fw,fas fa-trash-restore-alt fa-fw,fas fa-tree fa-fw,fab fa-trello fa-fw,fas fa-trophy fa-fw,fas fa-truck fa-fw,fas fa-truck-loading fa-fw,fas fa-truck-monster fa-fw,fas fa-truck-moving fa-fw,fas fa-truck-pickup fa-fw,fas fa-tshirt fa-fw,fas fa-tty fa-fw,fab fa-tumblr fa-fw,fab fa-tumblr-square fa-fw,fas fa-tv fa-fw,fab fa-twitch fa-fw,fab fa-twitter fa-fw,fab fa-twitter-square fa-fw,fab fa-typo3 fa-fw,fab fa-uber fa-fw,fab fa-ubuntu fa-fw,fab fa-uikit fa-fw,fab fa-umbraco fa-fw,fas fa-umbrella fa-fw,
				fas fa-umbrella-beach fa-fw,fab fa-uncharted fa-fw,fas fa-underline fa-fw,fas fa-undo fa-fw,fas fa-undo-alt fa-fw,fab fa-uniregistry fa-fw,fab fa-unity fa-fw,fas fa-universal-access fa-fw,fas fa-university fa-fw,fas fa-unlink fa-fw,fas fa-unlock fa-fw,fas fa-unlock-alt fa-fw,fab fa-unsplash fa-fw,fab fa-untappd fa-fw,fas fa-upload fa-fw,fab fa-ups fa-fw,fab fa-usb fa-fw,fas fa-user fa-fw,far fa-user fa-fw,fas fa-user-alt fa-fw,fas fa-user-alt-slash fa-fw,fas fa-user-astronaut fa-fw,fas fa-user-check fa-fw,fas fa-user-circle fa-fw,far fa-user-circle fa-fw,fas fa-user-clock fa-fw,fas fa-user-cog fa-fw,fas fa-user-edit fa-fw,fas fa-user-friends fa-fw,fas fa-user-graduate fa-fw,fas fa-user-injured fa-fw,fas fa-user-lock fa-fw,fas fa-user-md fa-fw,fas fa-user-minus fa-fw,fas fa-user-ninja fa-fw,fas fa-user-nurse fa-fw,fas fa-user-plus fa-fw,fas fa-user-secret fa-fw,fas fa-user-shield fa-fw,fas fa-user-slash fa-fw,fas fa-user-tag fa-fw,fas fa-user-tie fa-fw,fas fa-user-times fa-fw,fas fa-users fa-fw,fas fa-users-cog fa-fw,fas fa-users-slash fa-fw,fab fa-usps fa-fw,fab fa-ussunnah fa-fw,fas fa-utensil-spoon fa-fw,fas fa-utensils fa-fw,fab fa-vaadin fa-fw,fas fa-vector-square fa-fw,fas fa-venus fa-fw,fas fa-venus-double fa-fw,fas fa-venus-mars fa-fw,fas fa-vest fa-fw,fas fa-vest-patches fa-fw,fab fa-viacoin fa-fw,fab fa-viadeo fa-fw,fab fa-viadeo-square fa-fw,fas fa-vial fa-fw,fas fa-vials fa-fw,fab fa-viber fa-fw,fas fa-video fa-fw,fas fa-video-slash fa-fw,fas fa-vihara fa-fw,fab fa-vimeo fa-fw,fab fa-vimeo-square fa-fw,fab fa-vimeo-v fa-fw,fab fa-vine fa-fw,fas fa-virus fa-fw,fas fa-virus-slash fa-fw,fas fa-viruses fa-fw,fab fa-vk fa-fw,fab fa-vnv fa-fw,fas fa-voicemail fa-fw,fas fa-volleyball-ball fa-fw,fas fa-volume-down fa-fw,fas fa-volume-mute fa-fw,fas fa-volume-off fa-fw,fas fa-volume-up fa-fw,fas fa-vote-yea fa-fw,fas fa-vr-cardboard fa-fw,fab fa-vuejs fa-fw,fas fa-walking fa-fw,fas fa-wallet fa-fw,fas fa-warehouse fa-fw,fab fa-watchman-monitoring fa-fw,fas fa-water fa-fw,fas fa-wave-square fa-fw,fab fa-waze fa-fw,fab fa-weebly fa-fw,fab fa-weibo fa-fw,fas fa-weight fa-fw,fas fa-weight-hanging fa-fw,fab fa-weixin fa-fw,fab fa-whatsapp fa-fw,fab fa-whatsapp-square fa-fw,fas fa-wheelchair fa-fw,fab fa-whmcs fa-fw,fas fa-wifi fa-fw,fab fa-wikipedia-w fa-fw,fas fa-wind fa-fw,fas fa-window-close fa-fw,far fa-window-close fa-fw,fas fa-window-maximize fa-fw,far fa-window-maximize fa-fw,fas fa-window-minimize fa-fw,far fa-window-minimize fa-fw,fas fa-window-restore fa-fw,far fa-window-restore fa-fw,fab fa-windows fa-fw,fas fa-wine-bottle fa-fw,fas fa-wine-glass fa-fw,fas fa-wine-glass-alt fa-fw,fab fa-wix fa-fw,fab fa-wizards-of-the-coast fa-fw,fab fa-wodu fa-fw,fab fa-wolf-pack-battalion fa-fw,fas fa-won-sign fa-fw,fab fa-wordpress fa-fw,fab fa-wordpress-simple fa-fw,fab fa-wpbeginner fa-fw,fab fa-wpexplorer fa-fw,fab fa-wpforms fa-fw,fab fa-wpressr fa-fw,fas fa-wrench fa-fw,fas fa-x-ray fa-fw,fab fa-xbox fa-fw,fab fa-xing fa-fw,fab fa-xing-square fa-fw,fab fa-y-combinator fa-fw,fab fa-yahoo fa-fw,fab fa-yammer fa-fw,fab fa-yandex fa-fw,fab fa-yandex-international fa-fw,fab fa-yarn fa-fw,fab fa-yelp fa-fw,fas fa-yen-sign fa-fw,fas fa-yin-yang fa-fw,fab fa-yoast fa-fw,fab fa-youtube fa-fw,fab fa-youtube-square fa-fw,fab fa-zhihu fa-fw';
		return explode(",", $icons);
	}
}

class security
{

	static function getIP()
	{
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		} else {
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		return $ip;
	}

	static function getOS()
	{
		$os_platform = "Bilinmeyen İşletim Sistemi";
		$os_array = array('/windows nt 10/i' => 'Windows 10', '/windows nt 6.3/i' => 'Windows 8.1', '/windows nt 6.2/i' => 'Windows 8', '/windows nt 6.1/i' => 'Windows 7', '/windows nt 6.0/i' => 'Windows Vista', '/windows nt 5.2/i' => 'Windows Server 2003/XP x64', '/windows nt 5.1/i' => 'Windows XP', '/windows xp/i' => 'Windows XP', '/windows nt 5.0/i' => 'Windows 2000', '/windows me/i' => 'Windows ME', '/win98/i' => 'Windows 98', '/win95/i' => 'Windows 95', '/win16/i' => 'Windows 3.11', '/macintosh|mac os x/i' => 'Mac OS X', '/mac_powerpc/i' => 'Mac OS 9', '/linux/i' => 'Linux', '/ubuntu/i' => 'Ubuntu', '/iphone/i' => 'iPhone', '/ipod/i' => 'iPod', '/ipad/i' => 'iPad', '/android 1/i' => 'Android 1', '/android 10/i' => 'Android 10', '/android 9/i' => 'Android 9', '/android 8/i' => 'Android 8', '/android 7/i' => 'Android 7', '/android 6/i' => 'Android 6', '/android 5/i' => 'Android 5', '/android 4/i' => 'Android 4', '/android 3/i' => 'Android 3', '/android 2/i' => 'Android 2', '/blackberry/i' => 'BlackBerry', '/webos/i' => 'Mobile');
		foreach ($os_array as $regex => $value)
			if (preg_match($regex, $_SERVER['HTTP_USER_AGENT']))
				$os_platform = $value;
		return $os_platform;
	}

	static function getBrowser()
	{
		$browser = "Bilinmeyen Tarayıcı";
		$browser_array = array('/msie/i' => 'Internet Explorer', '/firefox/i' => 'Firefox', '/safari/i' => 'Safari', '/chrome/i' => 'Chrome', '/edge/i' => 'Edge', '/opera/i' => 'Opera', '/opr/i' => 'Opera', '/netscape/i' => 'Netscape', '/maxthon/i' => 'Maxthon', '/konqueror/i' => 'Konqueror', '/huaweibrowser/i' => 'Huawei Browser');
		foreach ($browser_array as $regex => $value)
			if (preg_match($regex, $_SERVER['HTTP_USER_AGENT']))
				$browser = $value;
		return $browser;
	}

	static function getUserAgent()
	{
		return $_SERVER['HTTP_USER_AGENT'];
	}

	static function getLang()
	{
		$dil = substr(mb_strtoupper($_SERVER['HTTP_ACCEPT_LANGUAGE'], "UTF-8"), 0, 2);
		return $dil;
	}
}

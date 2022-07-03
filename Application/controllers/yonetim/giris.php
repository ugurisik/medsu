<?php
class giris extends controller
{
	
	public function index()
	{
		if ($this->sessionManager->isLogged()) {
			helper::redirect(ADMIN_URL . "/");
			die();
		}
		$this->render('yonetim/sign-in');
		echo "login";
	}
	public function asd(){
		echo "asd";
	}

	public function login()
	{
		if ($this->sessionManager->isLogged()) {
			$data = array(
				"message" => "Giriş Yapılmış, yönlendiriliyorsunuz...",
				"type" => "warning"
			);
			$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
			print_r($json);
            helper::redirect(ADMIN_URL . "");
            die();
		}else{
			$tarih = date("d.m.Y");
		$email = $_POST['email'];
		$passwd = $_POST['password'];

		if (empty($email) || empty($passwd)) {
			$data = array(
				"message" => "Alanları boş bırakamazsınız",
				"type" => "error"
			);
			$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
			print_r($json);
		} else {
			$account = $this->model("loginModel")->emailControl($email);
			if (empty($account)) {
				$data = array(
					"message" => "E-posta adresiniz sistemde kayıtlı değildir!",
					"type" => "error"
				);
				$this->settingsModel("logManager")->createLog("Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: ".$email );
				$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
				print_r($json);
			} else {
				$authority = $this->model("loginModel")->authorityControl($account['id']);
				if (password_verify($passwd, $account['password'])) {
					if ($authority['type_meta'] == 1 || $authority['type_meta'] == 2 || $authority['type_meta'] == 6 || $authority['type_meta'] == 7) {
						$token = md5(uniqid(mt_rand(), true));
						$data = array(
							'login' => 1,
							'loginID' => $token
						);
						$updateLoginID = $this->model("loginModel")->updateUserData($data, $account['id']);
						$data = array("userID" => $account['id'], "date" => $tarih, "browser" => security::getBrowser(), "os" => security::getOS(), "ip" => security::getIP(), "userAgent" => security::getUserAgent());
						$insertID = $this->model("loginModel")->insertData('login_info', $data);
						sessionManager::createSession(['loggedin'=>true,'id'=>$account['id'],'email'=>$account['email'],'loginid'=>$token]);
						$data = array(
							"message" => "Giriş yapıldı. Yönlendiriliyorsunuz lütfen bekleyin!",
							"type" => "success"
						);
						$this->settingsModel("logManager")->createLog("Giriş yapıldı! E-posta: ".$email );
						$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
						print_r($json);
					} else {
						$data = array(
							"message" => "Yönetici paneline giriş için yetkin bulunmuyor!",
							"type" => "error"
						);
						$this->settingsModel("logManager")->createLog("Yönetici paneline giriş için yetersiz yetki. E-posta: ".$email );
						$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
						print_r($json);
					}
				} else {
					if ($account['login'] < 3) {
						$up = $account['login'] + 1;
						$data = array('login' => $up);
						$updateLogin = $this->model("loginModel")->updateUserData($data, $account['id']);
						$data = array("userID" => $account['id'], "date" => $tarih, "userAgent" => security::getUserAgent(), "browser" => security::getBrowser(), "os" => security::getOS(), "ip" => security::getIP(), "username" => $email, "password" => $passwd);
						$insertID = $this->model("loginModel")->insertData('login_error', $data);
						$data = array(
							"message" => "Şifreniz hatalı! Lütfen tekrar deneyiniz.",
							"type" => "error"
						);
						$this->settingsModel("logManager")->createLog("Hatalı şifreyle giriş tespiti. E-posta: ".$email );
						$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
						print_r($json);
					} else if ($account['login'] == 3) {
						$data = array("startDate" => $tarih, "endDate" => date("Y.m.d H:i:s", strtotime('+15 minutes')), "ip" => security::getIP());
						$insertID = $this->model("loginModel")->insertData('login_ban', $data);
						$data = array(
							"message" => "Çok fazla hatalı girişi denemesi sebebi ile IP Adresiniz 15 dakika engellenmiştir!",
							"type" => "error"
						);
						$this->settingsModel("logManager")->createLog("Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: ".$email );
						$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
						print_r($json);
					}else {
						$data = array("userID" => $account['id'], "date" => $tarih, "userAgent" => security::getUserAgent(), "browser" => security::getBrowser(), "os" => security::getOS(), "ip" => security::getIP(), "username" => $email, "password" => $passwd);
						$insertID = $this->model("loginModel")->insertData('login_error', $data);
						$data = array(
							"message" => "Şifreniz hatalı! Lütfen tekrar deneyiniz.",
							"type" => "error"
						);
						$this->settingsModel("logManager")->createLog("Hatalı şifreyle giriş tespiti. E-posta: ".$email );
						$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
						print_r($json);
					}
				}
			}
		}
		}
		
	}
	public function logout(){
		sessionManager::allSessionDelete();
		$data = array(
			"message" => "Çıkış yapıldı! Yönlendiriliyorsunuz...",
			"type" => "error"
		);
		$json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG);
		print_r($json);
        helper::redirect(ADMIN_URL);
	}
	
	public function forgotPass()
	{
		if ($this->sessionManager->isLogged()) {
			helper::redirect(ADMIN_URL . "/");
			die();
		}
		if ($_POST) {
			$email = helper::cleaner($_POST['email']);
			if ($email != '') {
				$control = $this->model('uyeModel')->forgot($email);
				if ($control != 0) {
					$konu = "Şifre Sıfırlama";
					$mesaj = SITE_URL . "/yonetim/giris/sifremiYenile/" . $control;
					//helper::phpMailer($email,$konu,$mesaj);

					helper::uyari("statu", "Şifreniz sıfırlama mailiniz gönderilmiştir.");
					helper::redirect(SITE_URL . "/yonetim/giris");
				} else {
					helper::uyari("statu", "Mail Adresi Sisteme Kayıtlı Değildir.");
					helper::redirect(SITE_URL . "/yonetim/giris");
				}
			} else {
				helper::uyari("statu", "Lütfen tüm alanları doldurunuz");
				helper::redirect(SITE_URL . "/yonetim/giris");
			}
		}
	}

	public function sifremiYenile($key)
	{
		if ($this->sessionManager->isLogged()) {
			helper::redirect(ADMIN_URL . "/");
			die();
		}
		$this->render('yonetim/sifremi-yenile', ['key' => $key]);
	}

	public function sifreYenile($key)
	{
		if ($this->sessionManager->isLogged()) {
			helper::redirect(ADMIN_URL . "/");
			die();
		}
		if ($_POST) {
			$sifre = helper::cleaner(md5($_POST['sifre1']));
			$sifre2 = helper::cleaner(md5($_POST['sifre2']));
			if ($sifre != '' && $sifre2 != '') {
				$control = $this->model('uyeModel')->sifreupd($key, $sifre);
				if ($control != 0) {
					helper::uyari("statu", "Şifreniz Başarıyla Güncellenmiştir. Giriş Yapabilirsiniz.");
					helper::redirect(SITE_URL . "/yonetim/giris");
				} else {
					helper::uyari("statu", "Hatalı İşlem");
					helper::redirect(SITE_URL . "/yonetim/giris/sifremiYenile/" . $key);
				}
			} else {
				helper::uyari("statu", "Lütfen tüm alanları doldurunuz");
				helper::redirect(SITE_URL . "/yonetim/giris/sifremiYenile/" . $key);
			}
		}
	}
}

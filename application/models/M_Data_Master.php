<?php
class M_Data_Master extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function getDatakriteria($search)
	{
		$sql = "SELECT
		id,
		kriteria,bobot,atribut,FORMAT(bobot/(select ifnull(sum(bobot),0) from tbkriteria x  ),2) as normalisasi
		FROM
		tbkriteria a
		where (kriteria like '%$search%') ";
		return $this->db->query($sql);
	}
		public function getTabelalternatif($search)
	{
		$sql = "SELECT
	a.id,a.idkriteriaDet,a.tanggal,a.nis,a.uraian,a.inputon,a.inputby,nama,kriteria,detail,bobot
	FROM
	tbalternatif a
	JOIN tbsiswa b ON a.nis = b.nis
	join tbdetailkriteria c on a.idkriteriaDet=c.id 
	where (kriteria like '%$search%' or uraian like '%$search%' or nama like '%$search%'  or a.nis like '%$search%') ";
		return $this->db->query($sql);
	}
		public function getDatakriteriadetail($search,$kriteria)
	{
		$sql = "SELECT
		id,idkriteria,kriteria,detail,bobot,FORMAT(bobot/(select ifnull(sum(bobot),0) from tbdetailkriteria x where a.kriteria=x.kriteria ),2) as normalisasi
		FROM
		tbdetailkriteria a
		where kriteria='$kriteria'  and ( detail like '%$search%' ) ";
		return $this->db->query($sql);
	}
	public function getdatasiswa($search)
	{
		$sql = "SELECT id,nis,nama,jenkel,tanggal_lahir,alamat,foto,status,Keterangan,inputby,inputon,tlpn
		FROM
		tbsiswa a
		where (nis like '%$search%' or nama like '%$search%' or jenkel like '%$search%' or alamat like '%$search%') ";
		return $this->db->query($sql);
	}
		public function getdatakriteriap($search)
	{
		$sql = "SELECT
		id,idkriteria,kriteria,detail,bobot,FORMAT(bobot/(select ifnull(sum(bobot),0) from tbdetailkriteria x where a.kriteria=x.kriteria ),2) as normalisasi
		FROM
		tbdetailkriteria a
		where  ( detail like '%$search%'  or kriteria like '%$search%' ) order by id LIMIT 0, 20";
		return $this->db->query($sql);
	}
		public function getdatasiswapil($search)
	{
		$sql = "SELECT id,nis,nama,jenkel,tanggal_lahir,alamat,foto,status,Keterangan,inputby,inputon
		FROM
		tbsiswa a
		where (nis like '%$search%' or nama like '%$search%' or jenkel like '%$search%' or alamat like '%$search%') order by nis LIMIT 0, 20";
		return $this->db->query($sql);
	}
	public function editsiswa($id_siswa,$nis,$Nama,$judulfoto,$tgllahir,$alamat,$jenkel,$tlpn)
	{
			$user = $this->session->userdata("username");
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "UPDATE tbsiswa set tlpn='$tlpn',nis='$nis',Nama='$Nama',tanggal_lahir='$tgllahir',alamat='$alamat',inputby='$user',inputon='$tanggal',jenkel='$jenkel' ,foto='$judulfoto' where id='$id_siswa' ";
			return $this->db->query($sql);
	}
	public function tambahsiswa($id_siswa,$nis,$Nama,$judulfoto,$tgllahir,$alamat,$jenkel,$tlpn)
	{
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "INSERT tbsiswa(nis,nama,jenkel,tanggal_lahir,alamat,foto,Keterangan,inputby,inputon,tlpn)
			values('$nis','$Nama','$jenkel','$tgllahir','$alamat','$judulfoto','','$user','$tanggal','$tlpn') ";
			return $this->db->query($sql);
	}
	public function tambahalternatif($id_alternatif,$uraian,$tgl,$siswa,$kriteria)
	{
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "INSERT tbalternatif(idkriteriaDet,tanggal,nis,uraian,inputon,inputby)
								 values('$kriteria','$tgl','$siswa','$uraian','$tanggal','$user') ";
			return $this->db->query($sql);
	}
	public function editalternatif($id_alternatif,$uraian,$tgl,$siswa,$kriteria)
	{
			$user = $this->session->userdata("username");
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "UPDATE tbalternatif set uraian='$uraian',tgl='$tgl',nis='$siswa',kriteria='$kriteria',inputby='$user',inputon='$tanggal' where id='$id_alternatif' ";
			return $this->db->query($sql);
	}
	public function hapususer($username)
	{
		$sql = "DELETE FROM tbuser WHERE username='$username' ";
		return $this->db->query($sql);
	}
	public function hapuskriteria($id)
	{
		$sql = "DELETE FROM tbkriteria WHERE id='$id' ";
		return $this->db->query($sql);
	}
		public function hapusanggota($id_anggota)
	{
		$sql = "DELETE FROM tbsiswa WHERE id='$id_anggota' ";
		return $this->db->query($sql);
	}
	public function editkriteria($id_kriteria,$kriteria,$bobot,$atribut)
	{
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "UPDATE tbkriteria set kriteria='$kriteria',bobot=$bobot,atribut='$atribut' where id='$id_kriteria'  ";
			return $this->db->query($sql);
	}
		public function editdataakun($nickname2,$username2,$otoritas2,$customer2)
	{
			date_default_timezone_set('Asia/Jakarta');
			$tanggal = date('Y-m-d H:i:s');
			$user = $this->session->userdata("username");
			$sql = "UPDATE tbuser set nickname='$nickname2',otoritas='$otoritas2',id_customer='$customer2',inputby='$user',TglInput='$tanggal' where username='$username2'  ";
			return $this->db->query($sql);
	}

	public function tambahkriteria($kriteria,$bobot,$atribut)
	{
			$sql = "INSERT tbkriteria(kriteria,bobot,atribut)values('$kriteria','$bobot','$atribut') ";
			return $this->db->query($sql);
	}

	public function getDataUserLogin($search)
	{
		$sql = "SELECT
		username,
		nickname,
		STATUS,
		DATE_FORMAT(tglexpired, '%Y-%m-%d')as tglexpired,
		avatar AS foto,
		otoritas,
		a.id_customer,
		companyname
		FROM
		tbuser a
		LEFT JOIN tbcustomer b
		ON a.id_customer = b.id_customer 
		where (username like '%$search%' or nickname like '%$search%' or companyname like '%$search%') ";
		return $this->db->query($sql);
	}
	public function getcompanyname($cari)
	{
		$sql = "SELECT
		id_customer,
		companyname
		FROM
		tbcustomer
		WHERE (companyname LIKE '%$cari%')
		ORDER BY companyname ASC
		LIMIT 0, 20";
		return $this->db->query($sql);
	}

	public function tambahAkun($nickname,$username,$pass,$customer,$otoritas)
	{
		date_default_timezone_set('Asia/Jakarta');
		$tanggal = date('Y-m-d H:i:s');
		$user = $this->session->userdata("username");
		//$getData = $this->db->query("SELECT jabatan, jkelamin FROM dbhrm.dbo.tbPegawai WHERE nik = '$nik'");
		//$level = 4;
		$avatar = 'male1.png';
		/*foreach ($getData->result() as $key) {
			$level = $key->jabatan == 'Kepala Bagian'?3:4;
			$avatar = $key->jkelamin == 'L'?'male1.png':'female1.png';
		}*/
			$hash_pass = md5($pass);

		$sql = "INSERT INTO tbuser(username,password,nickname,STATUS,avatar,inputby,TglInput,id_customer,otoritas) 
		VALUES('$username','$hash_pass','$nickname','AKTIF','$avatar','$user','$tanggal','$customer','$otoritas')";
		return $this->db->query($sql);
	}
	public function ubahStatusAkun($username, $status)
	{
		$sql = "UPDATE tbuser SET STATUS = '$status' WHERE username = '$username'";
		$this->db->query($sql);
	}
	public function ubahLevelAkun($nik, $level)
	{
		$sql = "UPDATE tbuser SET LEVEL = '$level' WHERE NIK = '$nik'";
		$this->db->query($sql);
	}

}
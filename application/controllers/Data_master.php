<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_Master extends CI_Controller {
	function __construct(){
		parent::__construct();
		
		$this->load->model('M_Data_Master');
	
	
		if($this->session->userdata('status') != "login"){
	 		redirect(base_url("Auth/index"));
	 	}
	}

	public function User_Login()
	{
		$data['side'] = 'data_master-login';
		$data['page'] = 'Master Data User Login';
	
		$this->load->view('master/user_login/index', $data);
	}

	public function datasiswa()
	{
		$data['side'] = 'data_master-datasiswa';
		$data['page'] = 'Master Data datasiswa';

		$this->load->view('master/datasiswa/index', $data);
	}

	public function kriteria()
	{
		$data['side'] = 'data_master-kriteria';
		$data['page'] = 'Master Data kriteria';

		$this->load->view('master/kriteria/index', $data);
	}

	public function alternatif()
	{
		$data['side'] = 'data_master-alternatif';
		$data['page'] = 'Alternatif';

		$this->load->view('master/alternatif/index', $data);
	}

		public function kriteriadetail()
	{
		$kriteria= $_REQUEST['k'];
		$id= $_REQUEST['id'];
		$data['side'] = 'data_master-kriteria';
		$data['page'] = 'Kriteria Detail '.$kriteria;
		$data['kk'] = $kriteria;
		$data['id_kriteria'] = $id;
		
		$this->load->view('master/kriteriadetail/index', $data);
	}
		public function getTabeldetail()
	{
		$filSearch = $this->input->post("filSearch");
		$kriteria = $this->input->post("kriteria");
		$data['data'] = $this->M_Data_Master->getDatakriteriadetail($filSearch,$kriteria)->result();
		$this->load->view('master/kriteriadetail/tabel', $data);
	}

	public function getTabelUserLogin()
	{
		$filSearch = $this->input->post("filSearch");
		$data['data'] = $this->M_Data_Master->getDataUserLogin($filSearch)->result();
		$this->load->view('master/user_login/tabel', $data);
	}
		public function getTabelkriteria()
	{
		$filSearch = $this->input->post("filSearch");
		$data['data'] = $this->M_Data_Master->getDatakriteria($filSearch)->result();
		$this->load->view('master/kriteria/tabel', $data);
	}
		public function getTabelalternatif()
	{
		$filSearch = $this->input->post("filSearch");
		$data['data'] = $this->M_Data_Master->getTabelalternatif($filSearch)->result();
		$this->load->view('master/alternatif/tabel', $data);
	}
		public function getTabelsiswa()
	{
		$filSearch = $this->input->post("filSearch");
		$data['data'] = $this->M_Data_Master->getdatasiswa($filSearch)->result();
		$this->load->view('master/datasiswa/tabel', $data);
	}
		public function getdatasiswa()
	{
		$cari = $this->input->post("cari");
		$sql = $this->M_Data_Master->getdatasiswapil($cari);
		$item = $sql->result_array();
		$data = array();
		foreach ($item as $key) {
			$data[] = array('id' =>$key['nis'] , 'text' =>$key['nis'].' || '.$key['nama']);
		}
		echo json_encode($data);
	}

			public function getdatakriteriap()
	{
		$cari = $this->input->post("cari");
		$sql = $this->M_Data_Master->getdatakriteriap($cari);
		$item = $sql->result_array();
		$data = array();
		foreach ($item as $key) {
			$data[] = array('id' =>$key['id'] , 'text' =>$key['kriteria'].' || '.$key['detail']);
		}
		echo json_encode($data);
	}

	public function getcompanyname()
	{
		$cari = $this->input->post("cari");
		$sql = $this->M_Data_Master->getcompanyname($cari);
		$item = $sql->result_array();
		$data = array();
		foreach ($item as $key) {
			$data[] = array('id' =>$key['id_customer'] , 'text' =>$key['companyname']);
		}
		echo json_encode($data);
	}

	public function hapuskriteria()
	{
	$id_kriteria = $this->input->post("id_kriteria");
	$data = $this->M_Data_Master->hapuskriteria($id_kriteria);
	echo json_encode($data);
	}

		public function hapussiswa()
	{
	$id_siswa = $this->input->post("id_siswa");
	$data = $this->M_Data_Master->hapussiswa($id_siswa);
	echo json_encode($data);
	}

	public function tambahdatakriteria()
	{
		$id_kriteria = $this->input->post("id_kriteria");
		$kriteria = $this->input->post("kriteria");
		$bobot = $this->input->post("bobot");
		$atribut = $this->input->post("atribut");
		
		if($id_kriteria!=''){
		$data = $this->M_Data_Master->editkriteria($id_kriteria,$kriteria,$bobot,$atribut);
		}else{
		$data = $this->M_Data_Master->tambahkriteria($kriteria,$bobot,$atribut);
		}
		echo json_encode($data);
	}

	public function tambahsiswa()
	{
		//id_siswa,nis,Nama,judulfoto,tgllahir,alamat,jenkel
		$id_siswa = $this->input->post("id_siswa");
		$nis = $this->input->post("nis");
		$Nama = $this->input->post("Nama");
		$judulfoto = $this->input->post("judulfoto");
		$tgllahir = $this->input->post("tgllahir");
		$alamat = $this->input->post("alamat");
		$jenkel = $this->input->post("jenkel");
		$tlpn = $this->input->post("tlpn");
		if($id_siswa!=''){
		$data = $this->M_Data_Master->editsiswa($id_siswa,$nis,$Nama,$judulfoto,$tgllahir,$alamat,$jenkel,$tlpn);
		}else{
		$data = $this->M_Data_Master->tambahsiswa($id_siswa,$nis,$Nama,$judulfoto,$tgllahir,$alamat,$jenkel,$tlpn);
		}
		echo json_encode($data);
	}

		public function tambahalternatif()
	{

		$id_alternatif = $this->input->post("id_alternatif");
		$uraian = $this->input->post("uraian");
		$tgl = $this->input->post("tgl");
		$siswa = $this->input->post("siswa");
		$kriteria = $this->input->post("kriteria");
		
		
		if($id_alternatif!=''){
		$data = $this->M_Data_Master->editalternatif($id_alternatif,$uraian,$tgl,$siswa,$kriteria);
		}else{
		$data = $this->M_Data_Master->tambahalternatif($id_alternatif,$uraian,$tgl,$siswa,$kriteria);
		}
		echo json_encode($data);
	}

	public function editdataakun(){
		$nickname2 = $this->input->post("nickname2");
		$username2 = $this->input->post("username2");
	//	$tglexpired2 = $this->input->post("tglexpired2");
		$otoritas2 = $this->input->post("otoritas2");
		$customer2 = $this->input->post("customer2");

		$data = $this->M_Data_Master->editdataakun($nickname2,$username2,$otoritas2,$customer2);

echo json_encode($data);
	}

	public function tambahAkun()
	{
		$nickname = $this->input->post("nickname");
		$username = $this->input->post("username");
		$pass = $this->input->post("pass");
		$customer = $this->input->post("customer");
		$otoritas = $this->input->post("otoritas");
		$data = $this->M_Data_Master->tambahAkun($nickname,$username,$pass,$customer,$otoritas);
		echo json_encode($data);
	}
	public function ubahStatusAkun()
	{
		$username = $this->input->post("username");
		$status = $this->input->post("status");
		$data = $this->M_Data_Master->ubahStatusAkun($username, $status);
		echo json_encode($data);
	}
	public function hapususer()
	{
	$username = $this->input->post("username");
	$data = $this->M_Data_Master->hapususer($username);
	echo json_encode($data);
	}
	public function ambilnoanggota(){
			$cekNoDoc=$this->db->query("SELECT MAX(RIGHT(noanggota,5)) AS noanggota FROM tbanggota");
		foreach ($cekNoDoc->result() as $data) {
            if ($data->noanggota =="") {
                $URUTZERO = "AGT-00001";

                $hasil= array('nomor' => $URUTZERO);
                echo json_encode($hasil);
            }else{
                $zero='';
                $length= 5;
                $index=$data->noanggota;

                for ($i=0; $i <$length-strlen($index+1) ; $i++) { 
                    $zero = $zero.'0';
                }
                $URUTDOCNO = 'AGT-'.$zero.($index+1);
                
                $hasil= array('nomor' => $URUTDOCNO);
                echo json_encode($hasil);  
            }
            
        }
	}

	function tesup(){
   $temp = "upload/";
  if (!file_exists($temp))
    mkdir($temp);
  $username = $this->session->userdata("username");
  $nama_file       = $_POST['nama_file'];
  $fileupload      = $_FILES['fileupload']['tmp_name'];
  $ImageName       = $_FILES['fileupload']['name'];
  $ImageType       = $_FILES['fileupload']['type'];
  $size            = $_FILES['fileupload']['size'];
    
  
 
  
  if (!empty($fileupload)){
    $ImageExt       = substr($ImageName, strrpos($ImageName, '.'));
    $ImageExt       = str_replace('.','',$ImageExt); // Extension
    $ImageName      = preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);
    //$NewImageName   = str_replace(' ', '', $nama_file.'.'.$ImageExt);
  //$NewImageName   =$nama_file.'.'.$ImageExt;
    $NewImageName   =$nama_file.'.PNG';
    move_uploaded_file($_FILES["fileupload"]["tmp_name"],$_SERVER['DOCUMENT_ROOT'].'/spk/assets/image/siswa/'.$NewImageName); // Menyimpan file
 	//	$data = $this->M_Auth->updateAvatar($NewImageName); 
    echo "1";
  } else {
    echo $size;
  }
}



}

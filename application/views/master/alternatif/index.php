<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Select2 -->


  <link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/plugins/jquery-ui-1.12.1.custom/jquery-ui.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/plugins/sweetalert2_ori/dist/sweetalert2.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/plugins/ladda-buttons/css/ladda-themeless.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
   <link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  
  <?php $data['judul'] ='Alternatif';
  $this->load->view("templates/header",$data)?>
  
</head>
<body class="hold-transition sidebar-mini layout-fixed sidebar-collapse layout-navbar-fixed layout-footer-fixed">
 <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="<?=base_url()?>assets/image/logo-company/<?=$this->session->userdata("logocompany")?>"  alt="AdminLTELogo" height="60" width="60">
  </div>
<div class="wrapper">
    <?php $this->load->view('templates/navbar');?>
    <?php $this->load->view('templates/sidebar');?>
    <div class="content-wrapper">
      <?php $this->load->view('templates/content-header');?>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-2">
                      <div class="form-group">
                        <label>&nbsp;</label>
                        <button type="button" class="btn bg-purple btn-block btn-sm" id="btnkriteria" data-toggle="modal" onclick="javascript:kosong();">
                          <i class="fas fa-user-plus"></i>
                          &nbsp;&nbsp;Tambah Data
                        </button>
                      </div>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                      <form id="search">
                        <div class="form-group">
                          <label>&nbsp;</label>                         
                          <input type="search" class="form-control form-control-search" id="filSearch" placeholder="Cari">
                        </div>
                      </form>
                    </div>
                  </div>
                  <br>
                  <div class="row">
                    <div class="col-md-12">
                      <div id="getTabel"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- Modal -->
     <div class="modal fade" id="modal-kriteria">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Data</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="row">
              <div class="col-md-4">
        
            <input id="id_alternatif" type="text" hidden>
			
				  
                   
                         <div class="form-group">
                  <label>Tanggal:</label>
                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                        <input onChange="ambil_nomor_spk();" id="tgl" type="text" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>
                </div>
                       
						
                 
		 </div>
		</div>
				 <div class="row">
              <div class="col-md-5">
				   <label>SISWA</label>
            <select placeholder="siswa" class="select2 form-control select2-purle" data-dropdown-css-class="select2-purle" id="siswa" style="width: 100%">
				 </select>  
				  
				 </div>
					 <div class="col-md-7">
		   <label>Kriteria Pelanggaran</label>
            <select placeholder="kriteria" class="select2 form-control select2-purle" data-dropdown-css-class="select2-purle" id="kriteria" style="width: 100%">
				 </select>  
				 </div>
					 	</div>
				 <div class="row">
              <div class="col-md-12">
				 <label>Uraian Pelanggaran</label> 
            <textarea id="uraian" type="text" class="form-control" placeholder="Uraian Pelanggaran" style="height:110px;"></textarea>
				 </div>
		</div>
            <div class="modal-footer right-content-between">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn bg-purple ladda-button saveAkun" data-style="expand-right" onclick="javascript:save();">
              <i class="fa fa-save"></i>&nbsp;Save</button>

            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      </div>
      <!-- /.modal -->
    <?php $this->load->view('templates/footer');?>
  </div>
<?php $this->load->view("templates/js");?>
<!-- Select2 -->
<script src="<?= base_url()?>assets/plugins/select2/js/select2.full.min.js"></script>
<script src="<?= base_url()?>assets/plugins/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="<?= base_url()?>assets/plugins/sweetalert2_ori/dist/sweetalert2.min.js"></script>
<script src="<?= base_url()?>assets/plugins/ladda-buttons/js/spin.min.js"></script>
<script src="<?= base_url()?>assets/plugins/ladda-buttons/js/ladda.min.js"></script>
<script src="<?= base_url()?>assets/plugins/ladda-buttons/js/ladda.jquery.min.js"></script>
<script src="<?= base_url()?>assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="<?= base_url()?>assets/plugins/moment/moment.min.js"></script>
<script src="<?= base_url()?>assets/plugins/inputmask/jquery.inputmask.min.js"></script>
<script  src="<?= base_url()?>assets/lte/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="<?= base_url()?>assets/lte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script>
    $(function () {
      bsCustomFileInput.init();
    });
</script>
<script type="text/javascript">
  $(document).ready(function(){
	  
	    $("#siswa").select2({
      ajax: { 
		url:'getdatasiswa',
        type: "post",
        dataType: 'json',
        delay: 250,
        data: function (params) {
            return {
              cari: params.term // search term
            };
        },
        processResults: function (response) {
            return {
               results: response
            };
            console.log(response)

        },
        cache: true
      }
    });
	  
	  	    $("#kriteria").select2({
      ajax: { 
		url:'getdatakriteriap',
        type: "post",
        dataType: 'json',
        delay: 250,
        data: function (params) {
            return {
              cari: params.term // search term
            };
        },
        processResults: function (response) {
            return {
               results: response
            };
            console.log(response)

        },
        cache: true
      }
    });
	  
	  
  $('.ladda-button').ladda('bind', {timeout: 1000});

	      $('#reservationdate').datetimepicker({
        format:'YYYY/MM/DD',
    });
	  
    getTabel();
    $('#search').submit(function(e){
      e.preventDefault();
      getTabel();
    })


  })
  

    function ubahdata(id,idkriteriaDet,tanggal,nis,uraian,nama,kriteria,detail){

$('#id_alternatif').val(id);
$('#siswa').val(nis).trigger('change');
$('#kriteria').val(idkriteriaDet).trigger('change');
$('#uraian').val(uraian);
$('#tgl').val(tanggal);
		
		if ($('#siswa').find("option[value='" +nis + "']").length) {
    $('#siswa').val(nis).trigger('change');
} else { 
    // Create a DOM Option and pre-select by default
    var newOption = new Option(nama,nis, true, true);
    // Append it to the select
    $('#siswa').append(newOption).trigger('change');
}
		
if ($('#kriteria').find("option[value='" +idkriteriaDet + "']").length) {
    $('#kriteria').val(idkriteriaDet).trigger('change');
} else { 
    // Create a DOM Option and pre-select by default
    var newOption = new Option(detail,idkriteriaDet, true, true);
    // Append it to the select
    $('#kriteria').append(newOption).trigger('change');
}
		
		
   $('#modal-kriteria').modal("show");

  }

  function save(){
var id_alternatif= $('#id_alternatif').val();
var uraian= $('#uraian').val();
var tgl= $('#tgl').val();
var siswa =$("#siswa").select2('val');
var kriteria =$("#kriteria").select2('val');
	  

	  
	  
          if (tgl == ''||siswa == ''||kriteria == ''||uraian == '') {
              Swal.fire("Isi Terlebih Dahulu!","Data Tidak Bisa di Save Saat semua Belum Diisi","warning")
              saveAkun.ladda('stop');
            }else{
              $.ajax({
                type:"POST",
                data:{id_alternatif,uraian,tgl,siswa,kriteria},
                url: 'tambahalternatif',
                dataType: "JSON",
                cache: false,
                async: false,
                success: function(data){
                
                  Swal.fire("Berhasil","Data kriteria tersimpan","success")
                  $('#modal-kriteria').modal('hide');
               getTabel();//  $('#datatableid').DataTable().ajax.reload();
                },
                error: function(data){
                  Swal.fire("Gagal Menyimpan Data!",'Hubungi Staff IT!','error');
                
                }
              }) 
            }

}
function kosong(){
$('#id_alternatif').val('');
$('#siswa').val(null).trigger('change');
$('#kriteria').val(null).trigger('change');
$('#uraian').val('');
$('#tgl').val('');

$('#modal-kriteria').modal('show');
}
	
	function rinci(id,kriteria){
		var url    = "<?php echo site_url(); ?>data_master/kriteriadetail";
			lc= '?k='+kriteria+'&id='+id;
			window.open(url+lc, '_blank');
			window.focus();
	}

     function hapus(id_kriteria,kriteria){
Swal.fire({
  title: 'Apa anda yakin menghapus kriteria '+kriteria+' ?',
  text: "data yang sudah dihapus tidak bisa d kembalikan!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.isConfirmed) {
 $.ajax({
                type:"POST",
                data:{id_kriteria},
                url: 'hapuskriteria',
                dataType: "JSON",
                cache: false,
                async: false,
                success: function(data){
                
                  Swal.fire("Berhasil","kriteria Terhapus","success")
               //   $('#modal-kriteria').modal('hide');
                // $('#datatableid').DataTable().ajax.reload();
                getTabel();
                },
                error: function(data){
                  Swal.fire("Gagal Hapus Data!",'Hubungi Staff IT!','error');
                
                }
              }) 
    Swal.fire(
      'Deleted!',
      'Your file has been deleted.',
      'success'
    )
 }
})
  }


  function getTabel() {
    var gagal = '<div class="alert alert-danger alert-dismissible">';
        gagal +='<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
        gagal +='<h5><i class="icon fas fa-ban"></i>Gagal Meload Data!</h5>';
        gagal +='Lakukan Refresh pada Halaman Ini! Jika Masih Error Mohon Untuk Hubungi Staff IT!';
        gagal +='</div>';
    var filSearch = $('#filSearch').val();
    $.ajax({
      type:'post',
      data: {filSearch},
      url: 'getTabelalternatif',
      cache: false,
      async: true,
      beforeSend: function(data){
        $('.preloader').show();
      },
      success: function(data){
        $('#getTabel').html(data);
      },
      complete: function(data){
        $('.preloader').fadeOut("slow");
      },
      error: function(data){
        $('#getTabel').html(gagal);
      }
    });
  }
  

</script>
<!-- FootJS -->
</body>
</html>

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
  
  <?php $data['judul'] ='kriteria detail';
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
                          &nbsp;&nbsp;Tambah Detail
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
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Kriteria</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="row">
              <div class="col-md-12">
        	  <input id="id_detail" type="text" hidden>
            <input id="id_kriteria" type="text" hidden>
			  <label>Kriteria</label>   
          <input type="text" disabled="disabled" class="form-control" id="kriteria" placeholder="Kriteria">
		 </div>
		</div>
				 <div class="row">
              <div class="col-md-4">
				   <label>Bobot</label>
            <input id="bobot" type="number"  class="form-control" >
				  
				 </div>
				
					 </div>
				<div class="row">
					 <label>Detail</label> 
          <div class="input-group mb-3">
          <textarea id="detail" type="text" class="form-control" placeholder="detail"></textarea>
          </div>
			</div>	
				
            <div class="modal-footer right-content-between">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn bg-purple ladda-button saveAkun" data-style="expand-right" onclick="javascript:save();">
              <i class="fa fa-save"></i>&nbsp;Save</button>

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
<script>
    $(function () {
      bsCustomFileInput.init();
    });
</script>
<script type="text/javascript">
  $(document).ready(function(){
  $('.ladda-button').ladda('bind', {timeout: 1000});

 getTabel();
    $('#search').submit(function(e){
      e.preventDefault();
      getTabel();
    })


  })
  

    function ubahdata(id_kriteria,kriteria,bobot,atribut){

   $('#id_kriteria').val(id_kriteria);
   $('#kriteria').val(kriteria);
$('#bobot').val(bobot);
$('#atribut').val(atribut);
 
   $('#modal-kriteria').modal("show");

  }

  function save(){
var kriteria= $('#kriteria').val();
var id_kriteria= $('#id_kriteria').val();
var bobot= $('#bobot').val();
	  var atribut= $('#atribut').val();
	  
          if (kriteria == ''||kriteria == ''||bobot == ''||atribut == '') {
              Swal.fire("Isi Terlebih Dahulu!","Data Tidak Bisa di Save Saat semua Belum Diisi","warning")
              saveAkun.ladda('stop');
            }else{
              $.ajax({
                type:"POST",
                data:{id_kriteria,kriteria,bobot,atribut},
                url: 'tambahdatakriteria',
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
	var kriteriates='<?=$kk?>';
	var id_kriteriates='<?=$id_kriteria?>';
$('#id_kriteria').val(id_kriteriates);
$('#kriteria').val(kriteriates);
$('#bobot').val('');
$('#atribut').val('');
$('#modal-kriteria').modal('show');
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
	  var kriteria='<?=$kk?>';
    var gagal = '<div class="alert alert-danger alert-dismissible">';
        gagal +='<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
        gagal +='<h5><i class="icon fas fa-ban"></i>Gagal Meload Data!</h5>';
        gagal +='Lakukan Refresh pada Halaman Ini! Jika Masih Error Mohon Untuk Hubungi Staff IT!';
        gagal +='</div>';
    var filSearch = $('#filSearch').val();
    $.ajax({
      type:'post',
      data: {filSearch,kriteria},
      url: 'getTabeldetail',
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

    <style type="text/css">
    
		 img {
  border-radius: 50%;
}
		 
     
</style>

<table class="table table-horvered table-striped table-bordered" id="datatable" width="100%">
	<thead class="text-center bg-gray">
		<tr>
			<td>Foto</td>
			<td>No</td>			
			<td>NIS</td>
			<td>Nama</td>
			<td>Tanggal Lahir</td>
			<td>Jenis Kelamin</td>
			<td>Tlp.Orang Tua</td>
			<td>Alamat</td>
			<td>Status</td>			
			<td>Aksi</td>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach ($data as $key): $no++; ?>
			<tr>
				

			<?php	if($key->foto!=''){ ?>
<td   align="center"><img src="<?= base_url() ?>assets/image/siswa/<?=$key->foto?>" width="30px" height="30px" /></td>
<?php }else{ ?>
<td   align="left">&nbsp;</td>
<?php  } ?>
				<td><?=$no?></td>
				<td><?=$key->nis?></td>
				<td><?=$key->nama?></td>	
				<td><?=$key->tanggal_lahir?></td>	
				<td><?=$key->jenkel?></td>	
				<td><?=$key->tlpn?></td>	
				<td><?=$key->alamat?></td>	
				<td><?=$key->status?></td>	
							
				<td>
				<a href="javascript:ubahdata('<?=$key->id?>','<?=$key->nis?>','<?=$key->nama?>','<?=$key->tanggal_lahir?>','<?=$key->alamat?>','<?=$key->status?>','<?=$key->foto?>','<?=$key->jenkel?>','<?=$key->tlpn?>')" class='btn btn-warning btn-sm'>
					<i class='fas fa-pencil-alt mr-1'></i>&nbsp;Ubah</a>&nbsp;
				<a href="javascript:hapus('<?=$key->id?>','<?=$key->nis?>')" class='btn btn-danger btn-sm'><i class='fas fa-trash'></i>&nbsp;Hapus</a>
				</td>
				
				
			</tr>
		<?php  endforeach ?>
	</tbody>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		var table = $('#datatable').DataTable( {
            scrollY:        "400px",
            scrollX:        true,
            scrollCollapse: true,
            paging:         true,
            'searching': false,
            columnDefs: [
                { orderable: false, targets: 8 },
				{ orderable: false, targets: 0 }
            ],
            order: [[1, 'asc']]  
              
          } ); 
	});
</script>
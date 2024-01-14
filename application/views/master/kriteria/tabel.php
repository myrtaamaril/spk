<table class="table table-horvered table-striped table-bordered" id="datatable" width="100%">
	<thead class="text-center bg-gray">
		<tr>
			<td>No</td>
			<td>Kriteria</td>
			<td>Bobot</td>
			<td>Atribut</td>
			<td>Normalisasi</td>
			<td>Aksi</td>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach ($data as $key): $no++; ?>
			<tr>
				<td><?=$no?></td>
				<td><?=$key->kriteria?></td>
				<td><?=$key->bobot?></td>
				<td><?=$key->atribut?></td>
				<td><?=$key->normalisasi?></td>	
				<td>
			<a href="javascript:rinci('<?=$key->id?>','<?=$key->kriteria?>','<?=$key->bobot?>','<?=$key->atribut?>')" class='btn btn-primary btn-sm'>
					<i class='fas fa-tasks mr-1'></i>&nbsp;Detail</a>&nbsp;
					
				<a href="javascript:ubahdata('<?=$key->id?>','<?=$key->kriteria?>','<?=$key->bobot?>','<?=$key->atribut?>')" class='btn btn-warning btn-sm'>
					<i class='fas fa-pencil-alt mr-1'></i>&nbsp;Ubah</a>&nbsp;
				<a href="javascript:hapus('<?=$key->id?>','<?=$key->kriteria?>')" class='btn btn-danger btn-sm'><i class='fas fa-trash'></i>&nbsp;Hapus</a>
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
                { orderable: false, targets: 4 }
            ],
            order: [[0, 'asc']]  
              
          } ); 
	});
</script>
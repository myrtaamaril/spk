<table class="table table-horvered table-striped table-bordered" id="datatable" width="100%">
	<thead class="text-center bg-gray">
		<tr>
			<td>No</td>
			<td>Tanggal</td>
			<td>NIS</td>
			<td>Nama</td>
			<td>Kriteria</td>
			<td>Detail</td>
			<td>Bobot</td>
			<td>Aksi</td>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach ($data as $key): $no++; ?>
			<tr>
				<td><?=$no?></td>
				<td><?=$key->tanggal?></td>
				<td><?=$key->nis?></td>
				<td><?=$key->nama?></td>
				<td><?=$key->kriteria?></td>
				<td><?=$key->detail?></td>
				<td><?=$key->bobot?></td>
				<td>
				<a href="javascript:ubahdata('<?=$key->id?>','<?=$key->idkriteriaDet?>','<?=$key->tanggal?>','<?=$key->nis?>','<?=$key->uraian?>','<?=$key->nama?>','<?=$key->kriteria?>','<?=$key->detail?>')" class='btn btn-warning btn-sm'>
					<i class='fas fa-pencil-alt mr-1'></i>&nbsp;Ubah</a>&nbsp;
				<a href="javascript:hapus('<?=$key->id?>','<?=$key->kriteria?>','<?=$key->nama?>','<?=$key->tanggal?>')" class='btn btn-danger btn-sm'><i class='fas fa-trash'></i>&nbsp;Hapus</a>
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
                { orderable: false, targets: 6 }
            ],
            order: [[0, 'asc']]  
              
          } ); 
	});
</script>
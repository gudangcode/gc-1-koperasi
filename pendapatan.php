<!-- 
Property of GudangCode.com
Author : Nyoman Adi Yudana
Github : https://github.com/gudangcode/
Website : https://gudangcode.com
contact : 081377843910
Facebook : https://web.facebook.com/mahasiswacupu/
-->

<?php
include 'config/koneksi.php';
//pendapatan
$a = mysql_fetch_array(mysql_query("SELECT SUM('besar_simpanan') as besar_simpan from t_simpan"));
$b = $a['besar_simpan'];
$c = mysql_fetch_array(mysql_query("SELECT SUM('besar_angsuran') as besar_angsur from t_angsur"));

?>
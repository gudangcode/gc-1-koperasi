<!-- 
Property of GudangCode.com
Author : Nyoman Adi Yudana
Github : https://github.com/gudangcode/
Website : https://gudangcode.com
contact : 081377843910
Facebook : https://web.facebook.com/mahasiswacupu/
-->

<?php
ini_set('display_errors', FALSE);
$host	= "localhost";
$user	= "root";
$pass	= "";
$db		= "koperasi";


$koneksi = mysql_connect($host, $user, $pass);
$db = mysql_select_db($db);

if ($koneksi && $db) {
	//echo "berhasil : )";
} else {
?>
	<script language="javascript">
		alert("Gagal Koneksi Database MySql !!")
	</script>
<?php
}


class Tabungan
{
	private $saldo;
	function Tabungan($a)
	{
		$this->saldo = $a;
	}
	function simpan($sim)
	{
		$this->saldo = $this->saldo + $sim;
	}
	function pinjam($pin)
	{
		$this->saldo = $this->saldo - $pin;
	}
	function cek_saldo()
	{
		return $this->saldo;
	}
};
?>
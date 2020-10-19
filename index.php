<head>
<title>:: SISTEM TEMU KEMBALI INFORMASI ::</title>
</head>

<body>
<h1 align=center>SISTEM TEMU KEMBALI INFORMASI</h1>
<hr>
<div align=center>
| <a href="index.php">Beranda</a> |
<a href="index.php?act=corpus">Tampilkan Data</a> |
<a href="index.php?act=indexing">Buat Index</a> |
<a href="index.php?act=bobot">Hitung Bobot</a> |
<a href="index.php?act=panjangvektor">Hitung Panjang Vektor</a> |
<a href="index.php?act=showindex">Tampilkan Index</a> |
<a href="index.php?act=showvektor">Tampilkan Panjang Vektor</a> |
<a href="index.php?act=retrieve">Retrieval</a> |
</div>
<hr />

<?php
include 'koneksi.php';
include 'fungsi.php';

//periksa apa yang diinginkan pengguna (variabel act)
$apa = $_GET["act"];
if($apa == null || $apa == ''){ echo '';}

//jika "corpus"	
if ($apa == "corpus") {
	$result = mysql_query("SELECT * FROM tbberita ORDER BY Id");

	while($row = mysql_fetch_array($result)) {
		echo $row['Id'] . ". <font color =blue>" . $row['Judul'] . "</font><br />" . $row['Berita'];
		echo "<hr />";
	}  		
}
	
//jika "indexing"	
else if ($apa == "indexing") {
	buatindex();		
	print("<hr />");
} 
	
else if ($apa == "bobot") {
	hitungbobot();		
	print("<hr />");
} 
	
else if ($apa == "panjangvektor") {
	panjangvektor();		
	print("<hr />");
} 
	
else if ($apa == "showvektor") {
	print("<table>");	
	print("<tr><td>Doc-ID</td><td>Panjang Vektor</td></tr>");
	$result = mysql_query("SELECT * FROM tbvektor");

	while($row = mysql_fetch_array($result)) {
		
		print("<tr>");
		print("<td>" . $row['DocId'] . "</td><td>" . $row['Panjang'] . "</td>");
		print("</tr>");

	}  		
	print("</table><hr />");	
			
} 
	
//jika "showindex"	
else if ($apa == "showindex") {

	print("<table>");	
	print("<tr><td>#</td><td>Term</td><td>Doc-ID</td><td>Count</td><td>Bobot</td></tr>");
	$result = mysql_query("SELECT * FROM tbindex ORDER BY Id");

	while($row = mysql_fetch_array($result)) {
		
		print("<tr>");
		print("<td>" . $row['Id'] . "</td><td>" . $row['Term'] . "</td><td>" . $row['DocId'] . 
			    "</td><td>" . $row['Count'] . "</td><td>" . $row['Bobot'] . "</td>");
		print("</tr>");

	}  		
	print("</table><hr />");
}
	
//jika "retrieve"	
else if ($apa == "retrieve") {					
	print('<center><form action="index.php?act=retrieve" method="post">
		Cari Deskripsi: <input type="text" name="keyword" />
		<input name = "Cari!" type="submit" />
		</form></center><hr />');
		
	$keyword = $_POST["keyword"];
		
	if ($keyword)  {
		$keyword = preproses($keyword);		
		
		print('Hasil retrieval untuk <font color=blue><b>' . $_POST["keyword"]  . '</b></font> (<font color=blue><b>' . $keyword . '</b></font>) adalah <hr />'); 
		ambilcache($keyword);
		//hitungsim($keyword);
	}  		
} //end retrieve 
		 		
//jika beranda atau tidak memilih apapun	
else {
	print("<p align=center>Pilih salah satu link di atas!</p><hr />");
}
?>
<h5 align=center>Dibuat oleh Mokhammad Iqbal, NIM 19.01.63.0004<br>Mata Kuliah SISTEM TEMU KEMBALI INFORMASI<br>Teknik Informatika, Universitas STIKUBANK Semarang<br>2020</h5>
</body>
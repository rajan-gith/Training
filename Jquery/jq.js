$('#btn1').click(function () {
    alert("Text: "+$('p').text())
})
$('#btn2').click(function () {
    alert("Html: "+$('p').html())
})

$('#sub').click(function () {
	var temp;
	temp = $('#input1').val();
	$('#place').text(temp);
})
// list of all div tags elements

var div_collection;
div_collection = $('div')

var class_collection
class_collection = $('.article-item')

var nav
nav = $('#nav')

var articleList, h1, kids, parents;

articleList = $('.article-list');

h1 = articleList.siblings('h1');

kids = articleList.find('*');

parents = articleList.parents('div');

// adding an attr value with jQuery

navlist = $('.nav-list');

nav = navlist.children().first();

link = nav.find('a')

link.attr('href','#1')
// adding an CSS attr value with jQuery
var articleItems;

articleItems = $('.article-item')

articleItems.css('font-size',20)

// Changing elements val from jquery.

$('#input').on('change', function() {
    var val, h1;
    val = $('#input').val();
    h1 = $('.articles').children('h1');
    h1.text(val);
});


// removing elements from html using jQuery

var articleList;
articleList = $('.article-list')

ul = articleList.find('ul');
ul.remove();
//  adding new elements with jQuery

var test;
test = $('.test')
test.append(" <h1> appended </h1> ")
test.prepend(" <h1> preappend </h1> ")


// jQuery each method
function counting() {
  var text,number;
  text = $(this).text();
  number = text.length;
  $(this).text(text+ " " +number);
}

$('p').each(counting);

// on passing a function in $() jQuery run that function after document.ready event

function change_img() {

articleitem = $(".article-item")

image = articleitem.find('img')

image.attr('src','http://lorempixel.com/350/150/animals/')
	// body...
}

$(change_img)

$('li').click(function(){ $(this).hide()})
$('h2').dblclick(function(){ $(this).hide()})
$('h1').click(function(){ $(this).hide()})

$('#nav').mouseenter(function () {
    alert("You pointed your mouse over the nav bar")
})

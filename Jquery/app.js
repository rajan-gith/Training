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

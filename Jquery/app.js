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

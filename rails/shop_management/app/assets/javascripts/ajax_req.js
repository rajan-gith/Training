function ajax_calls() {
  $(".sort").click(function () {
    console.log($(this).attr("id"))
    sort_str = $(this).attr("id")
    sort = sort_str.split("_")
    val = $(search_str).val();
    console.log(val)
    $.ajax({
    method: 'get',
    url: "products/search?search_str="+val+"&sort_cat="+sort[0]+"&sort_type="+sort[1],
    cache: false,
    });
  })
  $("#search_str").change(function() {val = $(this).val();
    $.ajax({
     method: 'get',
     url: "products/search?search_str="+val,
     cache: false,
    });
    }
    )
}
$(ajax_calls);

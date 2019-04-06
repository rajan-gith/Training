function ajax_calls() {
  $("#search_str").change(function() {val = $(this).val();
                                       $.ajax({
                                         method: 'get',
                                         url: "products/search?search_str="+val,
                                         cache: false,
                                       });
                                     }
                           )
  $("#name_asc").click(function() {val = $(search_str).val();
                                       $.ajax({
                                         method: 'get',
                                         url: "products/search?search_str="+val+"&sort_cat=name&sort_type=asc",
                                         cache: false,
                                       });
                                     }
                           )
  $("#name_desc").click(function() {val = $(search_str).val();
                                     $.ajax({
                                       method: 'get',
                                       url: "products/search?search_str="+val+"&sort_cat=name&sort_type=desc",
                                       cache: false,
                                     });
                                   }
                         )
  $("#price_asc").click(function() {val = $(search_str).val();
                                     $.ajax({
                                     method: 'get',
                                     url: "products/search?search_str="+val+"&sort_cat=price&sort_type=asc",
                                     cache: false,
                                     });
                                   }
                           )
  $("#price_desc").click(function() {val = $(search_str).val();
                                     $.ajax({
                                     method: 'get',
                                     url: "products/search?search_str="+val+"&sort_cat=price&sort_type=desc",
                                     cache: false,
                                     });
                                   }
                           )
}
$(ajax_calls);

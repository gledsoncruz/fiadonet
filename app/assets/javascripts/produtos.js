$(document).ready(function(){
    
    $("#produto_valor").priceFormat({
        prefix: 'R$ ',
        clearPrefix: true,
        thousandsSeparator: ''
    });

    $("#produtos th a, #produtos .pagination a, .pagination-centered, .prev").on("click", function() {
      $.getScript(this.href);
      return false;
    });
    
    $("#produtos_search input").keyup(function() {
      if(this.value.length == 3 || this.value.length == 0){
      $.get($("#produtos_search").attr("action"), $("#produtos_search").serialize(), null, "script");
      }
      return false;
      
    });

    
});
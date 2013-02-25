$(document).ready(function(){
    
    $("#cliente_tel").mask("(99) 9999-9999")
    $("#cliente_cel").mask("(99) 9999-9999")

    $("#clientes th a, #clientes .pagination a, .pagination-centered, .prev").on("click", function() {
      $.getScript(this.href);
      return false;
    });
    
    $("#clientes_search input").keyup(function() {
      if(this.value.length == 3 || this.value.length == 0){
      $.get($("#clientes_search").attr("action"), $("#clientes_search").serialize(), null, "script");
      }
      return false;
      
    });
    
    $.fn.mascara = function() { 
      $("#cliente_tel").mask("(99) 9999-9999")
      $("#cliente_cel").mask("(99) 9999-9999") 
    };

    
});

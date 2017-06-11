$(document).ready(function(){
  $('#addLine').on("click", function(){
    var table = $('.requests');

    table.append('<tr><td><input id="item" name="request[][item]"></td><td><input id="price" name="request[][price]"></td><td><input id="quantity" name="request[][quantity]"></td><td><input id="vendor" name="request[][vendor]"></td><td><input id="url" name="request[][url]"></td></tr>');



  });





});

$(document).ready(function(){
  $('#addLine').on("click", function(){
    var table = $('.requests');

    table.append('<tr><td><input id="item" name="item"></td><td><input id="price" name="price"></td><td><input id="quantity" name="quantity"></td><td><input id="vendor" name="vendor"></td><td><input id="url" name="url"></td></tr>');



  });





});

$(document).ready(function() {


  $("#addLine").on("click", function() {
    var table = $('.requests');

    table.append('<tr><td><input id="item" name="request[][item]"></td><td><input id="price" name="request[][price]"></td><td><input id="quantity" name="request[][quantity]"></td><td><input id="vendor" name="request[][vendor]"></td><td><input id="url" name="request[][url]"></td></tr>');
  });


  $(".userRequests").on("click", function() {



  });

  $(".requestDeleteCheck").on("click", function() {

    var parent = $(this).parent();

    parent.parent().toggleClass("highlight");

  });


  $("#guestBox").on("click", function() {
    if ($(this).prop("checked") == false) {
      document.getElementById("inputEmail").value = "";
      document.getElementById("inputPassword").value = "";
    } else if ($(this).prop("checked") == true) {
      document.getElementById("inputEmail").value = "guest@account.com";
      document.getElementById("inputPassword").value = "password";

    }


  });

  /*

    $("#guestBox").on("click", function() {


      document.getElementById("inputEmail").value = "guest@account.com";
    });

    if ($("#guestBox").attr("checked") === false) {
      document.getElementById("inputEmail").value = "";
    }*/
});

console.log('JS ');
function editCustomer(id){
    //var id;
    console.log('CUSTOMER selected: ' + id);
    $.getJSON('editCustomer', {'customerSTT':id},
        function(data){
            console.log('GET');
            var customer = (data.customer);
            var demo = (data.demo);
            console.log('CUSTOMER: ' + customer['mMaDoiTuong'] +" __ "+ demo['name']);
            
            //find edit form
            var options = $("#editForm");
            
//            var $input = $("<s:textfield name='myField' type='text'/>");
//            var $input2 = $("<s:a href=\"123\" >2222hkkk</s:a>");
//            var $form = $("<s:form action=\"update-data\" method=\"get\" id=\"form\"> " 
//                            + "<s:push value="+demo+"> "
//                                + "<s:hidden name="+demo['stt']+"/>  "
//
//                                + "<label>name:</label>"
//                                + "<s:textfield type=\"text\" name="+demo['name']+" placeholder=\"Tinh Thanh\"/>"
//                                + "<label>pass:</label>"
//                                + "<s:textfield type=\"text\" name="+demo['pw']+" placeholder=\"pass\"/>"
//                            + "</s:push>"
//                        + " </s:form>  ");
//                
//            //options.append($input2);
//            $('at').append($input2);
        }
    
    );
}

function importData(){
    console.log('GET');
    //$("#info").append('hello');
    $.getJSON('add-customer',
        function(data){
            console.log('GET');
            var customersTotal = (data.customersTotal);
            console.log(customersTotal);
            
            var option = $("#info");
            option.find('span').remove();
            var alert = "Có " + customersTotal + " khách hàng được thêm!";
            option.append($("<span/>").append(alert));
            
        }
    );
}
console.log('JS ');
function editCustomer(id){
    //var id;
    console.log('CUSTOMER selected: ' + id);
    $.getJSON('editCustomer', {'customerSTT':id},
        function(data){
            console.log('GET');
            var customer = (data.customer);
            console.log('CUSTOMER: ' + customer['mMaDoiTuong']);
            
            
        }
    
    );
}
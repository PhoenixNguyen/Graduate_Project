//chon giam doc
function onClickManager(x) {

    var giamdocId = x !== "--select--" ? x : "nullid";//$('#giamDoc').val();
    gdID = giamdocId;
    console.log("Ma giam doc: " + giamdocId);
    $.getJSON('manager-filter.action', {'giamdocId': giamdocId},
    function(data) {

        var divisionList = (data.userListStaff);
        console.log("log: " + divisionList);
        var options = $("#staff");
        options.find('option')
                .remove()
                .end();
        options.append($("<option />").val("-1").text("--select--"));
        $.each(divisionList, function(k, v) {

            options.append($("<option />").val(k).text(v));
        });
    }
    );
}

//Chon nhan vien
function onClickStaff(x) {
    var staffId = x !== "--select--" ? x : "nullid";//$('#giamDoc').val();
    //gdID = giamdocId;
    console.log("Ma nhan vien: " + staffId);
    $.getJSON('staff-filter.action', {'nhanvienId': staffId},
    function(data) {

        var divisionList = (data.userListCustomer);
        console.log("log: " + divisionList);
        var options = $("#customer");
        options.find('option')
                .remove()
                .end();
        options.append($("<option />").val("-1").text("--select--"));
        $.each(divisionList, function(k, v) {

            options.append($("<option />").val(k).text(v));
        });
    }
    );
}

//Chon khac hang
function onClickCustomer(x) {
    var staffId = x !== "--select--" ? x : "nullid";//$('#giamDoc').val();
    //gdID = giamdocId;
    console.log("Ma nhan vien: " + staffId);
    $.getJSON('customer-filter.action', {'khachhangId': staffId},
    function(data) {

        var divisionList = (data.userListStaff);
      
    }
    );
}

function onClickStartDate(x){
    var date = x ;
    console.log("Date: " + date);
    $.getJSON('start-date-filter.action', {'startDate': date},
    function(data) {

        //var divisionList = (data.userListStaff);
      
    }
    );
}

function onClickEndDate(x){
    var date = x ;
    console.log("Date: " + date);
    $.getJSON('end-date-filter.action', {'endDate': date},
    function(data) {

        //var divisionList = (data.userListStaff);
      
    }
    );
}
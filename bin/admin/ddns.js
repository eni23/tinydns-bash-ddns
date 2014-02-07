$(document).ready(function(){

	$(".btn-del").click(function(){
		var hash=$(this).attr("hash"),
		    name=$(this).attr("domain");
		$("b#del-dom-name").html(name);
		$("button#delete-confirm").attr("hash",hash);
	});

        $("button.btn-edit").click(function(){
		var hash=$(this).attr("hash"),
                    name=$(this).attr("domain");
                $("#mask-title").html("Edit Domain "+name);
                $("button#mask-save").attr("hash",hash);
        	$("#mask-domain").val(name);
		$("#mask-ip").val($(this).attr("ip"));
		$("#mask-ttl").val($(this).attr("ttl"));
	});


	$("button#delete-confirm").click(function(){
		var hash=$(this).attr("hash");
		location.href="/admin/delete/"+hash;
	});


        $("button#mask-save").click(function(){
                var hash=$(this).attr("hash"),
		    dom=$("#mask-domain").val(),
		    ip=$("#mask-ip").val(),
		    ttl=$("#mask-ttl").val();
		if (!hash){
                    location.href="/admin/new/"+dom+"/"+ip+"/"+ttl
                } else {
                    location.href="/admin/update/"+hash+"/"+dom+"/"+ip+"/"+ttl
                }
		    
	 });


        $("#btn-new-domain").click(function(){
                $("#mask-title").html("New DDNS-Domain "+name);
                $("button#mask-save").attr("hash","");
                $("#mask-domain").val("");
                $("#mask-ip").val("");
                $("#mask-ttl").val("");
		$("#mask").modal("show");
        });



});

setTimeout(function() { $("div#msg").hide('fast'); }, 3000);


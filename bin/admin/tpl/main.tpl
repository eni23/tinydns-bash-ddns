<html>
   <head>
      <title>ddns.e23.ch</title>

      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-2-1.0.min.js"></script>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>	      
      <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
      <script src="/admin/ddns.js"></script>
    </head>
   <body>

   
   <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">dyndns admin</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#" id="btn-new-domain">New Domain</a></li>
            <li class="active"><a href="#about">Domain List</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

   <div class="container">
      <br /><br /><br /><br /> 
      {message}
      <div id="msg"></div>
      <h2>Domains</h2>

      <div class="table-responsive">
         <table class="table table-bordered table-striped">
            <thead>
               <tr> 
                  <th>Domain</th>
                  <th>Update-Url</th>
                  <th>Current IP</th>
                  <th>TTL</th>
                  <th>Actions</th>
               </tr>
               </thead>
            <tbody>
	    {domlist}
            </tbody>
         </table>
      </div>


   </div>


<div id="deleteMessage" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Confirm delete</h4>
            </div>
            <div class="modal-body">
                Are you are you sure you want to delete the domain <b id="del-dom-name"></b>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-danger" hash="" id="delete-confirm">Delete Domain</button>
            </div>
        </div>
    </div>
</div>


<div id="mask" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="mask-title" ></h4>
            </div>
            <div class="modal-body">
            

          <div class="row">
		<div class="col-md-2">
			Domain:
		</div>
                <div class="col-md-10">
                	<input id="mask-domain" type="text" class="form-control">
		</div>
          </div>
          <div class="row">
                <div class="col-md-2">
                        IP:
                </div>
                <div class="col-md-10">
                        <input id="mask-ip" type="text" class="form-control">
                </div>
          </div>
          <div class="row">
                <div class="col-md-2">
                        TTL:
                </div>
                <div class="col-md-10">
                        <input id="mask-ttl" type="text" class="form-control">
                </div>
          </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Discard</button>
                <button type="button" class="btn btn-primary" hash="" id="mask-save">Save</button>
            </div>
        </div>
    </div>
</div>



   </body>
</html>

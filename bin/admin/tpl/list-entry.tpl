               <tr>
                  <td>{domain}</td>
                  <td>http://ddns.e23.ch/update/{hash}</td>
                  <td>{ip}</td>
                  <td>{ttl}</td>
                  <td>
		    <button hash="{hash}" domain="{domain}" ttl='{ttl}' ip='{ip}' type="button" class="btn-edit btn btn-primary btn-xs" data-toggle="modal" data-target="#mask">
                      <span class="glyphicon glyphicon-pencil"></span> Edit
                    </button>
                    <button hash="{hash}" domain="{domain}" type="button" class="btn-del btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteMessage">
                      <span class="glyphicon glyphicon-trash"></span> Delete
                    </button>

                  </td>
               </tr>


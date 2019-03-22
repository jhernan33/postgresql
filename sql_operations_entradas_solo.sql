select * from process.operations where oper_codi = 35;
select * from process.operations where oper_codi = 37;
select * from process.operations where oper_codi = 39;

select * from process.operations where oper_codi = 181;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where oper_codi = 181;
select * from notifications;
select * from notifications where oper_codi = 181;
update process.operations set sta_id =11 where oper_codi = 181;
update notifications set view = false where not_id in(120,121,122,126,127,128,129);

select cu.cust_nomb,op.oper_fefi from process.operations as op left outer join public.customers as cu 
          on op.cust_dnic = cu.cust_dnic where op.oper_codi =181 and op.sta_id in (11,12);

select * from process.operations order by oper_codi;

select * from services;

-- buscar todas las operaciones

select * from process.operations where oper_codi = 170 order by oper_codi;
update process.operations set sta_id = 12 where oper_codi = 170;

select * from process.operations where oper_codi = 128 order by oper_codi;
select * from process.operations_details where oper_codi = 126;
select * from process.operations_details_output where oper_codi = 84;

select * from process.operations_details;



select * from process.operations_details where oper_codi= 35;
select * from process.operations_details where oper_codi= 37;
select * from process.operations_details where oper_codi= 38;
select * from process.operations_details where oper_codi= 39;
select * from process.operations_details where oper_codi= 40;
select * from process.operations_details_output;

delete from process.operations_details where opde_codi= 96;
select * from process.tracking_process;
delete from process.tracking_process where trpr_codi = 278;

select * from services;
select * from process.operations;
select * from process.operations_details where oper_codi = 120;
select * from process.operations_details_output where oper_codi = 126;

select * from process.tracking_process
delete from process.operations where oper_codi = 117

delete from process.tracking_process;
delete from process.operations_details_output;
delete from process.operations_details;
delete from process.operations;
delete from notifications;

select * from services order by serv_codi;

select * from process.operations_details_output; 
update process.operations_details_output set sta_id = 10;

select * from process.operations_details where oper_codi = 74;
select * from process.operations_details where oper_codi = 73;
select * from process.tracking_process where opde_codi = 170; 
select * from process.operations_details_output where oper_codi = 74;

-- margen de error por servicio
select * from services order by serv_codi;
select serv_codi,serv_desc,serv_maer from services order by serv_codi;

-- devolver las entradas y salidas de una operacion
select op.oper_codi,op.cust_dnic,--op.dri_dni,
op.oper_diff,op.marg_err,op.cant_diff,--op.sta_id,
op.oper_peen,op.oper_pesa,op.oper_caen,op.oper_casa,
opde.opde_codi,opde.serv_codi,opde.opde_peso
from process.operations as op
left outer join process.operations_details as opde 
on op.oper_codi = opde.oper_codi
left outer join process.operations_details_output as oput
on op.oper_codi = oput.oper_codi
where opde.oper_codi = 83;

select * from process.operations order by oper_codi;
select * from process.operations where oper_codi = 80;
select * from process.operations_details;
select * from process.operations_details where oper_codi = 80;
select * from process.operations_details where oper_codi = 84;


delete from process.operations where oper_codi = 80;
delete from process.operations_details_output where oper_codi = 80;

select * from process.operations_details where opde_codi = 193;

SELECT prosrc FROM pg_proc WHERE proname = 'fborr_regi';

select * from process.operations;
select * from process.operations where oper_codi = 132;
select * from process.operations where oper_codi = 124 and sta_id = 12;
select * from process.operations where oper_codi = 126 and sta_id = 12;
-- Cerrado de Operaciones
select * from process.operations where oper_codi = 152 and sta_id = 12;
select * from process.operations where oper_codi = 154 and sta_id = 12;
select * from process.operations where oper_codi = 90 and sta_id = 12;

delete from process.operations where oper_codi = 103;

select * from process.operations order by oper_codi;
select * from process.operations where oper_codi =168 order by oper_codi;
update process.operations set sta_id = 12 where oper_codi = 168;
-- Notifications
delete from notifications;

select * from notifications;
select * from notifications where not_act = true and view = true;
select * from notifications where oper_codi = 124;

update notifications set view = true where oper_codi = 124;

delete from notifications;

update process.operations set sta_id = 12 where oper_codi = 132;

select * from process.operations
where oper_codi = 132
and sta_id = 12;

-- update automatic_mails
update automatic_mails set aem_bod ='
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
  <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <title>Tracking Perfect Cleaners </title>

  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta name="viewport" content="width=device-width" />
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
  <!-- Bootstrap core CSS     -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <!--  Material Dashboard CSS    -->
  <link href="../assets/css/material-dashboard.css" rel="stylesheet" />
  <!--  CSS for Demo Purpose, don"t include it in your project     -->
  <link href="../assets/css/demo.css" rel="stylesheet" />

  <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
  <!-- <script type="text/javascript" src ="../assets/js/offline.js"></script>
     <link rel="stylesheet" href="../assets/css/offline.css">
     <link rel="stylesheet" href="../assets/css/offline-theme.css">
     <link href="../assets/css/iconos.css" rel="stylesheet">  
    
-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css" rel="stylesheet" />
  <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.bootstrap.min.css " rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons" rel="stylesheet" type="text/css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <div role="document" class="modal-dialog">
      <div class="modal-content">
        
    <div  class="modal-dialog modal-lg" style="font-size: 13px">
      <div  class="modal-content">
        <div  class="modal-header">
          <fieldset >
            <table  class="table table-dark">
              <thead >
                <tr >

                  <th  scope="col">Detalles de operación por evaluar</th>
                  <th  scope="col"></th>

                </tr>
              </thead>
              <tbody >
                <tr >
                  <td >
                    <i  class="material-icons">class</i>&nbsp;
                    <strong >Codigo de Operacion Nº 128 </strong>
                    <i  class="material-icons">person</i>&nbsp;
                    <strong >Cliente : </strong> floraza
                    <i  class="material-icons">
                      <svg  style="width:24px;height:24px" viewBox="0 0 24 24">
                        <path  d="M9,10H7V12H9V10M13,10H11V12H13V10M17,10H15V12H17V10M19,3H18V1H16V3H8V1H6V3H5C3.89,3 3,3.9 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5A2,2 0 0,0 19,3M19,19H5V8H19V19Z" fill="#000000"></path>
                    </svg>
                    </i>&nbsp;
                    <strong >Fecha de inicio: </strong> 2018-05-16 08:08:52
                  </td>
                </tr>
              </tbody>
              <tfoot >
                <tr >
                  <th ></th>
                  <th ></th>
                </tr>
              </tfoot>
            </table>
          </fieldset>
        </div>
        <div  class="modal-body">
          <div  class="row">
            <div  class="col-lg-6 col-md-12">
              <div  class="card">
                <div  class="card-header" data-background-color="blue">
                  <h4  class="title"><strong >Detalles de Entrada</strong></h4>
                  <p  class="category"><strong >Fecha/Hora: 2018-05-16 08:08:52</strong> </p>
                </div>
                <div  class="card-content table-responsive">
                  <table  class="table table-hover">
                    <thead  class="text-black">
                      <tr >
                        <th >ID</th>
                        <th >Servicio</th>
                        <th >Cantidad</th>
                        <th >Peso</th>
                        <th >Fecha/hora</th>
                        <th ></th>
                      </tr>
                    </thead>
                    <tbody >
                        <th >1</th>
                          <td >Bebes</td>
                          <td >1 Piezas</td>
                          <td >1 Lbs</td>
                          <td >2018-05-16 08:08:52</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div  class="col-lg-6 col-md-12">
              <div  class="card">
                <div  class="card-header" data-background-color="red">
                  <h4  class="title"><strong >Detalles de Salida</strong> </h4>
                  <p  class="category"><strong >Fecha/Hora: 2018-05-16 08:09:06</strong></p>
                </div>
                <div  class="card-content table-responsive">
                  <table  class="table table-hover">
                    <thead  class="text-black">
                      <tr >
                        <th >ID</th>
                        <th >Servicio</th>
                        <th >Cantidad</th>
                        <th >Peso</th>
                        <th >Fecha/hora</th>
                        <th ></th>
                      </tr>
                    </thead>
                    <tbody >
                        <th >1</th>
                        <td >Bebes</td>
                        <td >1 Piezas</td>
                        <td >1 Lbs</td>
                        <td >2018-05-16 08:09:06</td>
                      </tr> 
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div  class="col-lg-12 col-md-12">
              <div  class="card">
                <div  class="card-header" data-background-color="black">
                  <h4  class="title"><strong >Resumen</strong> </h4>
                  <p  class="category"></p>
                </div>
                <div  class="card-content table-responsive">
                  <table  class="table table-hover">
                    <thead  class="text-black">
                      <tr >
                        <th >ID</th>
                        <th >Servicio</th>
                        <th >Diferencia en Cantidad</th>
                        <th >Diferencia en Peso</th>
                        <th >Margen Error</th>
                        <th >Inconsistencia</th>
                        <th >Estado</th>
                      </tr>
                    </thead>
                    <tbody >
                        <th >1</th>
                        <td >Bebes</td>
                        <td >0 Piezas</td>
                        <td >0.00 Lbs</td>
                        <td >0.00 Lbs</td>
                        <td >0 Lbs</td>
                        <td   style="color: green;"><i  class="material-icons">done</i></td>
                      </tr>
                      <tr >
                          <th >Totales</th>
                          <th >Parciales</th>
                          <th >0 Piezas</th>
                          <th >0 Lbs</th>
                          <th ></th>
                          <th ></th>
                          <th ></th>
                        </tr>  
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div  class="col-lg-12 col-md-12" style="color: red;">
              </div>
        
          <div  class="form-footer text-right">
            <div  class="form-group">
              <button  class="btn btn-danger btn-fill btn-wd" type="button">Cerrar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  
      </div>
    </div>' where aem_id = 1;
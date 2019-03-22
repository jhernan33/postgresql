$operations = DB::select("select op.oper_codi,op.oper_fein,op.oper_fefi,c.cust_nomb,op.oper_caen,op.oper_peen
            from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
            left outer join drivers as d on op.dri_dni = d.dri_dni
            left outer join process.operations_details as de on op.oper_codi = de.oper_codi
            where op.oper_actu = true
            and op. sta_id = 11
            and lower(cust_nomb) like '%'.$request->clien.'%'
            group by op.oper_codi,op.oper_fein,op.oper_fefi,c.cust_nomb,op.oper_caen,op.oper_peen
            order by op.oper_codi asc");

INSERT INTO public.automatic_mails(
            aem_id, use_nam, aem_des, aem_bod, aem_asu, aem_por, aem_sen, 
            aem_pas, aem_smt, aem_to, enable, created_at, updated_at, 
            acc_id)
    VALUES (1, 'sysadmin', 'sysadmin', 'prueba', 'Prueba de Corrreo', '465', '', 
            '123', '', 'zippyttech@gmail.com', true, '2018-05-15 08:32:16', '2018-05-15 08:32:16', 
            1);

-- Notifications
INSERT INTO public.notifications(
            not_id, not_des, oper_codi, opde_codi, serv_codi, opde_inco, 
            created_at, updated_at, view, not_act, acc_id)
    VALUES (2, 'Prueba dos de Notificacion', ?, ?, ?, ?, 
            ?, ?, ?, ?, ?);

select * from automatic_mails;


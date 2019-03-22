select * from vehicle where vehicle_id = 265;

delete from vehicle where vehicle_id = 265;

delete from container where container_id = 288;
delete from vehicle where vehicle_id = 265;

select * from container;

select * 
from container as c left outer join vehicle as v 
on c.vehicle_id = v.vehicle_id
where v.vehicle_id = 265;

SELECT account_id, address, contact, date_created, date_updated, deleted, detail, editable, email, enabled, favicon, hostname, icon, ip, logo, max_user_count, message, mini_logo, name, phone, preferences, ruc, title, token, url, url_facebook, url_google, url_twitter, user_agent, username_creator, username_updater, visible, images, url_instagram, contact_info, phone_whatsapp, url_questions, url_we FROM account;

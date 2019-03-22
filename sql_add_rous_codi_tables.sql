-- Table process.services_scheduled
alter table process.services_scheduled
add column rous_codi integer;
comment on column process.services_scheduled.rous_codi is 'Codigo del Role Usuario';

ALTER TABLE process.services_scheduled
  ADD CONSTRAINT process_services_scheduled_rous_codi_fk FOREIGN KEY (rous_codi)
      REFERENCES security.role_users (rous_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

-- Table process.operations
alter table process.operations
add column rous_codi integer;
comment on column process.operations.rous_codi is 'Codigo del Role Usuario';

ALTER TABLE process.operations
  ADD CONSTRAINT process_operations_rous_codi_fk FOREIGN KEY (rous_codi)
      REFERENCES security.role_users (rous_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

-- Table Membership
alter table process.membership
add column rous_codi integer;
comment on column process.membership.rous_codi is 'Codigo del Role Usuario';

ALTER TABLE process.membership
  ADD CONSTRAINT process_membership_rous_codi_fk FOREIGN KEY (rous_codi)
      REFERENCES security.role_users (rous_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

-- Table Breakdowns
alter table process.breakdowns
add column rous_codi integer;
comment on column process.breakdowns.rous_codi is 'Codigo del Role Usuario';

ALTER TABLE process.breakdowns
  ADD CONSTRAINT process_breakdowns_rous_codi_fk FOREIGN KEY (rous_codi)
      REFERENCES security.role_users (rous_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

-- Table assignment
alter table process.assignment
add column rous_codi integer;
comment on column process.assignment.rous_codi is 'Codigo del Role Usuario';

ALTER TABLE process.assignment
  ADD CONSTRAINT process_assignment_rous_codi_fk FOREIGN KEY (rous_codi)
      REFERENCES security.role_users (rous_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;


/*-*********************************************************
File: 			AptMgmtSys-dml.sql
Description:	Used for inserting data into the Tables.
Created:		November 4, 2023
Modified:		November 18, 2023
Version:		0.4
--**********************************************************-

--* Populate all Tables */

-- Apartment Table
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('101', 2000, 3, 2, '1A');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('102', 1000, 2, 2, '1B');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('103', 800, 1, 1, '1C');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('104', 800, 1, 1, '1D');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('105', 1000, 2, 2, '1E');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('201', 2000, 3, 2, '2A');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('202', 1000, 2, 2, '2B');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('203', 800, 1, 1, '2C');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('204', 800, 1, 1, '2D');
INSERT INTO apartment (apt_id, apt_sqft, apt_bednum, apt_bathnum, apt_garageid)
VALUES ('205', 1000, 2, 2, '2E');

-- Tenant Table
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Gasan', 'Elkhodari', '1982-05-10', '1-555-283-7298', 'gasan.elkhodari@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Vipul', 'Sonje', '1997-09-12', '1-505-283-7298', 'vxs230000@utdallas.edu');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Manmohan', 'Dash', '1995-05-10', '1-355-283-7298', 'man.dash@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Thiru', 'Raman', '1982-05-10', '1-578-283-7298', 'thiru.raman@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Tait', 'Takatani', '1995-05-10', '1-595-273-7298', 'tait.takatani@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Jane', 'Smith', '1992-05-10', '1-555-283-7398', 'jane.smith@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Michael', 'Johnson', '1985-08-15', '1-555-754-5832', 'michael.johnson@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Emily', 'Brown', '1990-03-20', '1-555-409-1467', 'emily.brown@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('David', 'Wilson', '1978-01-05', '1-555-126-9205', 'david.wilson@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Sarah', 'Davis', '1982-12-08', '1-555-538-3641', 'sarah.davis@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('William', 'Lee', '1993-06-14', '1-555-672-8754', 'william.lee@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Olivia', 'Taylor', '1987-10-02', '1-555-347-6320', 'olivia.taylor@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('James', 'Harris', '1975-07-25', '1-555-912-4198', 'james.harris@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Ava', 'Martin', '1998-04-03', '1-555-645-2576', 'ava.martin@email.com');
INSERT INTO tenant (ten_fname, ten_lname, ten_dob, ten_phone, ten_email)
VALUES ('Liam', 'Garcia', '1980-09-12', '1-555-371-6839', 'liam.garcia@email.com');


-- Staff Table
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Sophia', 'Johnson', 'Manager', '1-555-324-7321', 'sophia.johnson@email.com', '2011-03-17');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Vipul', 'Sonje', 'Associate Manager', '1-555-354-7321', 'vipul.sonje@email.com', '2015-03-17');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Tait', 'Takatani', 'Associate Manager', '1-535-324-7321', 'takatani.tait@email.com', '2010-03-17');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Liam', 'Williams', 'Assistant Manager', '1-555-587-5984', 'liam.williams@email.com', '2019-08-29');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Olivia', 'Davis', 'Maintenance Technician', '1-555-149-8274', 'olivia.davis@email.com', '2014-05-06');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Noah', 'Smith', 'Receptionist', '1-555-826-4569', 'noah.smith@email.com', '2016-11-14');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Ava', 'Anderson', 'Security Guard', '1-555-703-2198', 'ava.anderson@email.com', '2012-02-18');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Mason', 'Martinez', 'Housekeeper', '1-555-235-6345', 'mason.martinez@email.com', '2017-09-23');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Harper', 'Taylor', 'Groundskeeper', '1-555-482-7821', 'harper.taylor@email.com', '2013-07-04');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Elijah', 'Moore', 'Accountant', '1-555-619-3590', 'elijah.moore@email.com', '2018-12-30');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('Scarlett', 'Jackson', 'Maintenance Technician', '1-555-754-1472', 'scarlett.jackson@email.com', '2015-06-11');
INSERT INTO staff (stf_fname, stf_lname, stf_role, stf_phone, stf_email, stf_hiredate)
VALUES ('James', 'Harris', 'Maintenance Technician', '1-555-398-5038', 'james.harris@email.com', '2011-10-08');


-- Lease Table
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('101', 1, '2022-05-20', '2023-05-19', 3000, 200, 3000);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('102', 2, '2022-09-12', '2023-09-11', 1200, 200, 1200);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('103', 3, '2022-07-03', '2023-07-02', 900, 200, 900);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('105', 4, '2022-09-30', '2023-09-29', 1100, 200, 1100);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('201', 5, '2023-03-15', '2024-03-14', 3200, 200, 3200);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('202', 6, '2022-11-30', '2023-11-29', 1200, 200, 1200);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('204', 7, '2023-02-07', '2024-02-06', 900, 200, 900);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('205', 8, '2023-08-25', '2024-08-24', 1200, 200, 1200);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('103', 9, '2023-10-28', '2024-10-27', 1000, 200, 1000);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('101', 10, '2023-07-02', '2024-07-01', 3000, 200, 3000);
INSERT INTO lease (apt_id, ten_id, les_startdate, les_enddate, les_costpermonth, les_appfee, les_deposit)
VALUES ('105', 4, '2023-09-30', '2024-09-29', 1200, 0, 1200);


-- Request Table
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('101', '2022-06-06', 'Appliance', 'Finished', 50, '2022-06-07', 3);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('103', '2022-07-20', 'Electric', 'Finished', 154, '2022-07-25', 3);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('201', '2022-11-01', 'HVAC', 'Finished', 584, '2023-08-05', 3);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('105', '2022-12-14', 'Plumbing', 'Finished', 347, '2022-12-16', 9);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('202', '2023-03-28', 'Electric', 'Finished', 259, '2023-04-01', 10);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, req_cost, req_finishdate, stf_id)
VALUES ('102', '2023-05-06', 'Appliance', 'Finished', 634, '2023-05-10', 3);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, stf_id)
VALUES ('101', '2023-10-29', 'Electric', 'In-Progress', 10);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status, stf_id)
VALUES ('202', '2023-10-31', 'Appliance', 'In-Progress', 3);
INSERT INTO request (apt_id, req_issuedate, req_type, req_status)
VALUES ('204', '2023-11-02', 'Electric', 'Pending');
INSERT INTO request (apt_id, req_issuedate, req_type, req_status)
VALUES ('101', '2023-11-03', 'HVAC', 'Pending');


-- Payment Table
--les_id=1: VALUES ('101', 1, '5-20-2022', '5-19-2023', 3000, 200, 3000);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-05-20', 1064, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-06-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-07-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-08-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-09-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-10-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-11-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2022-12-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2023-01-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2023-02-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2023-03-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2023-04-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (1, '2023-05-19', 1936, 0, 'EFT', 'Accepted');


--les_id=2: VALUES ('102', 2, '9-12-2022', '9-11-2023', 1200, 200, 1200);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2022-09-12', 720, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2022-10-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2022-11-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2022-12-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-01-01', 1200, 0, 'Check', 'Declined');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-01-04', 1212, 12, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-02-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-03-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-04-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-05-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-06-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-07-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-08-01', 1200, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (2, '2023-09-11', 480, 0, 'Check', 'Accepted');


--les_id=3: VALUES ('103', 3, '7-3-2022', '7-2-2023', 900, 200, 900);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-07-03', 843, 0, 'EFT', 'Declined');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-07-04', 843, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-08-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-09-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-10-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-11-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2022-12-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-01-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-02-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-03-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-04-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-05-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-06-01', 900, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (3, '2023-07-01', 57, 0, 'EFT', 'Accepted');


--les_id=4: VALUES ('105', 4, '9-30-2022', '9-29-2023', 1100, 200, 1100);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2022-09-30', 37, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2022-10-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2022-11-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2022-12-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-01-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-02-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-03-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-04-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-05-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-06-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-07-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-08-01', 1100, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (4, '2023-09-01', 1063, 0, 'EFT', 'Accepted');


--les_id=5: VALUES ('201', 5, '3-15-2023', '3-14-2024', 3200, 200, 3200);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-03-15', 1756, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-04-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-05-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-06-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-07-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-08-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-09-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-10-01', 3200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (5, '2023-11-01', 3200, 0, 'EFT', 'Accepted');


--les_id=6: VALUES ('202', 6, '11-30-2022', '11-29-2023', 1200, 200, 1200);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2022-11-30', 40, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2022-12-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-01-01', 1200, 0, 'EFT', 'Declined');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-01-05', 1212, 12, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-02-01', 1200, 0, 'EFT', 'Declined');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-02-06', 1212, 12, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-03-04', 1212, 12, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-04-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-05-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-06-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-07-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-08-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-09-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-10-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (6, '2023-11-01', 1160, 0, 'EFT', 'Accepted');


--les_id=7: VALUES ('204', 7, '2-7-2023', '2-6-2024', 900, 200, 900);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-02-07', 709, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-03-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-04-10', 909, 9, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-05-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-06-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-07-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-08-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-09-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-10-01', 900, 0, 'Check', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (7, '2023-11-06', 909, 9, 'Check', 'Accepted');


--les_id=8: VALUES ('205', 8, '2023-08-25', '2024-08-24', 1200, 200, 1200);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (8, '2023-08-25', 271, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (8, '2023-09-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (8, '2023-10-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (8, '2023-11-01', 1200, 0, 'EFT', 'Accepted');

--les_id=9: VALUES ('103', 9, '2023-10-28', '2024-10-27', 1000, 200, 1000);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (9, '2023-10-28', 129, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (9, '2023-11-01', 1000, 0, 'EFT', 'Accepted');

--les_id=10: VALUES ('101', 10, '2023-07-02', '2024-07-01', 3000, 200, 3000);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (10, '2023-07-02', 2902, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (10, '2023-08-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (10, '2023-09-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (10, '2023-10-01', 3000, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (10, '2023-11-01', 3000, 0, 'EFT', 'Accepted');

--les_id=11: VALUES ('105', 4, '2023-09-30', '2024-09-29', 1200, 0, 1200);
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (11, '2023-09-30', 40, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (11, '2023-10-01', 1200, 0, 'EFT', 'Accepted');
INSERT INTO payment (les_id, pay_date, pay_amount, pay_fine, pay_method, pay_status)
VALUES (11, '2023-11-01', 1200, 0, 'EFT', 'Accepted');




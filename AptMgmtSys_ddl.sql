/*********************************************************
File: 			AptMgmtSys-ddl.sql
Description:	Used for creating the Tables and Sequences
				into the schema
Created:		November 4, 2023
Modified:		November 6, 2023
Version:		0.3
**********************************************************/

/* Prompt dropping Triggers */

DROP TRIGGER IF EXISTS set_apt_defaults ON apartment;
DROP TRIGGER IF EXISTS set_ten_defaults ON tenant;
DROP TRIGGER IF EXISTS set_stf_defaults ON staff;
DROP TRIGGER IF EXISTS set_les_defaults ON lease;
DROP TRIGGER IF EXISTS set_req_defaults ON request;
DROP TRIGGER IF EXISTS set_pay_defaults ON payment;
DROP TRIGGER IF EXISTS set_apt_updates ON apartment;
DROP TRIGGER IF EXISTS set_ten_updates ON tenant;
DROP TRIGGER IF EXISTS set_stf_updates ON staff;
DROP TRIGGER IF EXISTS set_les_updates ON lease;
DROP TRIGGER IF EXISTS set_req_updates ON request;
DROP TRIGGER IF EXISTS set_pay_updates ON payment;

/* Prompt dropping Functions */

DROP FUNCTION IF EXISTS insert_trigger();
DROP FUNCTION IF EXISTS update_trigger();
DROP FUNCTION IF EXISTS ten_insert_trigger();
DROP FUNCTION IF EXISTS stf_insert_trigger();
DROP FUNCTION IF EXISTS les_insert_trigger();	

/* Prompt dropping Sequences */

DROP SEQUENCE IF EXISTS ten_id_seq;
DROP SEQUENCE IF EXISTS stf_id_seq;
DROP SEQUENCE IF EXISTS les_id_seq;

/* Prompt dropping Views */


/* Prompt dropping Indices */

DROP INDEX IF EXISTS IDX_apt_garageid;
DROP INDEX IF EXISTS IDX_ten_phone;
DROP INDEX IF EXISTS IDX_ten_email;
DROP INDEX IF EXISTS IDX_stf_phone;
DROP INDEX IF EXISTS IDX_stf_email;
DROP INDEX IF EXISTS IDX_les_aptid_FK;
DROP INDEX IF EXISTS IDX_les_tenid_FK;
DROP INDEX IF EXISTS IDX_req_stfid_FK;
DROP INDEX IF EXISTS IDX_req_status;
DROP INDEX IF EXISTS IDX_pay_status;

/* Prompt dropping Table alters */

ALTER TABLE lease DROP CONSTRAINT IF EXISTS check_dates;
ALTER TABLE lease DROP CONSTRAINT IF EXISTS check_deposit;
ALTER TABLE lease DROP CONSTRAINT IF EXISTS check_cost;
ALTER TABLE request DROP CONSTRAINT IF EXISTS check_status;
ALTER TABLE payment DROP CONSTRAINT IF EXISTS check_method;
ALTER TABLE payment DROP CONSTRAINT IF EXISTS check_status;

/* Prompt dropping Tables */ 

DROP TABLE IF EXISTS payment CASCADE;
DROP TABLE IF EXISTS request CASCADE;
DROP TABLE IF EXISTS lease CASCADE;
DROP TABLE IF EXISTS apartment CASCADE;
DROP TABLE IF EXISTS tenant CASCADE;
DROP TABLE IF EXISTS staff CASCADE;

/* Prompt creating Tables based on entities */

/*
TABLE apartment IS 'Information for individual housing units within the same apartment complex.'
COLUMN apt_id IS 'Unique identifier for the apartment. 
                  This is a natural primary key based on the unit number.'
COLUMN apt_sqft IS 'Square footage or area of the apartment unit.'
COLUMN apt_bednum IS 'Total number of bedrooms in the apartment unit.'
COLUMN apt_bathnum IS 'Total number of bathrooms in the apartment unit.'
COLUMN apt_garageid IS 'Assigned garage identifier for the apartment unit.'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE apartment (
    apt_id				VARCHAR(5)		NOT NULL, --This is a natural key, does not require a sequence
    apt_sqft			INTEGER			NOT NULL,
    apt_bednum			INTEGER			NOT NULL,
    apt_bathnum			INTEGER			NOT NULL,
    apt_garageid		VARCHAR(5)		NOT NULL,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_apartment PRIMARY KEY (apt_id)
);

/*
TABLE tenant IS 'Information for individuals who have leased an apartment unit 
                 within the apartment complex.'
COLUMN ten_id IS 'Unique identifier for the staff. This is a surrogate primary key.'
COLUMN ten_fname IS 'First name of the tenant.'
COLUMN ten_lname IS 'Last name of the tenant.'
COLUMN ten_dob IS 'Date of Birth of the tenant.'
COLUMN ten_phone IS 'Telephone number of the tenant.'
COLUMN ten_email IS 'E-mail address of the tenant.'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE tenant (
    ten_id				INTEGER			NOT NULL,
    ten_fname			VARCHAR(50)		NOT NULL,
    ten_lname			VARCHAR(50)		NOT NULL,
    ten_dob				DATE			NOT NULL,
    ten_phone			VARCHAR(50)		NOT NULL,
	ten_email			VARCHAR(50)		NOT NULL,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_tenant PRIMARY KEY (ten_id)
);

/*
TABLE staff IS 'Information for individuals employed within the apartment complex 
                to manage various aspects of its operations.'
COLUMN stf_id IS 'Unique identifier for the staff. This is a surrogate primary key.'
COLUMN stf_fname IS 'First name of the staff member.'
COLUMN stf_lname IS 'Last name of the staff member.'
COLUMN stf_role IS 'Specific role or position held by the staff member.'
COLUMN stf_phone IS 'Telephone number of the staff member.'
COLUMN stf_email IS 'E-mail address of the staff member.'
COLUMN str_hiredate IS 'Date of hiring of the staff member.'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE staff (
    stf_id				INTEGER			NOT NULL,
    stf_fname			VARCHAR(50)		NOT NULL,
    stf_lname			VARCHAR(50)		NOT NULL,
    stf_role			VARCHAR(50)		NOT NULL,
    stf_phone			VARCHAR(50)		NOT NULL,
	stf_email			VARCHAR(50)		NOT NULL,
	stf_hiredate		DATE			NOT NULL,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_staff PRIMARY KEY (stf_id)
);

/*
TABLE lease IS 'Information on legally binding agreement between a tenant 
                and the apartment complex owner or property management 
				for the occupancy of an apartment unit.'
COLUMN les_id IS 'Unique identifier for the staff. This is a surrogate primary key.'
COLUMN apt_id IS 'Unique identifier for the apartment unit involved in the lease. 
				  This is a foreign key.'
COLUMN ten_id IS 'Unique identifier for the tenant involved in the lease.
				  This is a foreign key.'
COLUMN les_startdate IS 'Specific date when the lease agreement 
                         officially begins and becomes effective.'
COLUMN les_enddate IS 'Specific date when the lease agreement is set to expire.'
COLUMN les_costpermonth IS 'Amount of money due per month for the right to occupy 
                            and use the apartment unit by the tenant.'
COLUMN les_appfee IS 'One-time fee associated with processing the tenant’s rental application.'
COLUMN les_deposit IS 'Amount of money complex holds for damages and costs at lease end date.'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE lease (
	les_id				INTEGER			NOT NULL,
	apt_id				VARCHAR(5)		NOT NULL,
	ten_id				INTEGER			NOT NULL,
	les_startdate		DATE			NOT NULL,
    les_enddate			DATE			NOT NULL,
	les_costpermonth	INTEGER 		NOT NULL,
	les_appfee			INTEGER			NOT NULL,
	les_deposit			INTEGER			NOT NULL,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_lease 		PRIMARY KEY (les_id),
	CONSTRAINT FK_lease_apt_id	FOREIGN KEY (apt_id) REFERENCES apartment,
	CONSTRAINT FK_lease_ten_id	FOREIGN KEY	(ten_id) REFERENCES tenant
);

/*
TABLE request IS 'A record of requests made by tenants for repairs, maintenance, 
                  or service within the apartment complex for a specific apartment unit.'
COLUMN apt_id IS 'Unique identifier for the apartment involved in a request. 
                  This is both a foreign key and part of the composite primary key.'
COLUMN req_issuedate IS 'Date on which the request is registered.
                         This is part of the composite primary key.'
COLUMN req_type IS 'The type of the request raised. This is par of the composite primary key.'
COLUMN req_status IS 'Current condition of progress of the request (Pending, In-progress, Finished).'
COLUMN req_cost IS 'Cost associated with the service provided for the request.'
COLUMN req_finishdate IS 'Date on which the request was finished.'
COLUMN stf_id IS 'Unique identifier for the staff member managing the request.'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE request (
	apt_id				VARCHAR(5)		NOT NULL,
    req_issuedate		DATE			NOT NULL,
	req_type			VARCHAR(50)		NOT NULL,
	req_status			VARCHAR(50)		NOT NULL,
	req_cost			DECIMAL(5,2),
	req_finishdate		DATE,
	stf_id				INTEGER,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_request 			PRIMARY KEY (apt_id, req_issuedate, req_type),
	CONSTRAINT FK_request_apt_id	FOREIGN KEY (apt_id) REFERENCES apartment,
	CONSTRAINT FK_request_stf_id	FOREIGN KEY	(stf_id) REFERENCES staff
);

/*
TABLE request IS 'A record of requests made by tenants for repairs, maintenance, 
                  or service within the apartment complex for a specific apartment unit.'
COLUMN les_id IS 'Unique identifier for the lease for which a payment is made.
                  This is both a foreign key and part of the composite primary key.'
COLUMN pay_date IS 'Date on which transaction was processed.
                    This is part of the composite primary key.'
COLUMN pay_amount IS 'Total amount of money received in the transaction.'
COLUMN pay_fine IS 'Fine imposed on the tenant (if any) for late rent payment.'
COLUMN pay_method IS 'Mechanism of monetary transaction 
                      (Bank transfer, cash, electronic fund transfer etc.).'
COLUMN pay_status IS 'End result after payment is processed (Accepted, Declined, or Failed).'
COLUMN created_by IS 'Audit column - indicates user who inserted data.'
COLUMN created_date IS 'Audit column - indicates date of insert.'
COLUMN updated_by IS 'Audit column - indicates who made last update.'
COLUMN updated_date IS 'Audit column - date of last update.'
*/

CREATE TABLE payment (
	les_id				INTEGER			NOT NULL,
	pay_date			DATE			NOT NULL, 
	pay_amount			INTEGER			NOT NULL,
	pay_fine			INTEGER			NOT NULL,
	pay_method			VARCHAR(50)		NOT NULL,
	pay_status			VARCHAR(50)		NOT NULL,
	created_by 			VARCHAR(50),
	created_date 		TIMESTAMP,
	updated_by 			VARCHAR(50),
	updated_date 		TIMESTAMP,

    CONSTRAINT PK_payment 			PRIMARY KEY (les_id, pay_date),
	CONSTRAINT FK_payment_les_id	FOREIGN KEY	(les_id) REFERENCES lease
);

/* Prompt creating indices for natural and foreign keys */

-- Apartment
CREATE UNIQUE INDEX IDX_apt_garageid ON apartment (apt_garageid);

-- Tenant
CREATE UNIQUE INDEX IDX_ten_phone ON tenant (ten_phone);
CREATE UNIQUE INDEX IDX_ten_email ON tenant (ten_email);

-- Staff
CREATE UNIQUE INDEX IDX_stf_phone ON staff (stf_phone);
CREATE UNIQUE INDEX IDX_stf_email ON staff (stf_email);

-- Lease
CREATE INDEX IDX_les_aptid_FK ON lease (apt_id);
CREATE INDEX IDX_les_tenid_FK ON lease (ten_id);

-- Request
CREATE INDEX IDX_req_stfid_FK ON request (stf_id);
CREATE INDEX IDX_req_status ON request (req_status);

-- Payment
CREATE INDEX IDX_pay_status ON payment (pay_status);

/* Prompt creating Check Constraints */

-- Lease
ALTER TABLE lease ADD CONSTRAINT check_dates CHECK (les_enddate > les_startdate);
ALTER TABLE lease ADD CONSTRAINT check_deposit CHECK (les_deposit >= les_costpermonth);
ALTER TABLE lease ADD CONSTRAINT check_cost CHECK (les_costpermonth > 500);

-- Request
ALTER TABLE request ADD CONSTRAINT check_status 
CHECK (req_status = 'Pending' OR req_status = 'In-Progress' OR req_status = 'Finished');

-- Payment
ALTER TABLE payment ADD CONSTRAINT check_method 
CHECK (pay_method = 'Check' OR pay_method = 'EFT' OR pay_method = 'Cash');
ALTER TABLE payment ADD CONSTRAINT check_status 
CHECK (pay_status = 'Accepted' OR pay_status = 'Declined' OR pay_status = 'Failed');

/* Prompt creating Sequences for surrogate, primary keys */

-- For use to populate surrogate keys for tenant.
CREATE SEQUENCE ten_id_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1;

-- For use to populate surrogate keys for staff.
CREATE SEQUENCE stf_id_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1;

-- For use to populate surrogate keys for lease.
CREATE SEQUENCE les_id_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1;

/* Prompt creating Functions */

/* 
   Business purpose: The general insert trigger automatically assigns 
   appropriate values to the created_by, created_date, updated_by, and updated_date fields.
*/

CREATE OR REPLACE FUNCTION insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
    -- Set created_by to the current user if it's null
    IF NEW.created_by IS NULL THEN
        NEW.created_by := current_user;
    END IF;
    -- Set created_date to the current timestamp if it's null
    IF NEW.created_date IS NULL THEN
        NEW.created_date := NOW();
    END IF;
    -- Set updated_by to the current user if it's null
    IF NEW.updated_by IS NULL THEN
        NEW.updated_by := current_user;
    END IF;
    -- Set updated_date to the current timestamp if it's null
    IF NEW.updated_date IS NULL THEN
        NEW.updated_date := NOW();
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/* 
  Business purpose: The general update trigger automatically assigns 
  appropriate values to the updated_by and updated_date fields.
*/

CREATE OR REPLACE FUNCTION update_trigger()
RETURNS TRIGGER AS $$
BEGIN
    
    NEW.updated_by := current_user;
    NEW.updated_date := NOW();
 
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/*
  Business purpose: The ten insert trigger automatically assigns 
  appropriate values to the created_by, created_date, updated_by, and updated_date fields.
  Also automatically assigns a sequential ten_id to a newly-inserted row in the tenant table.
*/

CREATE OR REPLACE FUNCTION ten_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
    -- Set ten_id to the next value in the sequence
	NEW.ten_id = NEXTVAL('ten_id_seq');
    -- Set created_by to the current user if it's null
    IF NEW.created_by IS NULL THEN
        NEW.created_by := current_user;
    END IF;
    -- Set created_date to the current timestamp if it's null
    IF NEW.created_date IS NULL THEN
        NEW.created_date := NOW();
    END IF;
    -- Set updated_by to the current user if it's null
    IF NEW.updated_by IS NULL THEN
        NEW.updated_by := current_user;
    END IF;
    -- Set updated_date to the current timestamp if it's null
    IF NEW.updated_date IS NULL THEN
        NEW.updated_date := NOW();
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/*
  Business purpose: The stf insert trigger automatically assigns 
  appropriate values to the created_by, created_date, updated_by, and updated_date fields.
  Also automatically assigns a sequential stf_id to a newly-inserted row in the staff table.
*/

CREATE OR REPLACE FUNCTION stf_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
    -- Set ten_id to the next value in the sequence
	NEW.stf_id = NEXTVAL('stf_id_seq');
    -- Set created_by to the current user if it's null
    IF NEW.created_by IS NULL THEN
        NEW.created_by := current_user;
    END IF;
    -- Set created_date to the current timestamp if it's null
    IF NEW.created_date IS NULL THEN
        NEW.created_date := NOW();
    END IF;
    -- Set updated_by to the current user if it's null
    IF NEW.updated_by IS NULL THEN
        NEW.updated_by := current_user;
    END IF;
    -- Set updated_date to the current timestamp if it's null
    IF NEW.updated_date IS NULL THEN
        NEW.updated_date := NOW();
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/* 
  Business purpose: The les insert trigger automatically assigns 
  appropriate values to the created_by, created_date, updated_by, and updated_date fields.
  Also automatically assigns a sequential les_id to a newly-inserted row in the lease table.
*/

CREATE OR REPLACE FUNCTION les_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
    -- Set ten_id to the next value in the sequence
	NEW.les_id = NEXTVAL('les_id_seq');
    -- Set created_by to the current user if it's null
    IF NEW.created_by IS NULL THEN
        NEW.created_by := current_user;
    END IF;
    -- Set created_date to the current timestamp if it's null
    IF NEW.created_date IS NULL THEN
        NEW.created_date := NOW();
    END IF;
    -- Set updated_by to the current user if it's null
    IF NEW.updated_by IS NULL THEN
        NEW.updated_by := current_user;
    END IF;
    -- Set updated_date to the current timestamp if it's null
    IF NEW.updated_date IS NULL THEN
        NEW.updated_date := NOW();
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/* Prompt creating insert Triggers */

CREATE TRIGGER set_apt_defaults
BEFORE INSERT ON apartment
FOR EACH ROW
EXECUTE FUNCTION insert_trigger();

CREATE TRIGGER set_ten_defaults
BEFORE INSERT ON tenant
FOR EACH ROW
EXECUTE FUNCTION ten_insert_trigger();

CREATE TRIGGER set_stf_defaults
BEFORE INSERT ON staff
FOR EACH ROW
EXECUTE FUNCTION stf_insert_trigger();

CREATE TRIGGER set_les_defaults
BEFORE INSERT ON lease
FOR EACH ROW
EXECUTE FUNCTION les_insert_trigger();

CREATE TRIGGER set_req_defaults
BEFORE INSERT ON request
FOR EACH ROW
EXECUTE FUNCTION insert_trigger();

CREATE TRIGGER set_pay_defaults
BEFORE INSERT ON payment
FOR EACH ROW
EXECUTE FUNCTION insert_trigger();

/* Prompt creating update Triggers */

CREATE TRIGGER set_apt_updates
BEFORE UPDATE ON apartment
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

CREATE TRIGGER set_ten_updates
BEFORE UPDATE ON tenant
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

CREATE TRIGGER set_stf_updates
BEFORE UPDATE ON staff
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

CREATE TRIGGER set_les_updates
BEFORE UPDATE ON lease
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

CREATE TRIGGER set_req_updates
BEFORE UPDATE ON request
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

CREATE TRIGGER set_pay_updates
BEFORE UPDATE ON payment
FOR EACH ROW
EXECUTE FUNCTION update_trigger();

-- Check DBMS data dictionary to ensure all objects created successfully
SELECT TABLE_NAME FROM information_schema.tables
WHERE table_schema = 'public';
DROP DATABASE IF EXISTS fairfare_db;
CREATE DATABASE fairfare_db;

USE fairfare_db;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE states (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL
);

CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    state_name VARCHAR(100) NOT NULL,
    city_name VARCHAR(100) NOT NULL
);

CREATE TABLE platforms (
    platform_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_name VARCHAR(50)
);

CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_name VARCHAR(100),
    vehicle_type VARCHAR(50),
    vehicle_number VARCHAR(20),
    rating DECIMAL(2,1)
);

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    pickup_location VARCHAR(255),
    drop_location VARCHAR(255),
    vehicle_type VARCHAR(50),
    platform_id INT,
    driver_id INT,
    fare DECIMAL(10,2),
    booking_status VARCHAR(50),
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (platform_id) REFERENCES platforms(platform_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);
INSERT INTO states (state_name) VALUES
('Andhra Pradesh'),
('Arunachal Pradesh'),
('Assam'),
('Bihar'),
('Chhattisgarh'),
('Delhi'),
('Goa'),
('Gujarat'),
('Haryana'),
('Himachal Pradesh'),
('Jharkhand'),
('Karnataka'),
('Kerala'),
('Madhya Pradesh'),
('Maharashtra'),
('Manipur'),
('Meghalaya'),
('Mizoram'),
('Nagaland'),
('Odisha'),
('Punjab'),
('Rajasthan'),
('Sikkim'),
('Tamil Nadu'),
('Telangana'),
('Tripura'),
('Uttar Pradesh'),
('Uttarakhand'),
('West Bengal');
INSERT INTO cities (state_name, city_name) VALUES

-- Andhra Pradesh
('Andhra Pradesh','Visakhapatnam'),
('Andhra Pradesh','Vijayawada'),
('Andhra Pradesh','Guntur'),
('Andhra Pradesh','Nellore'),
('Andhra Pradesh','Tirupati'),
('Andhra Pradesh','Kadapa'),
('Andhra Pradesh','Rajahmundry'),
('Andhra Pradesh','Anantapur'),
('Andhra Pradesh','Chittoor'),
('Andhra Pradesh','Eluru'),
('Andhra Pradesh','Ongole'),

-- Arunachal Pradesh
('Arunachal Pradesh','Itanagar'),
('Arunachal Pradesh','Naharlagun'),
('Arunachal Pradesh','Tawang'),
('Arunachal Pradesh','Ziro'),
('Arunachal Pradesh','Pasighat'),
('Arunachal Pradesh','Bomdila'),
('Arunachal Pradesh','Tezu'),

-- Assam
('Assam','Guwahati'),
('Assam','Dibrugarh'),
('Assam','Silchar'),
('Assam','Jorhat'),
('Assam','Tezpur'),
('Assam','Sivasagar'),
('Assam','Nagaon'),
('Assam','Barpeta'),
('Assam','Tinsukia'),
('Assam','Karimganj'),

-- Bihar
('Bihar','Patna'),
('Bihar','Gaya'),
('Bihar','Muzaffarpur'),
('Bihar','Bhagalpur'),
('Bihar','Darbhanga'),
('Bihar','Purnia'),
('Bihar','Ara'),
('Bihar','Begusarai'),
('Bihar','Katihar'),
('Bihar','Sitamarhi'),
('Bihar','Sasaram'),

-- Chhattisgarh
('Chhattisgarh','Raipur'),
('Chhattisgarh','Bhilai'),
('Chhattisgarh','Korba'),
('Chhattisgarh','Bilaspur'),
('Chhattisgarh','Durg'),
('Chhattisgarh','Raigarh'),

-- Goa
('Goa','Panaji'),
('Goa','Margao'),
('Goa','Vasco da Gama'),
('Goa','Mapusa'),

-- Gujarat
('Gujarat','Ahmedabad'),
('Gujarat','Surat'),
('Gujarat','Vadodara'),
('Gujarat','Rajkot'),
('Gujarat','Gandhinagar'),
('Gujarat','Bhavnagar'),
('Gujarat','Jamnagar'),
('Gujarat','Junagadh'),
('Gujarat','Porbandar'),
('Gujarat','Anand'),

-- Haryana
('Haryana','Gurgaon'),
('Haryana','Hisar'),
('Haryana','Faridabad'),
('Haryana','Panipat'),
('Haryana','Karnal'),
('Haryana','Rohtak'),
('Haryana','Ambala'),
('Haryana','Sonipat'),

-- Himachal Pradesh
('Himachal Pradesh','Shimla'),
('Himachal Pradesh','Dharamshala'),
('Himachal Pradesh','Solan'),
('Himachal Pradesh','Mandi'),
('Himachal Pradesh','Kullu'),
('Himachal Pradesh','Manali'),

-- Jharkhand
('Jharkhand','Ranchi'),
('Jharkhand','Jamshedpur'),
('Jharkhand','Dhanbad'),
('Jharkhand','Bokaro'),
('Jharkhand','Hazaribagh'),
('Jharkhand','Deoghar'),
('Jharkhand','Giridih'),

-- Karnataka
('Karnataka','Bengaluru'),
('Karnataka','Mysore'),
('Karnataka','Mangalore'),
('Karnataka','Hubballi'),
('Karnataka','Belagavi'),
('Karnataka','Dharwad'),
('Karnataka','Kalaburagi'),
('Karnataka','Shivamogga'),

-- Kerala
('Kerala','Kochi'),
('Kerala','Thiruvananthapuram'),
('Kerala','Kozhikode'),
('Kerala','Kollam'),
('Kerala','Thrissur'),
('Kerala','Kannur'),
('Kerala','Alappuzha'),

-- Madhya Pradesh
('Madhya Pradesh','Indore'),
('Madhya Pradesh','Bhopal'),
('Madhya Pradesh','Gwalior'),
('Madhya Pradesh','Jabalpur'),
('Madhya Pradesh','Ujjain'),
('Madhya Pradesh','Sagar'),

-- Maharashtra
('Maharashtra','Mumbai'),
('Maharashtra','Pune'),
('Maharashtra','Nagpur'),
('Maharashtra','Nashik'),
('Maharashtra','Thane'),
('Maharashtra','Aurangabad'),
('Maharashtra','Solapur'),
('Maharashtra','Amravati'),
('Maharashtra','Kolhapur'),
('Maharashtra','Sangli'),
('Maharashtra','Jalgaon'),

-- Odisha
('Odisha','Bhubaneswar'),
('Odisha','Cuttack'),
('Odisha','Rourkela'),
('Odisha','Sambalpur'),
('Odisha','Puri'),
('Odisha','Balasore'),
('Odisha','Berhampur'),

-- Punjab
('Punjab','Chandigarh'),
('Punjab','Ludhiana'),
('Punjab','Amritsar'),
('Punjab','Jalandhar'),
('Punjab','Patiala'),
('Punjab','Bathinda'),
('Punjab','Mohali'),

-- Rajasthan
('Rajasthan','Jaipur'),
('Rajasthan','Jodhpur'),
('Rajasthan','Udaipur'),
('Rajasthan','Ajmer'),
('Rajasthan','Kota'),
('Rajasthan','Bikaner'),
('Rajasthan','Alwar'),
('Rajasthan','Bharatpur'),

-- Tamil Nadu
('Tamil Nadu','Chennai'),
('Tamil Nadu','Coimbatore'),
('Tamil Nadu','Madurai'),
('Tamil Nadu','Tiruchirappalli'),
('Tamil Nadu','Salem'),
('Tamil Nadu','Tirunelveli'),
('Tamil Nadu','Erode'),
('Tamil Nadu','Vellore'),

-- Telangana
('Telangana','Hyderabad'),
('Telangana','Warangal'),
('Telangana','Nizamabad'),
('Telangana','Khammam'),
('Telangana','Karimnagar'),
('Telangana','Mahabubnagar'),

-- Uttar Pradesh
('Uttar Pradesh','Lucknow'),
('Uttar Pradesh','Kanpur'),
('Uttar Pradesh','Agra'),
('Uttar Pradesh','Varanasi'),
('Uttar Pradesh','Noida'),
('Uttar Pradesh','Greater Noida'),
('Uttar Pradesh','Prayagraj'),
('Uttar Pradesh','Ghaziabad'),
('Uttar Pradesh','Meerut'),
('Uttar Pradesh','Gorakhpur'),
('Uttar Pradesh','Mathura'),
('Uttar Pradesh','Aligarh'),
('Uttar Pradesh','Bareilly'),

-- Uttarakhand
('Uttarakhand','Dehradun'),
('Uttarakhand','Haridwar'),
('Uttarakhand','Rishikesh'),
('Uttarakhand','Haldwani'),
('Uttarakhand','Roorkee'),
('Uttarakhand','Nainital'),

-- West Bengal
('West Bengal','Kolkata'),
('West Bengal','Howrah'),
('West Bengal','Durgapur'),
('West Bengal','Siliguri'),
('West Bengal','Asansol'),
('West Bengal','Kharagpur'),

-- Union Territories
('Delhi','New Delhi'),
('Delhi','Connaught Place'),
('Delhi','Dwarka'),
('Delhi','Rohini'),
('Jammu & Kashmir','Srinagar'),
('Jammu & Kashmir','Jammu'),
('Ladakh','Leh'),
('Ladakh','Kargil'),
('Puducherry','Puducherry'),
('Puducherry','Karaikal');

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL,
    city_name VARCHAR(100) NOT NULL
);

INSERT INTO cities (state_name, city_name) VALUES

-- Andhra Pradesh
('Andhra Pradesh','Visakhapatnam'),
('Andhra Pradesh','Vijayawada'),
('Andhra Pradesh','Guntur'),
('Andhra Pradesh','Nellore'),
('Andhra Pradesh','Tirupati'),
('Andhra Pradesh','Kadapa'),
('Andhra Pradesh','Rajahmundry'),
('Andhra Pradesh','Anantapur'),
('Andhra Pradesh','Chittoor'),
('Andhra Pradesh','Eluru'),
('Andhra Pradesh','Ongole'),

-- Arunachal Pradesh
('Arunachal Pradesh','Itanagar'),
('Arunachal Pradesh','Naharlagun'),
('Arunachal Pradesh','Tawang'),
('Arunachal Pradesh','Ziro'),
('Arunachal Pradesh','Pasighat'),
('Arunachal Pradesh','Bomdila'),
('Arunachal Pradesh','Tezu'),

-- Assam
('Assam','Guwahati'),
('Assam','Dibrugarh'),
('Assam','Silchar'),
('Assam','Jorhat'),
('Assam','Tezpur'),
('Assam','Sivasagar'),
('Assam','Nagaon'),
('Assam','Barpeta'),
('Assam','Tinsukia'),
('Assam','Karimganj'),

-- Bihar
('Bihar','Patna'),
('Bihar','Gaya'),
('Bihar','Muzaffarpur'),
('Bihar','Bhagalpur'),
('Bihar','Darbhanga'),
('Bihar','Purnia'),
('Bihar','Ara'),
('Bihar','Begusarai'),
('Bihar','Katihar'),
('Bihar','Sitamarhi'),
('Bihar','Sasaram'),

-- Chhattisgarh
('Chhattisgarh','Raipur'),
('Chhattisgarh','Bhilai'),
('Chhattisgarh','Korba'),
('Chhattisgarh','Bilaspur'),
('Chhattisgarh','Durg'),
('Chhattisgarh','Raigarh'),

-- Goa
('Goa','Panaji'),
('Goa','Margao'),
('Goa','Vasco da Gama'),
('Goa','Mapusa'),

-- Gujarat
('Gujarat','Ahmedabad'),
('Gujarat','Surat'),
('Gujarat','Vadodara'),
('Gujarat','Rajkot'),
('Gujarat','Gandhinagar'),
('Gujarat','Bhavnagar'),
('Gujarat','Jamnagar'),
('Gujarat','Junagadh'),
('Gujarat','Porbandar'),
('Gujarat','Anand'),

-- Haryana
('Haryana','Gurgaon'),
('Haryana','Hisar'),
('Haryana','Faridabad'),
('Haryana','Panipat'),
('Haryana','Karnal'),
('Haryana','Rohtak'),
('Haryana','Ambala'),
('Haryana','Sonipat'),

-- Himachal Pradesh
('Himachal Pradesh','Shimla'),
('Himachal Pradesh','Dharamshala'),
('Himachal Pradesh','Solan'),
('Himachal Pradesh','Mandi'),
('Himachal Pradesh','Kullu'),
('Himachal Pradesh','Manali'),

-- Jharkhand
('Jharkhand','Ranchi'),
('Jharkhand','Jamshedpur'),
('Jharkhand','Dhanbad'),
('Jharkhand','Bokaro'),
('Jharkhand','Hazaribagh'),
('Jharkhand','Deoghar'),
('Jharkhand','Giridih'),

-- Karnataka
('Karnataka','Bengaluru'),
('Karnataka','Mysore'),
('Karnataka','Mangalore'),
('Karnataka','Hubballi'),
('Karnataka','Belagavi'),
('Karnataka','Dharwad'),
('Karnataka','Kalaburagi'),
('Karnataka','Shivamogga'),

-- Kerala
('Kerala','Kochi'),
('Kerala','Thiruvananthapuram'),
('Kerala','Kozhikode'),
('Kerala','Kollam'),
('Kerala','Thrissur'),
('Kerala','Kannur'),
('Kerala','Alappuzha'),

-- Madhya Pradesh
('Madhya Pradesh','Indore'),
('Madhya Pradesh','Bhopal'),
('Madhya Pradesh','Gwalior'),
('Madhya Pradesh','Jabalpur'),
('Madhya Pradesh','Ujjain'),
('Madhya Pradesh','Sagar'),

-- Maharashtra
('Maharashtra','Mumbai'),
('Maharashtra','Pune'),
('Maharashtra','Nagpur'),
('Maharashtra','Nashik'),
('Maharashtra','Thane'),
('Maharashtra','Aurangabad'),
('Maharashtra','Solapur'),
('Maharashtra','Amravati'),
('Maharashtra','Kolhapur'),
('Maharashtra','Sangli'),
('Maharashtra','Jalgaon'),

-- Odisha
('Odisha','Bhubaneswar'),
('Odisha','Cuttack'),
('Odisha','Rourkela'),
('Odisha','Sambalpur'),
('Odisha','Puri'),
('Odisha','Balasore'),
('Odisha','Berhampur'),

-- Punjab
('Punjab','Chandigarh'),
('Punjab','Ludhiana'),
('Punjab','Amritsar'),
('Punjab','Jalandhar'),
('Punjab','Patiala'),
('Punjab','Bathinda'),
('Punjab','Mohali'),

-- Rajasthan
('Rajasthan','Jaipur'),
('Rajasthan','Jodhpur'),
('Rajasthan','Udaipur'),
('Rajasthan','Ajmer'),
('Rajasthan','Kota'),
('Rajasthan','Bikaner'),
('Rajasthan','Alwar'),
('Rajasthan','Bharatpur'),

-- Tamil Nadu
('Tamil Nadu','Chennai'),
('Tamil Nadu','Coimbatore'),
('Tamil Nadu','Madurai'),
('Tamil Nadu','Tiruchirappalli'),
('Tamil Nadu','Salem'),
('Tamil Nadu','Tirunelveli'),
('Tamil Nadu','Erode'),
('Tamil Nadu','Vellore'),

-- Telangana
('Telangana','Hyderabad'),
('Telangana','Warangal'),
('Telangana','Nizamabad'),
('Telangana','Khammam'),
('Telangana','Karimnagar'),
('Telangana','Mahabubnagar'),

-- Uttar Pradesh
('Uttar Pradesh','Lucknow'),
('Uttar Pradesh','Kanpur'),
('Uttar Pradesh','Agra'),
('Uttar Pradesh','Varanasi'),
('Uttar Pradesh','Noida'),
('Uttar Pradesh','Greater Noida'),
('Uttar Pradesh','Prayagraj'),
('Uttar Pradesh','Ghaziabad'),
('Uttar Pradesh','Meerut'),
('Uttar Pradesh','Gorakhpur'),
('Uttar Pradesh','Mathura'),
('Uttar Pradesh','Aligarh'),
('Uttar Pradesh','Bareilly'),

-- Uttarakhand
('Uttarakhand','Dehradun'),
('Uttarakhand','Haridwar'),
('Uttarakhand','Rishikesh'),
('Uttarakhand','Haldwani'),
('Uttarakhand','Roorkee'),
('Uttarakhand','Nainital'),

-- West Bengal
('West Bengal','Kolkata'),
('West Bengal','Howrah'),
('West Bengal','Durgapur'),
('West Bengal','Siliguri'),
('West Bengal','Asansol'),
('West Bengal','Kharagpur'),

-- Union Territories
('Delhi','New Delhi'),
('Delhi','Connaught Place'),
('Delhi','Dwarka'),
('Delhi','Rohini'),
('Jammu & Kashmir','Srinagar'),
('Jammu & Kashmir','Jammu'),
('Ladakh','Leh'),
('Ladakh','Kargil'),
('Puducherry','Puducherry'),
('Puducherry','Karaikal');

INSERT INTO platforms (platform_name) VALUES
('Uber'),
('Ola'),
('Rapido'),
('inDrive'),
('Savaari'),
('Meru');

INSERT INTO drivers (driver_name,vehicle_type,vehicle_number,rating) VALUES
('Ram Sharma','Sedan','MH12AB1234',4.6),
('Amit Verma','Mini','DL01XY5678',4.4),
('Rakesh Patel','SUV','MP09PQ9988',4.7),
('Vishal Dubey','Bike','MP09TD8288',4.5),
('Raj Khare','SUV','MP17CB5240',4.0),
('Vinod Bhatt','Auto','MP17PQ7588',4.9);

INSERT INTO users (full_name,email,password) VALUES
('Rahul Sharma','rahul@gmail.com','123456');


SHOW TABLES;


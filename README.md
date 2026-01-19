# Seller Product API -- Laravel Project

Project Name: seller-product-api\
Company: Prominno\
Email: info@prominno.com\
Website: www.prominno.com

## Database Details

Database Name: seller_product_db

## Default Login Credentials

### Admin Login

Email: admin@test.com
Password: password
Role: admin

### Seller Login

Email: seller@test.com
Password: password
Role: seller

## Local URL

http://127.0.0.1:8000/dashboard.php

## Admin APIs

1.  Admin Login API\
    POST /api/admin/login

2.  Create Seller API\
    POST /api/admin/create-seller

Fields:\
Name, Email, Mobile No, Country, State, Skills (Multiple), Password

3.  Seller Listing API\
    GET /api/admin/sellers

Pagination Enabled

## Seller APIs

1.  Seller Login API\
    POST /api/seller/login

2.  Add Product API\
    POST /api/seller/add-product

Fields:\
Product Name\
Product Description\
Brands (Multiple)

Brand Fields:\
Brand Name\
Detail\
Image\
Price

3.  Product Listing API\
    GET /api/seller/products

Only authenticated seller products shown

4.  Product PDF View\
    GET /api/seller/product-pdf/{id}

PDF Includes:\
Product Name\
Product Description\
Brand Name\
Brand Image\
Brand Price\
Total Price

5.  Delete Product API\
    DELETE /api/seller/delete-product/{id}

## HTTP Status Codes

200 Success\
201 Created\
400 Validation Error\
401 Unauthorized\
403 Forbidden\
404 Not Found\
500 Server Error

## Setup Steps

1.  composer install\
2.  cp .env.example .env\
3.  php artisan key:generate\
4.  Import seller_product_db.sql\
5.  php artisan serve

## UI Reference

https://reactinterviewtask.codetentaclestechnologies.in/

## Git Repository

Add Your Repo Link Here

---

Developed For Prominno\
info@prominno.com\
www.prominno.com

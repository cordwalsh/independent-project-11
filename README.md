
#### Marios,

#### By Cord Walsh

## Description

This is a database of weed products. You can add products and reviews. As well as delete and update.

## Setup/Installation Requirements
clone this repository

Enter project root directory and type "bundle install" to install all necessary gems.

Type "rake db:create" to create the databases.

Type "rake db:seed" to seed the products and reviews


## Specs

| Behavior | Route Input | Output |
| ------------- |:-------------:| -----:|
| GET all products | localhost:3000/products | Returns all products |
| GET all product reviews | localhost:3000/products/:product_id/reviews/:id| Returns all product reviews |

| POST a product | localhost:3000/products | Create a new product |
| POST a product review | localhost:3000/products/:product_id/reviews | Create a new review |

| UPDATE a product | localhost:3000/products/:id | Updates product |
| UPDATE a product review | localhost:3000/products/:product_id/reviews/:id| Updates review |

| DELETE a product | localhost:3000/products/:id | Deletes product off the list |
| DELETE a product review | localhost:3000/products/:product_id/reviews/:id| Deletes review off the list |



## Support and contact details

contact at cordmwalsh@gmail.com
Github at https://github.com/cordwalsh

## Technologies Used

Ruby and Rails, 

Copyright (c) 2019 Cord Walsh

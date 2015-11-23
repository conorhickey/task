# encoding: utf-8
Gear.delete_all
Student.delete_all
Admin.delete_all

Gear.create!(owner: 'Conor Hickey', category:'Boat', brand:'Blistick', model:'Rad 180',
size:'Medium',description:'Red and scratched',borrow:'No',selling:'Yes' ,price: 450,image: 'git.jpg')
Gear.create!(owner: 'Conor Hickey', category:'BA/PFD', brand:'Stohlquist', model:'X-Tract',
size:'Large',description:'Red and worn',borrow:'Yes',selling:'No', price: 50,image: 'ba.jpg')
Gear.create!(owner: 'Conor Hickey', category:'Paddles', brand:'Wenrer', model:'Players',
size:'194 0s',description:'Orange Glass, Black Carbon Shaft',borrow:'No',selling:'No', price: 200,image: 'paddle.jpeg')
Gear.create!(owner: 'Conor Hickey', category:'Safety', brand:'Shread Ready', model:'Standard',
size:'Variable',description:'Steel Grey',borrow:'No',selling:'Yes',image: 'sr2.jpg')
Gear.create!(owner: 'Conor Hickey', category:'Dry Gear', brand:'Kokatak/Jackson', model:'Hydrus 3l',
size:'Large',description:'Orange and yellow',borrow:'Yes',selling:'Yes', price: 100,image: '3l.jpg')

Gear.create!(owner: 'Joe Smith', category:'Boat', brand:'Pyranha', model:'Burn',
size:'Large',description:'Blue and new',borrow:'No',selling:'Yes' ,price: 850,image: 'boat.jpg')
Gear.create!(owner: 'Joe Smith', category:'Safety', brand:'Shread Ready', model:'Standard Fullface',
size:'Variable',description:'Steel Grey',borrow:'Yes',selling:'No', price: 70,image: 'sr.jpg')
Gear.create!(owner: 'Joe Smith', category:'Paddles', brand:'H2O', model:'Team',
size:'201 30s',description:'Green',borrow:'No',selling:'No', price: 200,image: 'h2o.jpg')


Gear.create!(owner: 'Mark Lewis', category:'Boat', brand:'Jackson', model:'Zen',
size:'Medium',description:'Red',borrow:'No',selling:'Yes' ,price: 1450,image: 'zen.jpg')
Gear.create!(owner: 'Mark Lewis', category:'Paddles', brand:'AT', model:'AT2',
size:'197 0s',description:'black',borrow:'No',selling:'No', price: 200,image: 'at.jpg')

Gear.create!(owner: 'Club', category:'Boat', brand:'Pyrhana', model:'burn',
size:'Small',description:'Yellow',borrow:'No',selling:'no' ,image: 'b1.jpeg')
Gear.create!(owner: 'Club', category:'Boat', brand:'Pyrhana', model:'burn',
size:'Medium',description:'Green',borrow:'No',selling:'no' ,image: 'b2.jpeg')
Gear.create!(owner: 'Club', category:'Boat', brand:'Pyrhana', model:'burn',
size:'Large',description:'Red',borrow:'No',selling:'no' ,image: 'b3.jpeg')
Gear.create!(owner: 'Club', category:'Safety', brand:'WRSI', model:'Standard ',
size:'Variable',description:'Black',borrow:'No',selling:'No' ,image: 'w1.jpeg')
Gear.create!(owner: 'Club', category:'Safety', brand:'WRSI', model:'Standard ',
size:'Variable',description:'Red',borrow:'No',selling:'No', image: 'w2.jpeg')
Gear.create!(owner: 'Club', category:'Safety', brand:'WRSI', model:'Standard ',
size:'Variable',description:'Grey Camo',borrow:'No',selling:'No' ,image: 'w3.jpeg')

Student.create!(name: 'Joe Smith',username: 'g5324806',other:'GMIT',d: '1995-06-04',e: '097 2833442')
Student.create!(name: 'Conor Hickey',username: '12324806',other:'NUIG',d: '1994-01-07',e: '097 2830148')
Student.create!(name: 'Mark Lewis',username: '12312376',other:'NUIG',d: '1993-10-11',e: '097 6223148')
Student.create!(name: 'Club')

Admin.create!(name:'Conor',password: 'Hickey')

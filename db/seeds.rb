
u1 = User.create(name: "Tyler",  email: "tahbristol@gmail.com",  password: "password1")
u2 = User.create(name: "Samira",  email: "Samira@gmail.com",  password: "password2")
u3 = User.create(name: "Ali",  email: "Ali@gmail.com",  password: "password3")
u4 = User.create(name: "Sufyan",  email: "Sufyan@gmail.com",  password: "password4")

r1 = Request.create(vendor: "Fischer",  item: "Cell Culture Media")
r2 = Request.create(vendor: "CDW",  item: "firewire")
r3 = Request.create(vendor: "Panasonic",  item: "Fridge")

r1.user = u1
r1.save
r2.user = u2
r2.save
r3.user = u3
r3.save

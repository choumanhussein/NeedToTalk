require 'faker'


user = User.create(name: "admin", email: "admin@admin.com", password: "123456", password_confirmation: "123456", admin: true)

user = User.create(name: "guest_a", email: "guest_a@example.com", password: "guest_a", password_confirmation: "guest_a")

user = User.create(name: "guest_b", email: "guest_b@example.com", password: "guest_b", password_confirmation: "guest_b")

user = User.create(name: "admin", email: "admin_guest@admin.com", password: "123456", password_confirmation: "123456", admin: true)

user = User.create(name: "Patrick", email: "Patrick@Patrick.com", password: "123456", password_confirmation: "123456", admin: true)

user1 = User.create!(
  email: "bahfousa@example.com",
  password:"123456",
  admin: false,
)

user2 = User.create!(
  email: "bahfousa1@example.com",
  password:"123456",
  admin: false,
)
user3 = User.create!(
  email: "bahfousa2@example.com",
  password:"123456",
  admin: false,
)
user4 = User.create!(
  email: "bahfousa3@example.com",
  password:"123456",
  admin: false,
)
user5 = User.create!(
  email: "bahfousa4@example.com",
  password:"123456",
  admin: true,
)



conversation1 = Conversation.create!(
 sender_id: user1.id,
 recipient_id: user2.id
)

conversation2 = Conversation.create!(
 sender_id:  user1.id,
 recipient_id: user3.id
)
conversation3 = Conversation.create!(
 sender_id:  user1.id,
 recipient_id: user4.id
)

conversation4 = Conversation.create!(
 sender_id:  user1.id,
 recipient_id: user5.id
)
conversation5 = Conversation.create!(
 sender_id:  user2.id,
 recipient_id: user3.id
)

Message.create!(
  conversation_id: conversation1.id,
  user_id: user1.id,
  body:"How are you ?",
  read: true
)
Message.create!(
  conversation_id: conversation1.id,
  user_id: user2.id,
  body:"Hello There !",
  read: false
)
Message.create!(
  conversation_id: conversation2.id,
  user_id: user1.id,
  body:"Hey !",
  read: true
)
Message.create!(
  conversation_id: conversation2.id,
  user_id: user3.id,
  body:"Hola !",
  read: false
)
Message.create!(
  conversation_id: conversation3.id,
  user_id: user1.id,
  body:"Are You There ?",
  read: true
)
Blog.create!(
  user_id: user1.id,
  content:"Does anyone wants to talk ?",
)
Blog.create!(
  user_id: user2.id,
  Content:"Hello There !",
)
Blog.create!(
  user_id: user1.id,
  content:"Hey Fam !",
)
Blog.create!(
  user_id: user3.id,
  content:"Are You Happy ?!",
)
Blog.create!(
  user_id: user1.id,
  content:"Do You want to tell me about your troubles ?",
)

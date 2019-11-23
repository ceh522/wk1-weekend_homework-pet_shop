# Question 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
  return name
end

#  Question 2
def total_cash(pet_shop)
  sum = pet_shop[:admin][:total_cash]
  return sum
end

# Questions 3 and 4
def add_or_remove_cash(pet_shop, alteration_to_cash)
  cash = pet_shop[:admin][:total_cash] += alteration_to_cash
end

# Question 5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# Question 6
def increase_pets_sold(pet_shop, number_of_pets_sold)
  return pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

#Question 7

def test_stock_count
  count = stock_count(@pet_shop)
  assert_equal(6, count)
end


# @customers = [
#   {
#     name: "Alice",
#     pets: [],
#     cash: 1000
#   },
#   {
#     name: "Bob",
#     pets: [],
#     cash: 50
#   },
#   {
#     name: "Jack",
#     pets: [],
#     cash: 100
#   }
# ]
#
# @new_pet = {
#   name: "Bors the Younger",
#   pet_type: :cat,
#   breed: "Cornish Rex",
#   price: 100
# }
#
# @pet_shop = {
#   pets: [
#     {
#       name: "Sir Percy",
#       pet_type: :cat,
#       breed: "British Shorthair",
#       price: 500
#     },
#     {
#       name: "King Bagdemagus",
#       pet_type: :cat,
#       breed: "British Shorthair",
#       price: 500
#     },
#     {
#       name: "Sir Lancelot",
#       pet_type: :dog,
#       breed: "Pomsky",
#       price: 1000,
#     },
#     {
#       name: "Arthur",
#       pet_type: :dog,
#       breed: "Husky",
#       price: 900,
#     },
#     {
#       name: "Tristan",
#       pet_type: :dog,
#       breed: "Basset Hound",
#       price: 800,
#     },
#     {
#       name: "Merlin",
#       pet_type: :cat,
#       breed: "Egyptian Mau",
#       price: 1500,
#     }
#   ],
#   admin: {
#     total_cash: 1000,
#     pets_sold: 0,
#   },
#   name: "Camelot of Pets"
# }
# end

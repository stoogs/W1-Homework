# customer_name = @customers[0][:name]
# customer_cash = @customers[0][:cash]
# customer_pets = @customers[0][:pets]
#
# admin = @pet_shop[:admin]
# shop_name = @pet_shop[:name]
# pets_all = @pet_shop[:pets]
# pets_type = @pet_shop[:pets][0][:pet_type]
# pets_name = @pet_shop[:pets][0][:pet_name]
# pets_breed = @pet_shop[:pets][0][:pet_breed]
# pets_price = @pet_shop[:pets][0][:pet_price]

#1
def pet_shop_name(name)
return @pet_shop[:name]
end
#2
def total_cash(pet_shop)
return pet_shop[:admin][:total_cash]
end
#3 & 4
def add_or_remove_cash(pet_shop, cash)
return pet_shop[:admin][:total_cash] += cash
end
#5
def pets_sold(pet_shop)
return pet_shop[:admin][:pets_sold]
end
#6
def increase_pets_sold(pet_shop, pets_sold)
return pet_shop[:admin][:pets_sold] += pets_sold
end
#7
def stock_count(pet_shop)
return pet_shop[:pets].length
end
#8
def pets_by_breed(pet_shop, breed)
  breed_count = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_count << pet[:breed]
    end
  end
  return breed_count
end
#9
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end
#11
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
    pet_shop[:pets].delete(pet)
    end
  end
 end
#12
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].length
end
#13
def customer_cash(customers)
cash = customers[:cash]
return cash
end
#14
def remove_customer_cash(customer, cash_amount)
customer[:cash] -= cash_amount
return customer[:cash]
end
#15
def customer_pet_count(customer)
return customer[:pets].length
end
#16
def add_pet_to_customer(customer, new_pet)
return customer[:pets] << new_pet
end

#1+2a

def customer_can_afford_pet(customer, new_pet)
if customer[:cash] >= new_pet[:price]
  return true
else
return false
end
end


#3a
def sell_pet_to_customer(pet_shop, pet, customer)
if customer[:cash] >= pet[:price]
customer[:pets] << pet
pet_shop[:admin][:pets_sold] += 1
customer[:cash] -= pet[:price]
pet_shop[:admin][:total_cash] += pet[:price]
end
end

def sell_pet_to_customer(pet_shop, pet, customer)

end

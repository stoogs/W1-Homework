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


def pet_shop_name(name)
return @pet_shop[:name]
end

def total_cash(pet_shop)
return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, add_cash)
return pet_shop[:admin][:total_cash] += add_cash

end

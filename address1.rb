
def format_address(hash_address)

  address = []

  address.push([hash_address["subpremise"], hash_address["house_name"]].compact.join(',') << ",")

  address.push([hash_address["house_number"], hash_address["street_line_1"]].compact.join(',') << ",")

  address.push(hash_address["street_line_2"] << ",") if hash_address["street_line_2"]

  address.push(hash_address["town_or_city"] << ",")

  address.push(hash_address["region"] << ",") if hash_address["region"]

  address.push(hash_address["postcode"])

  address

end

hash = {

    "subpremise" => "Apt 6",

    "house_number" => "22",

    "house_name" => nil,

    "street_line_1" => "Bailey Rd",

    "street_line_2" => nil,

    "town_or_city" => "Sale",

    "region" => "Greater Manchester",

    "postcode" => "M33 1AX"

}


address = format_address(hash)

address.each do |add|

  puts add

end
test1 = {
    "subpremise" => "Apt 6",
    "house_number" => "22",
    "house_name" => nil,
    "street_line_1" => "Bailey Rd",
    "street_line_2" => nil,
    "town_or_city" => "Sale",
    "region" => "Greater Manchester",
    "postcode" => "M33 1AX"
}

test2 = {
    "subpremise" => "",
    "house_number" => "22",
    "house_name" => "ddd",
    "street_line_1" => "Bailey Rd",
    "street_line_2" => "222",
    "town_or_city" => "Sale",
    "region" => "Greater Manchester",
    "postcode" => "M33 1AX"
}

test3 = {
    "subpremise" => "",
    "house_number" => "2",
    "house_name" => nil,
    "street_line_1" => "Bailey Rd",
    "street_line_2" => "fff",
    "town_or_city" => "Sale",
    "region" => "Greater Manchester",
    "postcode" => "M33 1AX"
}

test4 = {
    "subpremise" => "Apt 6",
    "house_number" => "22",
    "house_name" => nil,
    "street_line_1" => "Bailey Rd",
    "street_line_2" => nil,
    "town_or_city" => "Sale",
    "region" => "Greater Manchester",
    "postcode" => "M33 1AX"
}

def showAddress(data, line_break = "<br>")
  address = []
  line_breaked = false
  unless data["subpemise"].nil?
    address.push data["subpemise"]
  end
  unless data["house_name"].nil?
    address.push data["house_name"]
  end
  unless data["house_number"].nil?
    if address.length > 0
      line_breaked = true
      address.push line_break+data["house_number"]
    else
      address.push line_break+data["house_number"]
    end
  end
  unless data["street_line_1"].nil?
    if line_break
      address.push data["street_line_1"]
    else
      if address.length > 0
        address.push line_break+data["street_line_1"]
      else
        address.push data["street_line_1"]
      end
    end
  end
  unless data["street_line_2"].nil?
    address.push line_break+data["street_line_2"]
  end
  unless data["town_or_city"].nil?
    address.push line_break+data["town_or_city"]
  end
  unless data["region"].nil?
    address.push line_break+data["region"]
  end
  unless data["postcode"].nil?
    address.push line_break+data["postcode"]
  end
  return address.join(', ')
end

p showAddress(test1, "<br>")
p showAddress(test2, "<br>")
p showAddress(test3, "<br>")
p showAddress(test4, "<br>")
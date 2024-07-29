require "test_helper"

class ProductTest < ActiveSupport::TestCase

  def new_product(title, description, image_url, price)
    Product.new(title: title,
                description: description,
                image_url: image_url,
                price: price)
  end

  test "Product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "Product price must be greate than or equal to 0.01" do
    product = new_product("Coffeebeans", "Freshly roasted!", "coffeebeans.jpg", 0)

    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]
    
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0.01
    assert product.valid?

    product.price = 1
    assert product.valid?
  end

  test "image url" do
    ok = %w{ coffee.gif coffee.jpg coffee.png COFFEE.GIF COFFEE.Jpg http://a.b.c/x/y/z/coffee.gif }
    bad = %w{ coffee.doc coffee.gif/more coffee.gif.more }

    ok.each do |image_url|
      assert new_product("Coffeebeans", "Freshly roasted!", image_url, 1).valid?, "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_product("Coffeebeans", "Freshly roasted!", image_url, 1).invalid?, "#{image_url} must be invalid"
    end
  end

  test "product is not valid without an unique title" do
    product = Product.new(title: products(:juhlamokka).title,
                          description: "roasted to perfection",
                          price: 12,
                          image_url: "juhlamokka.jpg")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end

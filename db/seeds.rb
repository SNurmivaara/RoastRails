# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.delete_all

Product.create!(title: 'Kharisma Dark Roast',
  description:
    %{<p>
      <em> Robust, full-bodied, and rich in flavor</em>
      Kharisma Dark Roast is a blend of the finest Arabica beans from around the world.
      </p>},
  image_url: 'kharisma_dark_roast.jpg',
  price: 12.95)

  Product.create!(title: 'Juhlamokka Medium Roast',
    description:
      %{<p>
        <em> Smooth, aromatic, and slightly fruity</em>
        Juhlamokka Medium Roast offers a unique blend of medium-roasted beans, perfect for any time of the day.
        </p>},
    image_url: 'juhlamokka.jpg',
    price: 10.95)
  
  Product.create!(title: 'Saludo Light Roast',
    description:
      %{<p>
        <em> Crisp, clean, and refreshing</em>
        Saludo Light Roast is crafted with care to highlight the natural sweetness and acidity of its high-quality beans.
        </p>},
    image_url: 'saludo.jpg',
    price: 9.95)
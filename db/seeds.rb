# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = %w[art illustration print web]

mona_lisa = {
  :title => "Mona Lisa",
  :description => %q[The Mona Lisa (La Gioconda or La Joconde, or Portrait of Lisa Gherardini, wife of Francesco del Giocondo) is a half-length portrait of a woman by the Italian artist Leonardo da Vinci, which has been acclaimed as "the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world." The painting, thought to be a portrait of Lisa Gherardini, the wife of Francesco del Giocondo, is in oil on a poplar panel, and is believed to have been painted between 1503 and 1506. It was acquired by King Francis I of France and is now the property of the French Republic, on permanent display at the Musee du Louvre in Paris. The ambiguity of the subject's expression, frequently described as enigmatic, the monumentality of the composition, the subtle modeling of forms and the atmospheric illusionism were novel qualities that have contributed to the continuing fascination and study of the work.],
  :image_1 => 'mona_lisa_1.jpg',
  :image_2 => 'mona_lisa_2.jpg',
  :image_3 => 'mona_lisa_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

the_starry_night = {
  :title => "The Starry Night",
  :description => %q[The Starry Night (Dutch: De sterrennacht) is a painting by the Dutch post-impressionist artist Vincent van Gogh. The painting depicts the view outside his sanitarium room window at Saint-Remy-de-Provence (located in southern France) at night, although it was painted from memory during the day. It has been in the permanent collection of the Museum of Modern Art in New York City, part of the Lillie P. Bliss Bequest, since 1941. The painting is among Van Gogh's most well known works.],
  :image_1 => 'the_starry_night_1.jpg',
  :image_2 => 'the_starry_night_2.jpg',
  :image_3 => 'the_starry_night_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

the_last_supper = {
  :title => "The Last Supper",
  :description => %q[The Last Supper (Italian: Il Cenacolo or L'Ultima Cena) is a late 15th century mural painting by Leonardo da Vinci in the refectory of the Convent of Santa Maria della Grazie, Milan. The work is presumed to have been commenced around 1495 and was commissioned as part of a scheme of renovations to the church and its convent buildings by Leonardo's patron Ludovico Sforza, Duke of Milan. The painting represents the scene of The Last Supper of Jesus with his disciples, as it is told in the Gospel of John, 13:21. Leonardo has depicted the consternation that occurred among the Twelve Disciples when Jesus announced that one of them would betray him.],
  :image_1 => 'the_last_supper_1.jpg',
  :image_2 => 'the_last_supper_2.jpg',
  :image_3 => 'the_last_supper_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length)).join(" ")
}

the_creation_of_adam = {
  :title => "The Creation of Adam",
  :description => %q[The Creation of Adam is arguably the most famous section of Michelangelo's fresco Sistine Chapel ceiling painted circa 1511-1512. It is traditionally thought to illustrate the Biblical creation narrative from the Book of Genesis in which God breathes life into Adam, the first man. Chronologically the fourth in the series of panels depicting episodes from Genesis on the Sistine ceiling, it was among the last to be completed. It is the most well-known of the Sistine Chapel fresco panels, and its fame as a piece of art is rivaled only by the Mona Lisa by Leonardo da Vinci. The image of the near-touching hands of God and Adam has become one of the single most iconic images of humanity and has been reproduced in countless imitations and parodies. Along with Leonardo da Vinci's The Last Supper, The Creation of Adam and the other Sistine Chapel panels are the most replicated religious paintings of all time.],
  :image_1 => 'the_creation_of_adam_1.jpg',
  :image_2 => 'the_creation_of_adam_2.jpg',
  :image_3 => 'the_creation_of_adam_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

girl_with_a_pearl_earring = {
  :title => "Girl with a Pearl Earring",
  :description => %q[The painting Girl with a Pearl Earring (Dutch: Het Meisje met de Parel) is one of Dutch painter Johannes Vermeer's masterworks and, as the name implies, uses a pearl earring for a focal point. Today the painting is kept in the Mauritshuis gallery in The Hague. It is sometimes referred to as "the Mona Lisa of the North" or "the Dutch Mona Lisa".],
  :image_1 => 'girl_with_a_pearl_earring_1.jpg',
  :image_2 => 'girl_with_a_pearl_earring_2.jpg',
  :image_3 => 'girl_with_a_pearl_earring_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

the_scream = {
  :title => "The Scream",
  :description => %q[The Scream (Norwegian: Skrik) is the popular name given to each of four versions of a composition, created as both paintings and pastels, by the Expressionist artist Edvard Munch between 1893 and 1910. Der Schrei der Natur (The Scream of Nature) is the title Munch gave to these works, all of which show a figure with an agonized expression against a landscape with a tumultuous orange sky. The landscape in the background is the Oslofjord, viewed from Ekeberg, Oslo, Norway.],
  :image_1 => 'the_scream_1.jpg',
  :image_2 => 'the_scream_2.png',
  :image_3 => 'the_scream_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

the_night_watch = {
  :title => "The Night Watch",
  :description => %q[The Night Watch or The Shooting Company of Frans Banning Cocq (Dutch: De Nachtwacht) is the common name of one of the most famous works by Dutch painter Rembrandt van Rijn. The painting may be more properly titled The Company of captain Frans Banning Cocq and lieutenant Willem van Ruytenburch preparing to march out. It is prominently displayed in the Rijksmuseum, Amsterdam, the Netherlands, as the best known painting in its collection. The Night Watch is one of the most famous paintings in the world.],
  :image_1 => 'the_night_watch_1.jpg',
  :image_2 => 'the_night_watch_2.jpg',
  :image_3 => 'the_night_watch_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

water_lilies = {
  :title => "Water Lilies",
  :description => %q[Water Lilies is a series of approximately 250 oil paintings by French Impressionist Claude Monet (1840-1926). The paintings depict Monet's flower garden at Giverny and were the main focus of Monet's artistic production during the last thirty years of his life. Many of the works were painted while Monet suffered from cataracts.],
  :image_1 => 'water_lilies_1.jpg',
  :image_2 => 'water_lilies_2.jpg',
  :image_3 => 'water_lilies_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

the_birth_of_venus = {
  :title => "The Birth of Venus",
  :description => %q[The Birth of Venus (Italian: Nascita di Venere) is a 1486 painting by Sandro Botticelli. Botticelli was commissioned to paint the work by the Medici family of Florence, specifically Lorenzo de' Medici. It depicts the goddess Venus, having emerged from the sea as a fully grown woman, arriving at the sea-shore (which is related to the Venus Anadyomene motif).The painting is on display at the Uffizi Gallery in Florence, Italy.],
  :image_1 => 'the_birth_of_venus_1.jpg',
  :image_2 => 'the_birth_of_venus_2.jpg',
  :image_3 => 'the_birth_of_venus_3.jpg',
  :tags => "photo " + tags.sample(rand(tags.length) + 1).join(" ")
}

projects = [mona_lisa, the_starry_night, the_last_supper, the_creation_of_adam, girl_with_a_pearl_earring, the_scream, the_night_watch, water_lilies, the_birth_of_venus]
Project.destroy_all
Project.create projects
puts "#{Project.count} rows in the projects table."

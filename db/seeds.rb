Category.destroy_all
Artwork.destroy_all

puts "Starting seed deployment..."
puts "Creating categories"

african = Category.create!(
  name: "African Art",
  theme: "Culture",
)
egyptian = Category.create!(
  name: "Egyptian Art",
  theme: "Culture",
)
eastasian = Category.create!(
  name: "East Asian Art",
  theme: "Culture",
)
european = Category.create!(
  name: "European Art",
  theme: "Culture",
)
preco = Category.create!(
  name: "Pre-Columbian Art",
  theme: "Culture",
)
met = Category.create!(
  name: "Metropolitan Museum of Art",
  theme: "Museum",
)
cleveland = Category.create!(
  name: "Cleveland Museum of Art",
  theme: "Museum",
)
chicago = Category.create!(
  name: "Art Institute of Chicago",
  theme: "Museum",
)
british = Category.create!(
  name: "British Museum",
  theme: "Museum",
)
assemblée = Category.create!(
  name: "Bibliothèque de l'Assemblée nationale, Paris",
  theme: "Museum",
)
insitu = Category.create!(
  name: "in situ",
  theme: "Museum",
)
painting = Category.create!(
  name: "Painting",
  theme: "Technique",
)
sculpture = Category.create!(
  name: "Sculpture",
  theme: "Technique",
)
architecture = Category.create!(
  name: "Architecture",
  theme: "Technique",
)
decorative= Category.create!(
  name: "Decorative Arts",
  theme: "Technique",
)

puts "creating artworks"

artwork1 = Artwork.create!(
  name: "Giza pyramid complex",
  artist: "Hémiounou",
  latitude: 29.9758333,
  longitude: 31.130277500000002,
  creation_date: -2520,
  dimensions: "H.: 139 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Giza_pyramid_complex",
  attribution_licence: "Par Ricardo Liberato — All Gizah Pyramids, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=2258048",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620097/All_Gizah_Pyramids_vpevqu.jpg").open
artwork1.photo.attach(io: file, filename: "egyptianarchi.png", content_type: "image/png")

artwork1.categories = [egyptian, architecture, insitu]

artwork2 = Artwork.create!(
  name: "Senwosret III as a Sphinx",
  artist: "anonyme",
  latitude: 25.7177778,
  longitude: 32.657777777777774,
  creation_date: -1860,
  dimensions: "H.: 42 cm",
  materials: "Gneiss",
  info_link: "https://www.metmuseum.org/art/collection/search/544186",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DP247658_lmbrbu.jpg").open
artwork2.photo.attach(io: file, filename: "egyptiansculpture.png", content_type: "image/png")

artwork2.categories = [egyptian, sculpture, met]

artwork3 = Artwork.create!(
  name: "Tomb of Nebamon",
  artist: "anonyme",
  latitude: 25.7376127,
  longitude: 32.6073986,
  creation_date: -1350,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Tomb_of_Nebamun",
  attribution_licence: "Par anonyme — Gardner's Art Through the Ages, 12th edition, p. 77, Domaine public, https://commons.wikimedia.org/w/index.php?curid=4550408",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620103/Nebamun_tomb_fresco_dancers_and_musicians_e2fiku.png").open
artwork3.photo.attach(io: file, filename: "egyptianpainting.png", content_type: "image/png")

artwork3.categories = [egyptian, painting, british]

artwork4 = Artwork.create!(
  name: "Hippopotamus (William)",
  artist: "anonyme",
  latitude: 27.4088889,
  longitude: 30.710555555555555,
  creation_date: -1920,
  dimensions: "H.: 11 cm",
  materials: "faience",
  info_link: "https://www.metmuseum.org/art/collection/search/544227",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DP248993_hwyqpd.jpg").open
artwork4.photo.attach(io: file, filename: "egyptiandeco.png", content_type: "image/png")

artwork4.categories = [egyptian, decorative, met]

artwork5 = Artwork.create!(
  name: "Self-Portrait with a Straw Hat",
  artist: "Vincent van Gogh",
  latitude: 48.85335676330977,
  longitude: 2.34886825787723,
  creation_date: 1887,
  dimensions: "41x32 cm",
  materials: "Oil on canvas",
  info_link: "https://www.metmuseum.org/art/collection/search/436532",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620099/DT1502_cropped2_amqdim.jpg").open
artwork5.photo.attach(io: file, filename: "europeinture.png", content_type: "image/png")

artwork5.categories = [european, painting, met]

artwork6 = Artwork.create!(
  name: "the Thinker",
  artist: "Auguste Rodin",
  latitude: 48.813690185546875,
  longitude: 2.34886825787723,
  creation_date: 1880,
  dimensions: "H.: 70 cm",
  materials: "bronze",
  info_link: "https://www.metmuseum.org/art/collection/search/191811",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DP-13618-012_xm6gip.jpg").open
artwork6.photo.attach(io: file, filename: "eurosculpture.png", content_type: "image/png")

artwork6.categories = [european, sculpture, met]

artwork7 = Artwork.create!(
  name: "Eiffel Tower",
  artist: "Stéphen Sauvestre, Gustave Eiffel, Maurice Koechlin, Emile Nouguier",
  latitude: 48.8582599  ,
  longitude: 2.2945006  ,
  creation_date: 1889,
  dimensions: "H.: 330 m",
  materials: "puddled steel",
  info_link: "https://en.wikipedia.org/wiki/Eiffel_Tower",
  attribution_licence: "Par Benh LIEU SONG — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6926930",

)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620103/Tour_Eiffel_Wikimedia_Commons_gujc9h.jpg").open
artwork7.photo.attach(io: file, filename: "euroarchi.png", content_type: "image/png")

artwork7.categories = [european, architecture, insitu]

artwork8 = Artwork.create!(
  name: "Commode",
  artist: "André Charles Boulle",
  latitude: 48.8533567633097,
  longitude: 2.34886825787723,
  creation_date: 1715,
  dimensions: "H.: 88 cm",
  materials: "Walnut veneered with ebony, marquetry of engraved brass and tortoiseshell, gilt-bronze mounts, verd antique marble",
  info_link: "https://www.metmuseum.org/art/collection/search/206990",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732631986/DP108742_fqqket.jpg").open
artwork8.photo.attach(io: file, filename: "eurodeco.png", content_type: "image/png")

artwork8.categories = [european, decorative, met]

artwork9 = Artwork.create!(
  name: "Funerary mask ",
  artist: "anonyme",
  latitude: -6.7716146 ,
  longitude: -79.8387175,
  creation_date: 1000,
  dimensions: "H.: 29 cm",
  materials: "Gold, silver-copper alloy, cinnabar paint",
  info_link: "https://www.metmuseum.org/art/collection/search/309959",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DT1274_hxln8n.jpg").open
artwork9.photo.attach(io: file, filename: "precodeco.png", content_type: "image/png")

artwork9.categories = [preco, decorative, met]

artwork10 = Artwork.create!(
  name: "Machu Pichu",
  artist: "anonyme",
  latitude: -13.1633333  ,
  longitude: -72.54555527777778,
  creation_date: 1455,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Machu_Picchu",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620097/Before_Machu_Picchu_corgsv.jpg").open
artwork10.photo.attach(io: file, filename: "precoarchi.png", content_type: "image/png")

artwork10.categories = [preco, architecture, insitu]

artwork11 = Artwork.create!(
  name: "Codex Borbonicus",
  artist: "anonyme",
  latitude: 19.4326296,
  longitude: -99.1331785,
  creation_date: 1525,
  dimensions: "39 × 40 cm (14 m long)",
  materials: "amate",
  info_link: "https://en.wikipedia.org/wiki/Codex_Borbonicus",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/Borbonicus_Codex_p14_Wiki_iiy1mk.png").open
artwork11.photo.attach(io: file, filename: "precopainting.png", content_type: "image/png")

artwork11.categories = [preco, painting, assemblée]

artwork12 = Artwork.create!(
  name: "Relief with enthroned ruler",
  artist: "anonyme",
  latitude: 17.3273045,
  longitude: -89.9805902,
  creation_date: 770,
  dimensions: "H. : 35 cm",
  materials: "Limestone",
  info_link: "https://www.metmuseum.org/art/collection/search/313240",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DT1274_hxln8n.jpg").open
artwork12.photo.attach(io: file, filename: "precosculpture.png", content_type: "image/png")

artwork12.categories = [preco, sculpture, met]

artwork13 = Artwork.create!(
  name: "Old Plum",
  artist: "Kano Sansetsu",
  latitude: 35.02385330200195,
  longitude: 135.72105407714844,
  creation_date: 1646,
  dimensions: "174,6 x 485,5 cm",
  materials: "ink, color, gold, and gold leaf on paper",
  info_link: "https://www.metmuseum.org/art/collection/search/44858",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DT229_oeucil.jpg").open
artwork13.photo.attach(io: file, filename: "asianpainting.png", content_type: "image/png")

artwork13.categories = [eastasian, painting, met]

artwork14 = Artwork.create!(
  name: "Armor",
  artist: "Bamen Tomotsugu",
  latitude: 35.9034571,
  longitude: 136.1689317,
  creation_date: 1750,
  dimensions: "adult human size",
  materials: "Iron, lacquer, copper-gold alloy (shakudō), silver, silk, horse hair, ivory ",
  info_link: "https://www.metmuseum.org/art/collection/search/24975",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620103/DT5333_arwfgj.jpg").open
artwork14.photo.attach(io: file, filename: "asiandeco.png", content_type: "image/png")

artwork14.categories = [eastasian, decorative, met]

artwork15 = Artwork.create!(
  name: "Buddhist Monk",
  artist: "anonyme",
  latitude: 34.22611,
  longitude: 135.1675,
  creation_date: 1305,
  dimensions: "H.: 91 cm",
  materials: "wood, lacquer",
  info_link: "https://www.clevelandart.org/art/1970.67",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620097/1970.67_web_dyun2o.jpg").open
artwork15.photo.attach(io: file, filename: "asiansculpture.png", content_type: "image/png")

artwork15.categories = [eastasian, sculpture, cleveland]

artwork16 = Artwork.create!(
  name: "Forbidden City",
  artist: "Cai Xin",
  latitude: 39.8983333,
  longitude: 116.39055555555557,
  creation_date: 1420,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Forbidden_City",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620103/La_cit%C3%A9_interdite_0244_dxmkqu.jpg").open
artwork16.photo.attach(io: file, filename: "asianarchi.png", content_type: "image/png")

artwork16.categories = [eastasian, architecture, insitu]

artwork17 = Artwork.create!(
  name: "Male Figure",
  artist: "anonyme",
  latitude: -4.8051106,
  longitude: 13.9921569,
  creation_date: 1835,
  dimensions: "H.: 72 cm",
  materials: "Wood, metal, glass, fabric, fiber, cowrie shells, bone, leather, gourd, and feathers",
  info_link: "https://www.artic.edu/artworks/151358/male-figure-nkisi-nkondi",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620097/1998.502_-_Male_Figure_Nkisi_Nkondi_vxsxn6.jpg").open
artwork17.photo.attach(io: file, filename: "africansculpture.png", content_type: "image/png")

artwork17.categories = [african, sculpture, chicago]

artwork18 = Artwork.create!(
  name: "Ndebele painted house",
  artist: "Esther Mahlangu",
  latitude: -25.1323547,
  longitude: 29.0740855,
  creation_date: 1985,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Esther_Mahlangu",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620103/The_entrance_gate_to_Esther_Mahlangu_s_homestead_jjo9jy.jpg").open
artwork18.photo.attach(io: file, filename: "africanpainting.png", content_type: "image/png")

artwork17.categories = [african, painting, insitu]

artwork19 = Artwork.create!(
  name: "Great Mosque of Djenné",
  artist: "Ismaïla Traoré",
  latitude: 13.9051631,
  longitude: -4.5548581,
  creation_date: 1907,
  dimensions: "H.: 16 m",
  materials: "Adobe",
  info_link: "https://en.wikipedia.org/wiki/Great_Mosque_of_Djenn%C3%A9",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620887/Great_Mosque_of_Djenn%C3%A9_1_uxng2r.jpg").open
artwork19.photo.attach(io: file, filename: "arficanarchi.png", content_type: "image/png")

artwork17.categories = [african, architecture, insitu]

artwork20 = Artwork.create!(
  name: "Queen Mother Pendant Mask: Iyoba",
  artist: "anonyme",
  latitude: 6.3330586,
  longitude: 5.6221058,
  creation_date: 1550,
  dimensions: "H.: 24 cm",
  materials: "Ivory, iron, copper (?)",
  info_link: "https://www.metmuseum.org/art/collection/search/318622",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732620098/DP231460_gaod8n.jpg").open
artwork20.photo.attach(io: file, filename: "africandeco.png", content_type: "image/png")

artwork17.categories = [african, decorative, met]

puts "Seed succesfuly created !"

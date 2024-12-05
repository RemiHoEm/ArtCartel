Challenge.destroy_all
GamesArtwork.destroy_all
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
louvre = Category.create!(
  name: "Musée du Louvre",
  theme: "Museum",
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
cairo= Category.create!(
  name: "egyptian museum of Cairo",
  theme: "Museum",
)
cinq= Category.create!(
  name: "Cinquantenaire Museum, Brussels",
  theme: "Museum",
)

puts "creating artworks"

#EGYPTIAN
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250032/All_Gizah_PyramidsFORMAT_oji44q.png").open
artwork1.photo.attach(io: file, filename: "egyptianarchi.png", content_type: "image/png")

artwork1.categories = [egyptian, architecture, insitu]

artwork2 = Artwork.create!(
  name: "Great Sphinx of Giza",
  artist: "anonyme",
  latitude: 29.974670018453818,
  longitude: 31.138332170455136,
  creation_date: -2545,
  dimensions: "H.: 20 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Great_Sphinx_of_Giza",
  attribution_licence: "Par Moh hakem — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=51754051",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250134/The_amazing_SphinxFORMAT_b8smhs.png").open
artwork2.photo.attach(io: file, filename: "egyptsculpt2.png", content_type: "image/png")

artwork2.categories = [egyptian, sculpture, insitu]

artwork3 = Artwork.create!(
  name: "Funerary mask",
  artist: "anonyme",
  latitude: 25.740389,
  longitude: 32.601417,
  creation_date: -1323,
  dimensions: "H.: 54 cm",
  materials: "Gold, gemstones and glass paste",
  info_link: "https://en.wikipedia.org/wiki/Tutankhamun",
  attribution_licence: "Par Roland Unger — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=48168958",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/Toutankhamon_t6pfst.png").open
artwork3.photo.attach(io: file, filename: "egyptsculpt2.png", content_type: "image/png")

artwork3.categories = [egyptian, decorative, cairo]

#EUROPEAN
artwork4 = Artwork.create!(
  name: "Self-Portrait",
  artist: "Vincent van Gogh",
  latitude: 48.85335676330977,
  longitude: 2.34886825787723,
  creation_date: 1887,
  dimensions: "41x32 cm",
  materials: "Oil on canvas",
  info_link: "https://www.metmuseum.org/art/collection/search/436532",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250103/DT1502_cropped2FORMAT_bnoalx.png").open
artwork4.photo.attach(io: file, filename: "europeinture.png", content_type: "image/png")

artwork4.categories = [european, painting, met]

artwork5 = Artwork.create!(
  name: "the Thinker",
  artist: "Auguste Rodin",
  latitude: 48.813690185546875,
  longitude: 2.34886825787723,
  creation_date: 1880,
  dimensions: "H.: 70 cm",
  materials: "bronze",
  info_link: "https://www.metmuseum.org/art/collection/search/191811",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250025/DP-13618-012FORMAT_cwrids.png").open
artwork5.photo.attach(io: file, filename: "eurosculpture.png", content_type: "image/png")

artwork5.categories = [european, sculpture, met]

artwork6 = Artwork.create!(
  name: "Eiffel Tower",
  artist: "Gustave Eiffel",
  latitude: 48.8582599  ,
  longitude: 2.2945006  ,
  creation_date: 1889,
  dimensions: "H.: 330 m",
  materials: "puddled steel",
  info_link: "https://en.wikipedia.org/wiki/Eiffel_Tower",
  attribution_licence: "Par Benh LIEU SONG — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6926930",

)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250114/Tour_Eiffel_Wikimedia_CommonsFORMAT_bmymls.png").open
artwork6.photo.attach(io: file, filename: "euroarchi.png", content_type: "image/png")

artwork6.categories = [european, architecture, insitu]

#PRECOLUMBIAN
artwork7 = Artwork.create!(
  name: "Machu Pichu",
  artist: "anonyme",
  latitude: -13.1633333  ,
  longitude: -72.54555527777778,
  creation_date: 1455,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Machu_Picchu",
  attribution_licence: "Par icelight from Boston, MA, US — Before Machu Picchu, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=4200586"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250028/Before_Machu_Picchu_hrrbi1.jpg").open
artwork7.photo.attach(io: file, filename: "precoarchi.png", content_type: "image/png")

artwork7.categories = [preco, architecture, insitu]

artwork8 = Artwork.create!(
  name: "Chichén Itzá",
  artist: "anonyme",
  latitude: 20.6827778,
  longitude: -88.56861111111111,
  creation_date: 800,
  dimensions: "H.: 30 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Chichen_Itza",
  attribution_licence: "Par Fcb981 — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3953928",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733249999/1280px-El_Castillo_Stitch_2008_Edit_1FORMAT_pswu0p.png").open
artwork8.photo.attach(io: file, filename: "precoarchi2.png", content_type: "image/png")

artwork8.categories = [preco, architecture, insitu]

artwork9 = Artwork.create!(
  name: "Male Figure",
  artist: "anonyme",
  latitude: -6.72437518682489,
  longitude: -78.5545072310981,
  creation_date: 1235,
  dimensions: "",
  materials: "Wood",
  info_link: "https://en.wikipedia.org/wiki/Art_%26_History_Museum",
  attribution_licence: "Vassil, CC0, via Wikimedia Commons",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/OreilleCass%C3%A9e_sypsbr.png").open
artwork9.photo.attach(io: file, filename: "oreilleCassée.png", content_type: "image/png")

artwork9.categories = [preco, sculpture, cinq]

#ASIAN
artwork10 = Artwork.create!(
  name: "Armor",
  artist: "Bamen Tomotsugu",
  latitude: 35.9034571,
  longitude: 136.1689317,
  creation_date: 1750,
  dimensions: "adult human size",
  materials: "Iron, lacquer, copper-gold alloy (shakudō), silver, silk, horse hair, ivory ",
  info_link: "https://www.metmuseum.org/art/collection/search/24975",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250082/DT5333FORMAT_rr8ssy.png").open
artwork10.photo.attach(io: file, filename: "asiandeco.png", content_type: "image/png")

artwork10.categories = [eastasian, decorative, met]

artwork11 = Artwork.create!(
  name: "Forbidden City",
  artist: "Cai Xin",
  latitude: 39.8983333,
  longitude: 116.39055555555557,
  creation_date: 1420,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Forbidden_City",
  attribution_licence: "De Viault - Trabajo propio, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=20498607"

)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733250104/La_cit%C3%A9_interdite_0244FORMAT_dggsej.png").open
artwork11.photo.attach(io: file, filename: "asianarchi.png", content_type: "image/png")

artwork11.categories = [eastasian, architecture, insitu]

artwork12 = Artwork.create!(
  name: "Jar with dragon",
  artist: "anonyme",
  latitude: 29.29531347437687,
  longitude: 117.20953470953552,
  creation_date: 1412,
  dimensions: "H. : 48 cm",
  materials: "Porcelain",
  info_link: "https://www.metmuseum.org/art/collection/search/39666",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork12.photo.attach(io: file, filename: "Vase.png", content_type: "image/png")

artwork12.categories = [eastasian, architecture, insitu]






puts "Seed succesfuly created !"

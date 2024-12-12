Challenge.destroy_all
GamesArtwork.destroy_all
Category.destroy_all
Artwork.destroy_all

puts "Starting seed deployment..."
puts "Creating categories"

egyptian = Category.create!(
  name: "Egyptian",
  theme: "Culture",
)
eastasian = Category.create!(
  name: "East Asian",
  theme: "Culture",
)
oceanian = Category.create!(
  name: "Oceanian",
  theme: "Culture",
)
nearEast = Category.create!(
  name: "Ancient Near Eastern",
  theme: "Culture",
)
indian = Category.create!(
  name: "Idian Cultural Sphere",
  theme: "Culture",
)
modern = Category.create!(
  name: "European 19 & 20th centuries",
  theme: "Culture",
)
baroque = Category.create!(
  name: "European 17 & 18th centuries",
  theme: "Culture",
)
renaissance = Category.create!(
  name: "Renaissance",
  theme: "Culture",
)
medieval = Category.create!(
  name: "Medieval",
  theme: "Culture",
)
preco = Category.create!(
  name: "Pre-Columbian",
  theme: "Culture",
)
african = Category.create!(
  name: "African",
  theme: "Culture",
)
islamic = Category.create!(
  name:"Islamic",
  theme: "Culture",
)
greco = Category.create!(
  name: "Greco-Roman & Etruscan",
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
  name: "Assemblée nationale, Paris",
  theme: "Museum",
)
losAngeles = Category.create!(
  name: "LA county museum of art",
  theme: "Museum",
)
cairo= Category.create!(
  name: "Egyptian museum of Cairo",
  theme: "Museum",
)
cinq= Category.create!(
  name: "Cinquantenaire Museum, Brussels",
  theme: "Museum",
)
pergamon= Category.create!(
  name: "Pergamonmuseum, Berlin",
  theme: "Museum",
)
sarnath= Category.create!(
  name: "Sarnath Museum, India",
  theme: "Museum",
)
academia= Category.create!(
  name: "Galleria dell'Accademia",
  theme: "Museum",
)
offices = Category.create!(
  name: "Galleria degli Uffizi",
  theme: "Museum",
)
cluny = Category.create!(
  name: "musée de Cluny",
  theme: "Museum",
)
angers = Category.create!(
  name: "château d'Angers",
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
decorative = Category.create!(
  name: "Decorative Arts",
  theme: "Technique",
)
costume = Category.create!(
  name: "Costume and Textile",
  theme: "Technique",
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

#MODERN
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

artwork4.categories = [modern, painting, met]

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

artwork5.categories = [modern, sculpture, met]

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

artwork6.categories = [modern, architecture, insitu]

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

#OCEANIAN
artwork13 = Artwork.create!(
  name: "Kangaroo",
  artist: "anonyme",
  latitude: -12.7308333,
  longitude: 134.5927778,
  creation_date: 1850,
  dimensions: "H. : 100 cm",
  materials: "Tempera on bark",
  info_link: "https://www.clevelandart.org/art/1982.113",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork13.photo.attach(io: file, filename: "Kangourou.png", content_type: "image/png")

artwork13.categories = [oceanian, painting, cleveland]

artwork14 = Artwork.create!(
  name: "Mask",
  artist: "anonyme",
  latitude: -3.7021472,
  longitude: 152.4360021,
  creation_date: 1850,
  dimensions: "H. : 49 cm",
  materials: "Wood, pith, and shell",
  info_link: "https://collections.lacma.org/node/237924",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork14.photo.attach(io: file, filename: "Maskneoirland.png", content_type: "image/png")

artwork14.categories = [oceanian, costume, losAngeles]

artwork15 = Artwork.create!(
  name: "Ceremonial Paddle",
  artist: "anonyme",
  latitude: -23.8698071,
  longitude: -147.6664472,
  creation_date: 1750,
  dimensions: "H. : 115 cm",
  materials: "Wood",
  info_link: "https://www.clevelandart.org/art/1977.29",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork15.photo.attach(io: file, filename: "paddle.png", content_type: "image/png")

artwork15.categories = [oceanian, sculpture, cleveland]

#NEAR EASTERN
artwork16 = Artwork.create!(
  name: "Ishtar Gate",
  artist: "anonyme",
  latitude: 32.5425,
  longitude: 44.42111,
  creation_date: -569,
  dimensions: "H. : 15 m",
  materials: "Glazed Bricks",
  info_link: "https://en.wikipedia.org/wiki/Ishtar_Gate",
  attribution_licence: "Par User:Hahaha — Travail personnel, CC SA 1.0, https://commons.wikimedia.org/w/index.php?curid=699655",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork16.photo.attach(io: file, filename: "ishtar.png", content_type: "image/png")

artwork16.categories = [nearEast, architecture, pergamon]

artwork17 = Artwork.create!(
  name: "Lamasu",
  artist: "anonyme",
  latitude: 36.0981957,
  longitude: 43.3288643,
  creation_date: -870,
  dimensions: "H. : 3,11 m",
  materials: "Gypsum alabaster",
  info_link: "https://www.metmuseum.org/art/collection/search/322609",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork17.photo.attach(io: file, filename: "lamasu.png", content_type: "image/png")

artwork17.categories = [nearEast, sculpture, met]

artwork18 = Artwork.create!(
  name: "Petra",
  artist: "anonyme",
  latitude: 30.3258363,
  longitude: 35.4745669,
  creation_date: -50,
  dimensions: "H.: 40 m",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Petra",
  attribution_licence: "Graham Racher from London, UKderivative work: MrPanyGoff, CC BY-SA 2.0 <https://creativecommons.org/licenses/by-sa/2.0>, via Wikimedia Commons",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork18.photo.attach(io: file, filename: "petra.png", content_type: "image/png")

artwork18.categories = [nearEast, architecture, insitu]

#INDIAN
artwork19 = Artwork.create!(
  name: "Taj Mahal",
  artist: "Ustad Ahmad Lahauri",
  latitude: 27.1750075,
  longitude: 78.0421013,
  creation_date: 1648,
  dimensions: "H. : 74 m",
  materials: "Marble and gemstones",
  info_link: "https://en.wikipedia.org/wiki/Taj_Mahal",
  attribution_licence: "Par Laurent COOPER — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15220791",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork19.photo.attach(io: file, filename: "tajmahal.png", content_type: "image/png")

artwork19.categories = [indian, architecture, insitu]

artwork20 = Artwork.create!(
  name: "Buddha",
  artist: "anonyme",
  latitude: 25.3776274,
  longitude: 83.0275999,
  creation_date: 450,
  dimensions: "H. : 160 cm",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Buddha_Preaching_his_First_Sermon_(Sarnath)",
  attribution_licence: "By พระมหาเทวประภาส วชิรญาณเมธี (ผู้ถ่าย-ปล่อยสัญญาอนุญาตภาพให้นำไปใช้ได้เพื่อการศึกษาโดยอยู่ภา่ยใต้ cc-by-sa-3.0) ผู้สร้างสรรค์ผลงาน/ส่งข้อมูลเก็บในคลังข้อมูลเสรีวิกิมีเดียคอมมอนส์ - เทวประภาส มากคล้าย - Tevaprapas Makklay (พระมหาเทวประภาส วชิรญาณเมธี), CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7004539"
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v2033398990/vaseChinois_nwrcnx.png").open
artwork20.photo.attach(io: file, filename: "buddha.png", content_type: "image/png")

artwork20.categories = [indian, sculpture, sarnath]

artwork21 = Artwork.create!(
  name: "Angkor Wat",
  artist: "anonyme",
  latitude: 13.4124426,
  longitude: 103.8665873,
  creation_date: 1130,
  dimensions: "H.: 213 m",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Angkor_Wat",
  attribution_licence: "By sam garza - originally posted to Flickr as Angkor Wat, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=7709377",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork21.photo.attach(io: file, filename: "angkor.png", content_type: "image/png")

artwork21.categories = [indian, architecture, insitu]

#AFRICAN
artwork22 = Artwork.create!(
  name: "Great Mosque",
  artist: "Ismaïla Traoré",
  latitude: 13.9051631,
  longitude: -4.5548581,
  creation_date: 1907,
  dimensions: "H. : 16 m",
  materials: "Adobe",
  info_link: "https://en.wikipedia.org/wiki/Great_Mosque_of_Djenn%C3%A9",
  attribution_licence: "Par Andy Gilham — from [1] JCarriker (304322 bytes) (used with the permission of Andy Gilham of www.andygilham.com, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=165257",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork22.photo.attach(io: file, filename: "mosque.png", content_type: "image/png")

artwork22.categories = [african, architecture, insitu]

artwork23 = Artwork.create!(
  name: "Male Figure",
  artist: "anonyme",
  latitude: -4.8051106,
  longitude: 13.9921569,
  creation_date: 1837,
  dimensions: "H. : 72 cm",
  materials: "Wood, metal, glass, fabric, fiber, cowrie shells, bone, leather, gourd, and feathers",
  info_link: "https://www.artic.edu/artworks/151358/male-figure-nkisi-nkondi",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v2333398990/vaseChinois_nwrcnx.png").open
artwork23.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork23.categories = [african, sculpture, chicago]

artwork24 = Artwork.create!(
  name: "Pendant Mask",
  artist: "anonyme",
  latitude: 6.3330586,
  longitude: 5.6221058,
  creation_date: 1550,
  dimensions: "H.: 24 cm",
  materials: "Ivory, iron, copper (?)",
  info_link: "https://www.metmuseum.org/art/collection/search/318622",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork24.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork24.categories = [african, decorative, met]

#GRECOROMAN
artwork25 = Artwork.create!(
  name: "Frescoes",
  artist: "anonyme",
  latitude: 40.753694,
  longitude: 14.477444,
  creation_date: 50,
  dimensions: "",
  materials: "Lime plaster, pigments",
  info_link: "https://en.wikipedia.org/wiki/Villa_of_the_Mysteries",
  attribution_licence: "Par Pompejanischer Maler um 60 v. Chr. — The Yorck Project (2002) 10.000 Meisterwerke der Malerei (DVD-ROM), distributed by DIRECTMEDIA Publishing GmbH. ISBN : 3936122202., Domaine public, https://commons.wikimedia.org/w/index.php?curid=156516",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork25.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork25.categories = [grecoroman, painting, insitu]

artwork26 = Artwork.create!(
  name: "Venus de Milo",
  artist: "anonyme",
  latitude: 36.683333,
  longitude: 24.416667,
  creation_date: -135,
  dimensions: "H. : 204 cm",
  materials: "Parian marble",
  info_link: "https://en.wikipedia.org/wiki/Venus_de_Milo",
  attribution_licence: "Par Shonagon — Travail personnel, CC0, https://commons.wikimedia.org/w/index.php?curid=145514697"
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v2633398990/vaseChinois_nwrcnx.png").open
artwork26.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork26.categories = [grecoroman, sculpture, louvre]

artwork27 = Artwork.create!(
  name: "Parthenon",
  artist: "Ictinos, Callicratès & Phidias",
  latitude: 37.9713889,
  longitude: 23.726388888888888,
  creation_date: 432,
  dimensions: "H.: 14 m",
  materials: "Pentelic Marble",
  info_link: "https://en.wikipedia.org/wiki/Parthenon",
  attribution_licence: "Steve Swayne, CC BY 2.0 <https://creativecommons.org/licenses/by/2.0>, via Wikimedia Commons",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork27.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork27.categories = [grecoroman, architecture, insitu]

#ISLAMIC
artwork28 = Artwork.create!(
  name: "the Shah Mosque",
  artist: "Shaykh Bahai",
  latitude: 40.753694,
  longitude: 14.477444,
  creation_date: 1629,
  dimensions: "H.: 56 m",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Shah_Mosque_(Isfahan)",
  attribution_licence: "By Patrickringgenberg - Wiki Commons (Isfahan Royal Mosque general.JPG), CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=135674424",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork28.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork28.categories = [islamic, painting, insitu]

artwork29 = Artwork.create!(
  name: "Insignia",
  artist: "anonyme",
  latitude: 41.0766019,
  longitude: 29.052495,
  creation_date: 1560,
  dimensions: "H. : 52 cm",
  materials: "Ink, opaque watercolor, and gold on paper",
  info_link: "https://www.metmuseum.org/art/collection/search/449533#:~:text=1520%E2%80%9366),-ca.&text=The%20Ottoman%20tughra%20is%20a,papers%2C%20correspondence%2C%20and%20coins.",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v2933398990/vaseChinois_nwrcnx.png").open
artwork29.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork29.categories = [islamic, painting, met]

artwork30 = Artwork.create!(
  name: "Court of the Lions",
  artist: "anonyme",
  latitude: 37.1771,
  longitude: -3.58927,
  creation_date: 1390,
  dimensions: "",
  materials: "Marble and azulejos",
  info_link: "https://en.wikipedia.org/wiki/Court_of_the_Lions",
  attribution_licence: "Oscarmu90, CC BY-SA 3.0 ES <https://creativecommons.org/licenses/by-sa/3.0/es/deed.en>, via Wikimedia Commons",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork30.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork30.categories = [islamic, architecture, insitu]

#BAROQUE
artwork31 = Artwork.create!(
  name: "Baslica of Saint Mary of Health",
  artist: "Baltasar Longhena",
  latitude: 45.4305726,
  longitude: 12.3347318,
  creation_date: 1687,
  dimensions: "H.: 58 m",
  materials: "marble, stone, briques, wood",
  info_link: "https://en.wikipedia.org/wiki/Santa_Maria_della_Salute",
  attribution_licence: "Par This Photo was taken by Wolfgang Moroder. Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=25524119",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork31.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork31.categories = [baroque, architecture, insitu]

artwork32 = Artwork.create!(
  name: "The Ecstasy of Saint Teresa",
  artist: "Gian Lorenzo Bernini",
  latitude: 41.9040,
  longitude: 12.4963,
  creation_date: 1647,
  dimensions: "H.: 2.74 m",
  materials: "Marble, bronze, gilded wood, stucco",
  info_link: "https://en.wikipedia.org/wiki/The_Ecstasy_of_Saint_Teresa",
  attribution_licence: "Par Le Bernin — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=43527951",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v3233398990/vaseChinois_nwrcnx.png").open
artwork32.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork32.categories = [baroque, sculpture, insitu]

artwork33 = Artwork.create!(
  name: "Las Meninas",
  artist: "Diego Velázquez",
  latitude: 40.4168,
  longitude: -3.7038,
  creation_date: 1656,
  dimensions: "H.: 318 cm, W.: 276 cm",
  materials: "Oil on canvas",
  info_link: "https://en.wikipedia.org/wiki/Las_Meninas",
  attribution_licence: "Par Diego Vélasquez — The Prado, Domaine public, https://commons.wikimedia.org/w/index.php?curid=22600614",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork33.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork33.categories = [baroque, painting, insitu]

#RENAISSANCE
artwork34 = Artwork.create!(
  name: "Saint Basil's Cathedral",
  artist: "Postnik Yakovlev",
  latitude: 55.752023,
  longitude: 37.617499,
  creation_date: 1555,
  dimensions: "H.: 65 m",
  materials: "Brique, pierre, céramique",
  info_link: "https://en.wikipedia.org/wiki/Saint_Basil's_Cathedral",
  attribution_licence: "Par A.Savin — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21106594",

)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork34.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork34.categories = [renaissance, architecture, insitu]

artwork35 = Artwork.create!(
  name: "David",
  artist: "Michelangelo",
  latitude: 43.7667,
  longitude: 11.2560,
  creation_date: 1504,
  dimensions: "H.: 5.17 m",
  materials: "Marble",
  info_link: "https://en.wikipedia.org/wiki/David_(Michelangelo)",
  attribution_licence: "Par Jörg Bittner Unna — Travail personnel, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=56633971",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v3533398990/vaseChinois_nwrcnx.png").open
artwork35.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork35.categories = [renaissance, painting, academia]

artwork36 = Artwork.create!(
  name: "The Birth of Venus",
  artist: "Sandro Botticelli",
  latitude: 43.7687,
  longitude: 11.2558,
  creation_date: 1486,
  dimensions: "H.: 172.5 cm, W.: 278.9 cm",
  materials: "Tempera on canvas",
  info_link: "https://en.wikipedia.org/wiki/The_Birth_of_Venus",
  attribution_licence: "Par Sandro Botticelli — Domaine public, https://commons.wikimedia.org/w/index.php?curid=22507491",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork36.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork36.categories = [renaissance, painting, offices]

#MEDIEVAL
artwork37 = Artwork.create!(
  name: "Apocalypse Tapestry",
  artist: "Bataille, Poinçon et Hennequin de Bruges",
  latitude: 48.85336371561275,
  longitude: 2.348857823142354,
  creation_date: 1382,
  dimensions: "H.: 4.5 m, L.: 103 m",
  materials: "Wool, linen",
  info_link: "https://en.wikipedia.org/wiki/Apocalypse_Tapestry",
  attribution_licence: "Von Kimon Berlin, user:Gribeco - Ursprung unbekannt, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=921825",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork37.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork37.categories = [medieval, decorative, angers]

artwork38 = Artwork.create!(
  name: "Adam",
  artist: "Pierre de Montreuil (?)",
  latitude: 48.85336371561275,
  longitude: 2.348857823142354,
  creation_date: 1260,
  dimensions: "H. : 200 cm",
  materials: "Limestone",
  info_link: "https://fr.wikipedia.org/wiki/Adam_(mus%C3%A9e_de_Cluny)",
  attribution_licence: "Par Marie-Lan Nguyen (2006), Domaine public, https://commons.wikimedia.org/w/index.php?curid=1044815",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v3833398990/vaseChinois_nwrcnx.png").open
artwork38.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork38.categories = [medieval, sculpture, cluny]

artwork39 = Artwork.create!(
  name: "Stavkirke",
  artist: "anonyme",
  latitude: 61.04717273611712,
  longitude: 7.812289316342862,
  creation_date: 1190,
  dimensions: "H.: 28m",
  materials: "Pine",
  info_link: "https://en.wikipedia.org/wiki/Borgund_Stave_Church",
  attribution_licence: "Par Frode Inge Helland — Travail personnel, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=2734973",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1733398990/vaseChinois_nwrcnx.png").open
artwork39.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork39.categories = [medieval, architecture, insitu]
  puts "Seed succesfuly created !"

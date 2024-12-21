Challenge.destroy_all
GamesArtwork.destroy_all
Category.destroy_all
Artwork.destroy_all

puts "Starting seed deployment..."
puts "Creating categories"

archeo = Category.create!(
  name: "European Archeology",
  theme: "Culture",
)
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
  name: "European 19th century",
  theme: "Culture",
)
contempo = Category.create!(
  name: "European 20th century",
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
lacma = Category.create!(
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
prado = Category.create!(
  name: "Museo del Prado",
  theme: "Museum",
)
moma = Category.create!(
  name: "MoMA",
  theme: "Museum",
)
oslo = Category.create!(
  name: "National Museum of Oslo",
  theme: "Museum",
)
mauritshuis = Category.create!(
  name: "Mauritshuis",
  theme: "Museum",
)
belvedere = Category.create!(
  name: "Belvedere",
  theme: "Museum",
)
rijksmuseum = Category.create!(
  name: "Rijksmuseum",
  theme: "Museum",
)
nationalgallery = Category.create!(
  name: "Nationalgallery",
  theme: "Museum",
)
mamMexico = Category.create!(
  name: "Museo Arte Moderno, Mexico",
  theme: "Museum",
)
vatican = Category.create!(
  name: "Vatican Museums",
  theme: "Museum",
)
berlin = Category.create!(
  name: "Egyptian Museum of Berlin",
  theme: "Museum",
)
angouleme = Category.create!(
  name: "Angoulême Museum",
  theme: "Museum",
)
danemark = Category.create!(
  name: "Danemark National Museum",
  theme: "Museum",
)
roman = Category.create!(
  name: "Roman National Museum",
  theme: "Museum",
)
germain = Category.create!(
  name: "Musée d'Archéologie Nationale",
  theme: "Museum",
)
zurich = Category.create!(
  name: "Musée nationale de Zurich",
  theme: "Museum",
)
glauberg = Category.create!(
  name: "Glauberg Museum",
  theme: "Museum",
)
cabinet = Category.create!(
  name: "BNF Cabinet des médailles",
  theme: "Museum",
)
trinity = Category.create!(
  name: "Trinity College",
  theme: "Museum",
)
xalapa = Category.create!(
  name: "Xalapa Museum",
  theme: "Museum",
)
mexico = Category.create!(
  name: "Nat. Anthropoly Museum, Mexico",
  theme: "Museum",
)
branly = Category.create!(
  name: "Musée du Quai Branly",
  theme: "Museum"
)
hubei = Category.create!(
  name: "Hubei Provincial Museum",
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
arms = Category.create!(
  name: "Arms & Armors",
  theme: "Technique",
)


puts "creating artworks"

#EGYPTIAN
puts "creating egyptian artworks"

artwork1 = Artwork.create!(
  average_score: 6000,
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
  average_score: 6000,
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
  average_score: 6000,
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
artwork3.photo.attach(io: file, filename: "egyptdeco.png", content_type: "image/png")

artwork3.categories = [egyptian, decorative, cairo]

#MODERN
puts "creating modern artworks"

artwork4 = Artwork.create!(
  average_score: 6000,
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
  average_score: 6000,
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
  average_score: 6000,
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
puts "creating preco artworks"

artwork7 = Artwork.create!(
  average_score: 6000,
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
  average_score: 6000,
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
  average_score: 6000,
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
puts "creating asian artworks"

artwork10 = Artwork.create!(
  average_score: 6000,
  name: "Horse",
  artist: "anonyme",
  latitude: 36.2869536,
  longitude: 140.4703384,
  creation_date: 550,
  dimensions: "H. : 79 cm",
  materials: "Terracotta",
  info_link: "https://www.artic.edu/artworks/86366/horse",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734690867/Horse_qbx7zz.png").open
artwork10.photo.attach(io: file, filename: "horse.png", content_type: "image/png")

artwork10.categories = [eastasian, sculpture, chicago]

artwork11 = Artwork.create!(
  average_score: 6000,
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
  average_score: 6000,
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
puts "creating oceanian artworks"

artwork13 = Artwork.create!(
  average_score: 6000,
  name: "Kangaroo",
  artist: "anonyme",
  latitude: -12.7308333,
  longitude: 134.5927778,
  creation_date: 1850,
  dimensions: "H. : 100 cm",
  materials: "Tempera on bark",
  info_link: "https://www.clevelandart.org/art/1982.113",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449421/1982.113_web_fmzhde.png").open
artwork13.photo.attach(io: file, filename: "Kangourou.png", content_type: "image/png")

artwork13.categories = [oceanian, painting, cleveland]

artwork14 = Artwork.create!(
  average_score: 6000,
  name: "Mask",
  artist: "anonyme",
  latitude: -3.7021472,
  longitude: 152.4360021,
  creation_date: 1850,
  dimensions: "H. : 49 cm",
  materials: "Wood, pith, and shell",
  info_link: "https://collections.lacma.org/node/237924",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449738/ma-79068_daaqo3.png").open
artwork14.photo.attach(io: file, filename: "Maskneoirland.png", content_type: "image/png")

artwork14.categories = [oceanian, costume, lacma]

artwork15 = Artwork.create!(
  average_score: 6000,
  name: "Canoe Splashboard",
  artist: "anonyme",
  latitude: -8.666667,
  longitude: 150.916667,
  creation_date: 1850,
  dimensions: "H. : 59 cm",
  materials: "Wood",
  info_link: "https://www.clevelandart.org/art/1966.130",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734617347/CanoeSplash_hlxey8.png").open
artwork15.photo.attach(io: file, filename: "canoesplash.png", content_type: "image/png")

artwork15.categories = [oceanian, sculpture, cleveland]

#NEAR EASTERN
puts "creating ancient nearEastern artworks"

artwork16 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449338/800px-Pergamonmuseum_Ishtartor_05_mcya7m.png").open
artwork16.photo.attach(io: file, filename: "ishtar.png", content_type: "image/png")

artwork16.categories = [nearEast, architecture, pergamon]

artwork17 = Artwork.create!(
  average_score: 6000,
  name: "Lamasu",
  artist: "anonyme",
  latitude: 36.0981957,
  longitude: 43.3288643,
  creation_date: -870,
  dimensions: "H. : 3,11 m",
  materials: "Gypsum alabaster",
  info_link: "https://www.metmuseum.org/art/collection/search/322609",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449558/DT880_hlybdq.png").open
artwork17.photo.attach(io: file, filename: "lamasu.png", content_type: "image/png")

artwork17.categories = [nearEast, sculpture, met]

artwork18 = Artwork.create!(
  average_score: 6000,
  name: "Petra",
  artist: "anonyme",
  latitude: 30.3220754,
  longitude: 35.4515251,
  creation_date: -50,
  dimensions: "H.: 40 m",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Petra",
  attribution_licence: "Graham Racher from London, UKderivative work: MrPanyGoff, CC BY-SA 2.0 <https://creativecommons.org/licenses/by-sa/2.0>, via Wikimedia Commons",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449318/538px-Al_Khazneh_Petra_edit_2_olcusd.png").open
artwork18.photo.attach(io: file, filename: "petra.png", content_type: "image/png")

artwork18.categories = [nearEast, architecture, insitu]

#INDIAN
puts "creating indian artworks"

artwork19 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449372/1280px-Taj_Mahal__Agra__India_edit3_yteimm.png").open
artwork19.photo.attach(io: file, filename: "tajmahal.png", content_type: "image/png")

artwork19.categories = [indian, architecture, insitu]

artwork20 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449422/Buddha_in_Sarnath_Museum__Dhammajak_Mutra_yl5g26.png").open
artwork20.photo.attach(io: file, filename: "buddha.png", content_type: "image/png")

artwork20.categories = [indian, sculpture, sarnath]

artwork21 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449428/Buddhist_monks_in_front_of_the_Angkor_WatFORMAT_cmkmcm.png").open
artwork21.photo.attach(io: file, filename: "angkor.png", content_type: "image/png")

artwork21.categories = [indian, architecture, insitu]

#AFRICAN
puts "creating african artworks"

artwork22 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449628/Great_Mosque_of_Djenn%C3%A9_1FORMAT_qcqry9.png").open
artwork22.photo.attach(io: file, filename: "mosque.png", content_type: "image/png")

artwork22.categories = [african, architecture, insitu]

artwork23 = Artwork.create!(
  average_score: 6000,
  name: "Male Figure",
  artist: "anonyme",
  latitude: -4.8051106,
  longitude: 13.9921569,
  creation_date: 1837,
  dimensions: "H. : 72 cm",
  materials: "Wood, metal, glass, fabric, fiber, cowrie shells, bone, leather, gourd, and feathers",
  info_link: "https://www.artic.edu/artworks/151358/male-figure-nkisi-nkondi",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449391/1998.502_-_Male_Figure_Nkisi_Nkondi_FORMAT_d3yme3.png").open
artwork23.photo.attach(io: file, filename: "malefigure.png", content_type: "image/png")

artwork23.categories = [african, sculpture, chicago]

artwork24 = Artwork.create!(
  average_score: 6000,
  name: "Pendant Mask",
  artist: "anonyme",
  latitude: 6.3330586,
  longitude: 5.6221058,
  creation_date: 1550,
  dimensions: "H.: 24 cm",
  materials: "Ivory, iron, copper (?)",
  info_link: "https://www.metmuseum.org/art/collection/search/318622",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449533/DP231460FORMAT_ptwf43.png").open
artwork24.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork24.categories = [african, decorative, met]

#GRECOROMAN
puts "creating grecoroman artworks"

artwork25 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449821/Roman_fresco_Villa_dei_Misteri_Pompeii_001_moxmwm.png").open
artwork25.photo.attach(io: file, filename: "villamysteries.png", content_type: "image/png")

artwork25.categories = [greco, painting, insitu]

artwork26 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449901/V%C3%A9nus_de_Milo_-_Mus%C3%A9e_du_Louvre_AGER_LL_299___N_527___Ma_399_fjljbh.png").open
artwork26.photo.attach(io: file, filename: "venus.png", content_type: "image/png")

artwork26.categories = [greco, sculpture, louvre]

artwork27 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449867/The_Parthenon_in_Athens_ywbwb0.png").open
artwork27.photo.attach(io: file, filename: "parthenon.png", content_type: "image/png")

artwork27.categories = [greco, architecture, insitu]

#ISLAMIC
puts "creating islamic artworks"

artwork28 = Artwork.create!(
  average_score: 6000,
  name: "the Shah Mosque",
  artist: "	Ali Akbar Isfahani",
  latitude: 32.654444,
  longitude: 51.6775,
  creation_date: 1629,
  dimensions: "H.: 56 m",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Shah_Mosque_(Isfahan)",
  attribution_licence: "By Patrickringgenberg - Wiki Commons (Isfahan Royal Mosque general.JPG), CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=135674424",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449640/Isfahan_Royal_Mosque_general__retouched_kiomxj.png").open
artwork28.photo.attach(io: file, filename: "shahmosque.png", content_type: "image/png")

artwork28.categories = [islamic, architecture, insitu]

artwork29 = Artwork.create!(
  average_score: 6000,
  name: "Insignia",
  artist: "anonyme",
  latitude: 41.0766019,
  longitude: 29.052495,
  creation_date: 1560,
  dimensions: "H. : 52 cm",
  materials: "Ink, opaque watercolor, and gold on paper",
  info_link: "https://www.metmuseum.org/art/collection/search/449533#:~:text=1520%E2%80%9366),-ca.&text=The%20Ottoman%20tughra%20is%20a,papers%2C%20correspondence%2C%20and%20coins.",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449555/DP251197_wo2x8m.png").open
artwork29.photo.attach(io: file, filename: "insignia.png", content_type: "image/png")

artwork29.categories = [islamic, painting, met]

artwork30 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449798/Patio_de_los_Leones._Alhambra_de_Granada._Spain_ldwami.png").open
artwork30.photo.attach(io: file, filename: "granada.png", content_type: "image/png")

artwork30.categories = [islamic, architecture, insitu]

#BAROQUE
puts "creating baroque artworks"

artwork31 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449829/Santa_Maria_della_Salute_from_Hotel_Monaco_qq2zcc.png").open
artwork31.photo.attach(io: file, filename: "stMary.png", content_type: "image/png")

artwork31.categories = [baroque, architecture, insitu]

artwork32 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449901/Therese_fpzcxb.png").open
artwork32.photo.attach(io: file, filename: "stTherese.png", content_type: "image/png")

artwork32.categories = [baroque, sculpture, insitu]

artwork33 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449689/Las_Meninas__by_Diego_Vel%C3%A1zquez__from_Prado_in_Google_Earth_hexp2j.png").open
artwork33.photo.attach(io: file, filename: "Menines.png", content_type: "image/png")

artwork33.categories = [baroque, painting, prado]

#RENAISSANCE
puts "creating renaissance artworks"

artwork34 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449758/Moscow_05-2012_StBasilCathedral_gqgrde.png").open
artwork34.photo.attach(io: file, filename: "placerouge.png", content_type: "image/png")

artwork34.categories = [renaissance, architecture, insitu]

artwork35 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449482/David_bdaelt.png").open
artwork35.photo.attach(io: file, filename: "david.png", content_type: "image/png")

artwork35.categories = [renaissance, sculpture, academia]

artwork36 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449808/Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited_qws4jc.png").open
artwork36.photo.attach(io: file, filename: "VenusBirth.png", content_type: "image/png")

artwork36.categories = [renaissance, painting, offices]

#MEDIEVAL
puts "creating medieval artworks"

artwork37 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449706/La_B%C3%AAte_de_la_Mer_fbfgqz.png").open
artwork37.photo.attach(io: file, filename: "tapestry.png", content_type: "image/png")

artwork37.categories = [medieval, decorative, angers]

artwork38 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449402/Adam_o1qfwr.png").open
artwork38.photo.attach(io: file, filename: "adam.png", content_type: "image/png")

artwork38.categories = [medieval, sculpture, cluny]

artwork39 = Artwork.create!(
  average_score: 6000,
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
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449461/Church_bxspbe.png").open
artwork39.photo.attach(io: file, filename: "stavkirke.png", content_type: "image/png")

artwork39.categories = [medieval, architecture, insitu]

#10 Most Famous Paintings
puts "creating 10 most famous paintings artworks"

artwork40 = Artwork.create!(
  average_score: 6000,
  name: "La Joconde",
  artist: "Leonardo da Vinci",
  latitude: 43.7765,  # Florence, Italy (Location of creation)
  longitude: 11.2540,
  creation_date: 1510,
  dimensions: "H. : 77 cm, W. : 53 cm",
  materials: "Oil on poplar panel",
  info_link: "https://collections.louvre.fr/en/ark:/53355/cl010062370",
  attribution_licence: "Par Léonard de Vinci-version by Cybershot800i - Originally C2RMF, Domaine public, https://commons.wikimedia.org/w/index.php?curid=22963578",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449752/Mona_Lisa__by_Leonardo_da_Vinci__from_C2RMF_natural_color_k1ny5x.png").open
artwork40.photo.attach(io: file, filename: "joconde.png", content_type: "image/png")

artwork40.categories = [renaissance, painting, louvre]

artwork41 = Artwork.create!(
  average_score: 6000,
  name: "The Starry Night",
  artist: "Vincent van Gogh",
  latitude: 43.7711,  # Saint-Rémy-de-Provence, France (Location of creation)
  longitude: 4.8319,
  creation_date: 1889,
  dimensions: "H. : 73.7 cm, W. : 92.1 cm",
  materials: "Oil on canvas",
  info_link: "https://www.moma.org/collection/works/79802",
  attribution_licence: "Par Vincent van Gogh — bgEuwDxel93-Pg — Google Arts & Culture, Domaine public, https://commons.wikimedia.org/w/index.php?curid=25498286",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449911/Van_Gogh_-_Starry_Night_-_Google_Art_Project_poc3ik.png").open
artwork41.photo.attach(io: file, filename: "starryNight.png", content_type: "image/png")

artwork41.categories = [modern, painting, moma]

artwork42 = Artwork.create!(
  average_score: 6000,
  name: "The Persistence of Memory",
  artist: "Salvador Dalí",
  latitude: 42.293753,  # Figueres, Spain (Location of creation)
  longitude: 3.285339,
  creation_date: 1931,
  dimensions: "H. : 24 cm, W. : 33 cm",
  materials: "Oil on canvas",
  info_link: "https://www.moma.org/collection/works/79018",
  attribution_licence: "By Salvador Dalí (1904-1989) - Image taken [http://0.tqn.com/d/arthistory/1/0/l/i/dali_moma_0708_11.jpg fromAbout.com], Fair use, https://en.wikipedia.org/w/index.php?curid=20132344"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449878/The_Persistence_of_Memory_rtsieg.png").open
artwork42.photo.attach(io: file, filename: "Memory.png", content_type: "image/png")

artwork42.categories = [contempo, painting, moma]

artwork43 = Artwork.create!(
  average_score: 6000,
  name: "The Scream",
  artist: "Edvard Munch",
  latitude: 59.9139,  # Oslo, Norway (Location of creation)
  longitude: 10.7415,
  creation_date: 1893,
  dimensions: "H. : 91 cm, W. : 73.5 cm",
  materials: "Oil, tempera, and pastel on cardboard",
  info_link: "https://www.nasjonalmuseet.no/en/collection/object/NG.M.00939",
  attribution_licence: "Par Edvard Munch — National Gallery of Norway 8 janvier 2019 (date de téléversement) de Coldcreation, Domaine public, https://commons.wikimedia.org/w/index.php?curid=69541493"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449601/Edvard_Munch__1893__The_Scream_tn0fj9.png").open
artwork43.photo.attach(io: file, filename: "scream.png", content_type: "image/png")

artwork43.categories = [modern, painting, oslo]

artwork44 = Artwork.create!(
  average_score: 6000,
  name: "White on White",
  artist: "Kazimir Malevich",
  latitude: 55.7558,  # Moscow, Russia (Location of creation)
  longitude: 37.6173,
  creation_date: 1918,
  dimensions: "H. : 79.5 cm, W. : 79.5 cm",
  materials: "Oil on canvas",
  info_link: "https://www.moma.org/collection/works/80385",
  attribution_licence: "Kazimir Malevich, Public domain, via Wikimedia Commons"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449915/White_on_White__Malevich__1918_yy62pz.png").open
artwork44.photo.attach(io: file, filename: "white.png", content_type: "image/png")

artwork44.categories = [contempo, painting, moma]

artwork45 = Artwork.create!(
  average_score: 6000,
  name: "Girl with a Pearl Earring",
  artist: "Johannes Vermeer",
  latitude: 52.0114017,  # Delft, Netherlands (Location of creation)
  longitude: 4.35839,
  creation_date: 1665,
  dimensions: "H. : 44.5 cm, W. : 39 cm",
  materials: "Oil on canvas",
  info_link: "https://www.mauritshuis.nl/en/our-collection/artworks/670-girl-with-a-pearl-earring/",
  attribution_licence: "Par Johannes Vermeer — https://www.mauritshuis.nl/, Domaine public, https://commons.wikimedia.org/w/index.php?curid=55017931"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449392/1665_Girl_with_a_Pearl_Earring_wvcuf2.png").open
artwork45.photo.attach(io: file, filename: "pearl.png", content_type: "image/png")

artwork45.categories = [baroque, painting, mauritshuis]

artwork46 = Artwork.create!(
  average_score: 6000,
  name: "The Last Supper",
  artist: "Leonardo da Vinci",
  latitude: 45.466667,  # Milan, Italy (Location of creation)
  longitude: 9.170833,
  creation_date: 1495,
  dimensions: "H. : 460 cm, W. : 880 cm",
  materials: "Tempera on gesso, pitch, and mastic",
  info_link: "https://en.wikipedia.org/wiki/The_Last_Supper_(Leonardo)",
  attribution_licence: "Par Léonard de Vinci — Source inconnue, Domaine public, https://commons.wikimedia.org/w/index.php?curid=24759",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449707/Leonardo_da_Vinci__1452-1519__-_The_Last_Supper__1495-1498_l8ftgi.png").open
artwork46.photo.attach(io: file, filename: "supper.png", content_type: "image/png")

artwork46.categories = [renaissance, painting, insitu]

artwork47 = Artwork.create!(
  average_score: 6000,
  name: "The Kiss",
  artist: "Gustav Klimt",
  latitude: 48.2022,  # Vienna, Austria (Location of creation)
  longitude: 16.3705,
  creation_date: 1907,
  dimensions: "H. : 180 cm, W. : 180 cm",
  materials: "Oil on canvas, gold leaf",
  info_link: "https://www.belvedere.at/en/kiss-gustav-klimt",
  attribution_licence: "Par Gustav Klimt — Google Art Project, Domaine public, https://commons.wikimedia.org/w/index.php?curid=38827275"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449918/The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute_qbilfv.png").open
artwork47.photo.attach(io: file, filename: "kiss.png", content_type: "image/png")

artwork47.categories = [contempo, painting, belvedere]

artwork48 = Artwork.create!(
  average_score: 6000,
  name: "The Night Watch",
  artist: "Rembrandt van Rijn",
  latitude: 52.3608,  # Amsterdam, Netherlands (Location of creation)
  longitude: 4.8854,
  creation_date: 1642,
  dimensions: "H. : 363 cm, W. : 437 cm",
  materials: "Oil on canvas",
  info_link: "https://www.rijksmuseum.nl/en/collection/object/The-Night-Watch-Militia-Company-of-District-II-under-the-Command-of-Captain-Frans-Banninck-Cocq--3137deb45cd7765f9a76084a16c99544",
  attribution_licence: "Par Rembrandt — http://hyper-resolution.org/view.html?i=Rijksmuseum/SK-C-5/SK-C-5_VIS_20-um_2019-12-21 downloaded with dezoomify-rs, Domaine public, https://commons.wikimedia.org/w/index.php?curid=90131410",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449377/1024px-The_Night_Watch_-_HD_whlxws.png").open
artwork48.photo.attach(io: file, filename: "nightWatch.png", content_type: "image/png")

artwork48.categories = [baroque, painting, rijksmuseum]

artwork49 = Artwork.create!(
  average_score: 6000,
  name: "American Gothic",
  artist: "Grant Wood",
  latitude: 41.9771,  # Eldon, Iowa, USA (Location of creation)
  longitude: -91.6688,
  creation_date: 1930,
  dimensions: "H. : 78.7 cm, W. : 65.3 cm",
  materials: "Oil on beaverboard",
  info_link: "https://www.artic.edu/artworks/6565/american-gothic",
  attribution_licence: "Par Grant Wood — 5QEPm0jCc183Aw sur l’Institut culturel Google résolution maximale, Domaine public, https://commons.wikimedia.org/w/index.php?curid=22730836",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449634/Grant_Wood_-_American_Gothic_-_Google_Art_Project_drkmkx.png").open
artwork49.photo.attach(io: file, filename: "americanGothic.png", content_type: "image/png")

artwork49.categories = [contempo, painting, chicago]

artwork50 = Artwork.create!(
  average_score: 6000,
  name: "The Fighting Temeraire",
  artist: "J.M.W. Turner",
  latitude: 51.4915,  # London, England (Location of creation)
  longitude: -0.1280,
  creation_date: 1839,
  dimensions: "H. : 91.4 cm, W. : 121.9 cm",
  materials: "Oil on canvas",
  info_link: "https://www.nationalgallery.org.uk/paintings/joseph-mallord-william-turner-the-fighting-temeraire",
  attribution_licence: "Par Joseph Mallord William Turner — National Gallery of Art, Domaine public, https://commons.wikimedia.org/w/index.php?curid=37144597",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449378/1280px-The_Fighting_Temeraire__JMW_Turner__National_Gallery_x2yhah.png").open
artwork50.photo.attach(io: file, filename: "fightingTemeraire.png", content_type: "image/png")

artwork50categories = [modern, painting, nationalgallery]

artwork51 = Artwork.create!(
  average_score: 6000,
  name: "The garden of earthly delights",
  artist: "Hieronymus Bosch",
  latitude: 51.6889387,
  longitude: 5.303116,
  creation_date: 1500,
  dimensions: "205.5 x 384.9 cm",
  materials: "Oil on panel",
  info_link: "https://www.museodelprado.es/en/the-collection/art-work/the-garden-of-earthly-delights-triptych/02388242-6d6a-4e9e-a992-e1311eab3609",
  attribution_licence: "Par Jérôme Bosch — Galería online, Museo del Prado., Domaine public, https://commons.wikimedia.org/w/index.php?curid=45147809",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449611/El_jard%C3%ADn_de_las_Delicias__de_El_Bosco_ekdewl.png").open
artwork51.photo.attach(io: file, filename: "Bosch.png", content_type: "image/png")

artwork51.categories = [renaissance, painting, prado]

#Famous Sculpture
puts "creating famous sculpture artworks"

artwork52 = Artwork.create!(
  average_score: 6000,
  name: "Christ the Redeemer",
  artist: "Paul Landowski",
  latitude: -22.9519,  # Rio de Janeiro, Brazil (Location of creation)
  longitude: -43.2105,
  creation_date: 1931,
  dimensions: "H. : 30 m",
  materials: "Reinforced concrete and soapstone",
  info_link: "https://en.wikipedia.org/wiki/Christ_the_Redeemer_(statue)",
  attribution_licence: "Par Arne Müseler / www.arne-mueseler.com, CC BY-SA 3.0 de, https://commons.wikimedia.org/w/index.php?curid=116404602",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449470/Christ_the_Redeemer_-_Cristo_Redentor_dib0hk.png").open
artwork52.photo.attach(io: file, filename: "Corcovado.png", content_type: "image/png")

artwork52.categories = [contempo, sculpture, insitu]

artwork53 = Artwork.create!(
  average_score: 6000,
  name: "Mount Rushmore",
  artist: "Gutzon Borglum",
  latitude: 43.8791,  # South Dakota, USA (Location of creation)
  longitude: -103.4591,
  creation_date: 1941,
  dimensions: "H. : 18 m per face",
  materials: "Granite",
  info_link: "https://www.nps.gov/moru/learn/historyculture/why-these-four-presidents.htm",
  attribution_licence: "Par Thomas Wolf, www.foto-tw.de, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=90107110",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449773/Mount_Rushmore_detail_view__100MP_fhcurg.png").open
artwork53.photo.attach(io: file, filename: "Rushmore.png", content_type: "image/png")

artwork53.categories = [contempo, sculpture, insitu]

artwork54 = Artwork.create!(
  average_score: 6000,
  name: "Laocoön and His Sons",
  artist: "Agesander, Athenodoros & Polydorus of Rhodes",
  latitude: 41.8902,  # Vatican City (Location of discovery)
  longitude: 12.4534,
  creation_date: -35,
  dimensions: "H. : 2.42 m",
  materials: "Marble",
  info_link: "https://en.wikipedia.org/wiki/Laoco%C3%B6n_and_His_Sons",
  attribution_licence: "By Wilfredo Rafael Rodriguez Hernandez - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=145566250",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449688/Laoco%C3%B6n_and_his_sons_group_veckok.png").open
artwork54.photo.attach(io: file, filename: "Laocoon.png", content_type: "image/png")

artwork54.categories = [greco, sculpture, vatican]

artwork55 = Artwork.create!(
  average_score: 6000,
  name: "Manneken Pis",
  artist: "Jérôme Duquesnoy",
  latitude: 50.8450,  # Brussels, Belgium (Location of creation)
  longitude: 4.3499,
  creation_date: 1619,
  dimensions: "H. : 61 cm",
  materials: "Bronze",
  info_link: "https://www.brussels.be/manneken-pis",
  attribution_licence: "Par Bruxelles_Manneken_Pis.jpg: Myrabelladerivative work: Myrabella (talk) — Cette image a été extraite d'un autre fichier, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15584299",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449334/800px-Bruxelles_Manneken_Pis_cropped_pzflex.png").open
artwork55.photo.attach(io: file, filename: "manneken.png", content_type: "image/png")

artwork55.categories = [baroque, sculpture, insitu]

artwork56 = Artwork.create!(
  average_score: 6000,
  name: "Victory of Samothrace",
  artist: "anonyme",
  latitude: 40.4511544,
  longitude: 25.5856572,
  creation_date: -190,
  dimensions: "H. : 2.75 m",
  materials: "Marble",
  info_link: "https://collections.louvre.fr/en/ark:/53355/cl010252531",
  attribution_licence: "Par Shonagon — Travail personnel, CC0, https://commons.wikimedia.org/w/index.php?curid=81325360",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449913/Victoire_de_Samothrace_-_Musee_du_Louvre_-_20190812_qfep0f.png").open
artwork56.photo.attach(io: file, filename: "samothrace.png", content_type: "image/png")

artwork56.categories = [greco, sculpture, louvre]

artwork57 = Artwork.create!(
  average_score: 6000,
  name: "The Statue of Liberty",
  artist: "Frédéric Auguste Bartholdi",
  latitude: 48.8875,  # Place de Wagram, Paris (Location of creation)
  longitude: 2.304722222222222,
  creation_date: 1886,
  dimensions: "H. : 46 m (93 m including pedestal)",
  materials: "Copper",
  info_link: "https://en.wikipedia.org/wiki/Statue_of_Liberty",
  attribution_licence: "By AskALotl - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=149005856"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449600/Front_view_of_Statue_of_Liberty_with_pedestal_and_base_2024_mehonl.png").open
artwork57.photo.attach(io: file, filename: "liberty.png", content_type: "image/png")

artwork57.categories = [modern, sculpture, insitu]

puts "creating famous architecture artworks"

artwork58 = Artwork.create!(
  average_score: 6000,
  name: "The Colosseum",
  artist: "anonyme",
  latitude: 41.890278,  # Rome, Italy (Location of creation)
  longitude: 12.492222,
  creation_date: 80,
  dimensions: "H. : 48 m, W. : 189 m",
  materials: "Roman concrete, stone",
  info_link: "https://en.wikipedia.org/wiki/Colosseum",
  attribution_licence: "By FeaturedPics - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=95579199"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449487/Colosseo_2020_m3tcyo.png").open
artwork58.photo.attach(io: file, filename: "colisée.png", content_type: "image/png")

artwork58.categories = [greco, architecture, insitu]

artwork59 = Artwork.create!(
  average_score: 6000,
  name: "Notre-Dame de Paris Façade",
  artist: "Pierre de Montreuil",
  latitude: 48.8530,  # Paris, France (Location of creation)
  longitude: 2.3499,
  creation_date: 1250,
  dimensions: "H. : 43 m, W. : 40 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Notre-Dame_de_Paris",
  attribution_licence: "By Peter Haas, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=32131500",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449772/Notre-Dame_de_Paris_2013-07-24_ojinkc.png").open
artwork59.photo.attach(io: file, filename: "pendant.png", content_type: "image/png")

artwork59.categories = [medieval, architecture, insitu]

artwork60 = Artwork.create!(
  average_score: 6000,
  name: "Abu Simbel Temples",
  artist: "anonyme",
  latitude: 22.3350,  # Abu Simbel, Egypt (Location of creation)
  longitude: 31.6250,
  creation_date: -1250,
  dimensions: "H. : 20 m (Main statues), W. : 35 m (facade)",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Abu_Simbel",
  attribution_licence: "Par MatthiasKabel — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10125234",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449404/Abu_Simbel_great_temple_03_bwy2qk.png").open
artwork60.photo.attach(io: file, filename: "abu_simbel.png", content_type: "image/png")

artwork60.categories = [egyptian, architecture, insitu]

artwork61 = Artwork.create!(
  average_score: 6000,
  name: "Trajan's Column",
  artist: "Apollodorus of Damascus",
  latitude: 41.8958088,  # Rome, Italy (Location of creation)
  longitude: 12.4842733,
  creation_date: 113,
  dimensions: "H. : 30 m (column), W. : 3.7 m (diameter)",
  materials: "Limestone, Marble",
  info_link: "https://en.wikipedia.org/wiki/Trajan%27s_Column",
  attribution_licence: "By Livioandronico2013 - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=40640298",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449881/Trajan_s_Column_HD_vs8kfu.png").open
artwork61.photo.attach(io: file, filename: "trajan_column.png", content_type: "image/png")

artwork61.categories = [greco, sculpture, insitu]

artwork62 = Artwork.create!(
  average_score: 6000,
  name: "Great Mosque of the Omeyyad",
  artist: "anonyme",
  latitude: 33.5113889,  # Damascus, Syria (Location of creation)
  longitude: 36.306666666666665,
  creation_date: 715,
  dimensions: "H. : 45 m (minaret)",
  materials: "Stone, Brick",
  info_link: "https://en.wikipedia.org/wiki/Great_Mosque_of_Damascus",
  attribution_licence: "Par Tareq Mnadili — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=96860713",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449863/The_Omayad_Mosque_02_zvzlza.png").open
artwork62.photo.attach(io: file, filename: "omeyyad_mosque.png", content_type: "image/png")

artwork62.categories = [islamic, architecture, insitu]

artwork63 = Artwork.create!(
  average_score: 6000,
  name: "Mosque of Córdoba",
  artist: "anonyme",
  latitude: 37.87893421122978,  # Córdoba, Spain (Location of creation)
  longitude: -4.779429943521678,
  creation_date: 785,
  dimensions: "H. : 50 m (minaret)",
  materials: "Stone, Marble, Wood",
  info_link: "https://en.wikipedia.org/wiki/Great_Mosque_of_C%C3%B3rdoba",
  attribution_licence: "By Nicolas Vollmer from Munich [Allemagne] - Colonnes de la Mezquita, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=33238939",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449478/Colonnes_de_la_Mezquita__8281472877_him1ak.png").open
artwork63.photo.attach(io: file, filename: "cordoba_mosque.png", content_type: "image/png")

artwork63.categories = [islamic, architecture, insitu]

artwork64 = Artwork.create!(
  average_score: 6000,
  name: "Monumental Heads",
  artist: "anonyme",
  latitude: -27.1145,  # Easter Island, Chile (Location of creation)
  longitude: -109.3651,
  creation_date: 1000,
  dimensions: "H. : 10 m (largest)",
  materials: "Volcanic Tuff, Stone",
  info_link: "https://en.wikipedia.org/wiki/Moai",
  attribution_licence: "By Aurbina - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=133096",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449776/Moai_Rano_raraku_bivrk1.png").open
artwork64.photo.attach(io: file, filename: "easter_island_heads.png", content_type: "image/png")

artwork64.categories = [oceanian, sculpture, insitu]

artwork65 = Artwork.create!(
  average_score: 6000,
  name: "Leaning Tower of Pisa",
  artist: "Bonanno Pisano",
  latitude: 43.7230159,  # Pisa, Italy (Location of creation)
  longitude: 10.3966322,
  creation_date: 1173,
  dimensions: "H. : 57 m",
  materials: "Marble, Stone",
  info_link: "https://en.wikipedia.org/wiki/Leaning_Tower_of_Pisa",
  attribution_licence: "By Saffron Blaze - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=29651325",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449863/The_Leaning_Tower_of_Pisa_SB.jpeg_elqnbg.png").open
artwork65.photo.attach(io: file, filename: "pisa_tower.png", content_type: "image/png")

artwork65.categories = [medieval, architecture, insitu]

artwork66 = Artwork.create!(
  average_score: 6000,
  name: "Gur-e-Amir Mausoleum",
  artist: "Muhammad ibn Mahmud",
  latitude: 39.6547,  # Samarkand, Uzbekistan (Location of creation)
  longitude: 66.9705,
  creation_date: 1415,
  dimensions: "H. : 41 m",
  materials: "Brick, Marble",
  info_link: "https://en.wikipedia.org/wiki/Gur-e_Amir",
  attribution_licence: "By Willard84 - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=60864374",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449833/ShrineofAmirTimur_dbvlfn.png").open
artwork66.photo.attach(io: file, filename: "gur_emir.png", content_type: "image/png")

artwork66.categories = [islamic, architecture, insitu]

artwork67 = Artwork.create!(
  average_score: 6000,
  name: "Château de Chambord",
  artist: "Domenico da Cortona",
  latitude: 47.6167,  # Chambord, France (Location of creation)
  longitude: 1.5167,
  creation_date: 1519,
  dimensions: "H. : 56 m",
  materials: "Limestone, Slate",
  info_link: "https://en.wikipedia.org/wiki/Ch%C3%A2teau_de_Chambord",
  attribution_licence: "By User:Elementerre, edited by Atoma and Sir Gawain - This file was derived from: Chateau Chambord edit.jpg, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7430105",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449458/ChateauChambordArialView01_y4v48i.png").open
artwork67.photo.attach(io: file, filename: "chambord_castle.png", content_type: "image/png")

artwork67.categories = [renaissance, architecture, insitu]

artwork68 = Artwork.create!(
  average_score: 6000,
  name: "Himeji Castle",
  artist: "anonyme",
  latitude: 34.8394,  # Himeji, Japan (Location of creation)
  longitude: 134.6939,
  creation_date: 1609,
  dimensions: "H. : 31.6 m",
  materials: "Wood, Stone, Clay",
  info_link: "https://en.wikipedia.org/wiki/Himeji_Castle",
  attribution_licence: "By Niko Kitsakis - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=40135622",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449697/Himeji_castle_in_may_2015_no8cpt.png").open
artwork68.photo.attach(io: file, filename: "himeji_castle.png", content_type: "image/png")

artwork68.categories = [eastasian, architecture, insitu]

artwork69 = Artwork.create!(
  average_score: 6000,
  name: "Hall of Mirrors",
  artist: "Jules Hardouin-Mansart, Charles Le Brun",
  latitude: 48.8049,  # Versailles, France (Location of creation)
  longitude: 2.1200,
  creation_date: 1684,
  dimensions: "",
  materials: "Stone, Marble, Wood, Gold",
  info_link: "https://en.wikipedia.org/wiki/Palace_of_Versailles",
  attribution_licence: "Par Photo: Myrabella / Wikimedia Commons, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15781169",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449469/Chateau_Versailles_Galerie_des_Glaces_ntghir.png").open
artwork69.photo.attach(io: file, filename: "versailles_castle.png", content_type: "image/png")

artwork69.categories = [baroque, architecture, insitu]

artwork70 = Artwork.create!(
  average_score: 6000,
  name: "Fallingwater",
  artist: "Frank Lloyd Wright",
  latitude: 39.9108,  # Mill Run, Pennsylvania, USA (Location of creation)
  longitude: -79.4707,
  creation_date: 1935,
  dimensions: "H. : 6.1 m (main structure), W. : 11.9 m (width)",
  materials: "Stone, Concrete, Glass",
  info_link: "https://en.wikipedia.org/wiki/Fallingwater",
  attribution_licence: "By lachrimae72 - https://pixabay.com/photos/house-in-nature-house-falling-water-2110133/, CC0, https://commons.wikimedia.org/w/index.php?curid=88743190",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449619/Fallingwater3_hdrzc4.png").open
artwork70.photo.attach(io: file, filename: "falling_water.png", content_type: "image/png")

artwork70.categories = [contempo, architecture, insitu]

puts "creating more asian artworks"

artwork71 = Artwork.create!(
  average_score: 6000,
  name: "The Buddha of Bamiyan",
  artist: "anonyme",
  latitude: 34.4322,  # Bamiyan, Afghanistan (Location of creation)
  longitude: 67.8486,
  creation_date: 450,
  dimensions: "H. : 55 m (large Buddha)",
  materials: "Sandstone",
  info_link: "https://en.wikipedia.org/wiki/Buddhas_of_Bamiyan",
  attribution_licence: "By Buddha Bamiyan 1963.jpg: UNESCO/A Lezine; Original uploader was Tsui at de.wikipedia.Later version(s) were uploaded by Liberal Freemason at de.wikipedia.Buddhas of Bamiyan4.jpg: Carl Montgomeryderivative work: Zaccarias (talk) - Buddha Bamiyan 1963.jpgBuddhas of Bamiyan4.jpg, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8249891",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449854/Taller_Buddha_of_Bamiyan_before_and_after_destruction_rlaqhy.png").open
artwork71.photo.attach(io: file, filename: "buddha_bamiyan.png", content_type: "image/png")

artwork71.categories = [indian, sculpture, insitu]

artwork72 = Artwork.create!(
  average_score: 6000,
  name: "The Terracotta Army",
  artist: "anonyme",
  latitude: 34.3833,  # Xi'an, China (Location of creation)
  longitude: 109.2794,
  creation_date: -210,
  dimensions: "H. : 1.8 m (average)",
  materials: "Terracotta",
  info_link: "https://en.wikipedia.org/wiki/Terracotta_Army",
  attribution_licence: "By kevinmcgill from Den Bosch, Netherlands - KAM_5111, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=31690622",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449853/Terracotta_Army__6143564816_svsxjl.png").open
artwork72.photo.attach(io: file, filename: "terracotta_army.png", content_type: "image/png")

artwork72.categories = [eastasian, sculpture, insitu]

artwork73 = Artwork.create!(
  average_score: 6000,
  name: "Daibutsu of Nara",
  artist: "Unkei",
  latitude: 34.6853,  # Nara, Japan (Location of creation)
  longitude: 135.8050,
  creation_date: 749,
  dimensions: "H. : 15 m",
  materials: "Bronze, Copper",
  info_link: "https://en.wikipedia.org/wiki/Great_Buddha_of_Nara",
  attribution_licence: "Public Domain, https://commons.wikimedia.org/w/index.php?curid=203057",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449352/800px-NaraTodaijiDaibutsu0212_rm6yru.png").open
artwork73.photo.attach(io: file, filename: "daibutsu_nara.png", content_type: "image/png")

artwork73.categories = [eastasian, sculpture, insitu]

puts "creating american artworks"
artwork74 = Artwork.create!(
  average_score: 6000,
  name: "Washington Crossing the Delaware",
  artist: "Emanuel Leutze",
  latitude: 40.7723,  # New York City, USA (Location of creation)
  longitude: -73.9743,
  creation_date: 1851,
  dimensions: "H. : 155.5 cm, W. : 254 cm",
  materials: "Oil on Canvas",
  info_link: "https://en.wikipedia.org/wiki/Washington_Crossing_the_Delaware_(1851_paintings)"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449526/DP215410_ccx14d.png").open
artwork74.photo.attach(io: file, filename: "washington_crossing.png", content_type: "image/png")

artwork74.categories = [modern, painting, met]


puts "creating more ancient eastern artworks"

artwork75 = Artwork.create!(
  average_score: 6000,
  name: "The Standard of Ur",
  artist: "anonyme",
  latitude: 32.5454,  # Ur, Iraq (Location of creation)
  longitude: 44.4677,
  creation_date: -2550,
  dimensions: "H. : 46 cm",
  materials: "Wood, Lapislazuli, Shell, Red Limestone",
  info_link: "https://en.wikipedia.org/wiki/Standard_of_Ur",
  attribution_licence: "By Unknown author - royal standard of ur - Mosaic With Sumer Images, Awesome Stories., Public Domain, https://commons.wikimedia.org/w/index.php?curid=458495",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449836/Standard_of_Ur_-_War_rrfv4e.png").open
artwork75.photo.attach(io: file, filename: "standard_of_ur.png", content_type: "image/png")

artwork75.categories = [nearEast, decorative, british]

artwork76 = Artwork.create!(
  average_score: 6000,
  name: "The Code of Hammurabi",
  artist: "anonyme",
  latitude: 32.5427,  # Susa, Iran (Location of creation)
  longitude: 48.2943,
  creation_date: -1750,
  dimensions: "H. : 2.25 m",
  materials: "Basalt",
  info_link: "https://en.wikipedia.org/wiki/Code_of_Hammurabi",
  attribution_licence: "By Mbzt - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16931676"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449355/800px-P1050763_Louvre_code_Hammurabi_face_rwk_hrhl9u.png").open
artwork76.photo.attach(io: file, filename: "code_of_hammurabi.png", content_type: "image/png")

artwork76.categories = [nearEast, sculpture, louvre]

puts "creating more archeo artworks"

artwork77 = Artwork.create!(
  average_score: 6000,
  name: "Stonehenge",
  artist: "anonyme",
  latitude: 51.1789,  # Wiltshire, England (Location of creation)
  longitude: -1.8262,
  creation_date: -2500,
  dimensions: "H. : 4.1 m",
  materials: "Sarsen stones, Bluestones",
  info_link: "https://en.wikipedia.org/wiki/Stonehenge",
  attribution_licence: "By garethwiscombe - https://www.flickr.com/photos/garethwiscombe/1071477228/in/photostream/, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=13278936",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449837/Stonehenge2007_07_30_omihbp.png").open
artwork77.photo.attach(io: file, filename: "stonehenge.png", content_type: "image/png")

artwork77.categories = [archeo, architecture, insitu]

puts "creating more egyptian artworks"

artwork78 = Artwork.create!(
  average_score: 6000,
  name: "The Pyramid of Djoser",
  artist: "Imhotep",
  latitude: 29.8711,  # Saqqara, Egypt (Location of creation)
  longitude: 31.2165,
  creation_date: -2650,
  dimensions: "H. : 62 m, W. : 109 m (base)",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Pyramid_of_Djoser",
  attribution_licence: "By Charles J. Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=32434567",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449819/Saqqara_pyramid_ver_2_lemeir.png").open
artwork78.photo.attach(io: file, filename: "pyramid_of_djoser.png", content_type: "image/png")

artwork78.categories = [egyptian, architecture, insitu]

artwork79 = Artwork.create!(
  average_score: 6000,
  name: "The Nefertiti Bust",
  artist: "Thutmose",
  latitude: 27.645278, #Amarna
  longitude: 30.896389,
  creation_date: -1345,
  dimensions: "H. : 47 cm",
  materials: "Limestone, Plaster",
  info_link: "https://en.wikipedia.org/wiki/Bust_of_Nefertiti",
  attribution_licence: "By Philip Pikart - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8433730",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449781/Nofretete_Neues_Museum_i9ufoh.png").open
artwork79.photo.attach(io: file, filename: "nefertiti_bust.png", content_type: "image/png")

artwork79.categories = [egyptian, sculpture, berlin]


puts "creating archeo artworks"

artwork80 = Artwork.create!(
  average_score: 6000,
  name: "Agris Helmet",
  artist: "anonyme",
  latitude: 45.7755556,
  longitude: 0.3358333333333333,
  creation_date: -350,
  dimensions: "",
  materials: "Iron, Bronze, Gold and Coral",
  info_link: "https://en.wikipedia.org/wiki/Agris_Helmet",
  attribution_licence: "By Rosemania - https://www.flickr.com/photos/rosemania/4121249212, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=9404282",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449785/Parade_helmet_fdc0zk.png").open
artwork80.photo.attach(io: file, filename: "agris.png", content_type: "image/png")

artwork80.categories = [archeo, arms , angouleme]

artwork81 = Artwork.create!(
  average_score: 6000,
  name: "Gundestrup cauldron",
  artist: "anonyme",
  latitude: 56.816667,
  longitude: 9.55,
  creation_date: -100,
  dimensions: "H. : 42 cm",
  materials: "Silver",
  info_link: "https://en.wikipedia.org/wiki/Gundestrup_cauldron",
  attribution_licence: "By Nationalmuseet, Roberto Fortuna og Kira Ursem - http://samlinger.natmus.dk/DO/5324, Public Domain, https://commons.wikimedia.org/w/index.php?curid=47377960",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449658/Gundestrupkedlen-_00054__cropped_erybws.png").open
artwork81.photo.attach(io: file, filename: "gundestrup", content_type: "image/png")

artwork81.categories = [archeo, decorative, danemark]

puts "creating more roman artworks"

artwork82 = Artwork.create!(
  average_score: 6000,
  name: "Terme Boxer",
  artist: "anonyme",
  latitude: 41.8983333,
  longitude: 12.487222222222222,
  creation_date: -329,
  dimensions: "H. : 128 cm",
  materials: "Bronze",
  info_link: "https://en.wikipedia.org/wiki/Boxer_at_Rest",
  attribution_licence: "By Vicenç Valcárcel Pérez - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=99441223",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449435/Boxeur_kcb033.png").open
artwork82.photo.attach(io: file, filename: "boxer", content_type: "image/png")

artwork82.categories = [greco, sculpture, roman]

puts "creating more egyptian artworks"

artwork83 = Artwork.create!(
  average_score: 6000,
  name: "Seated Scribe",
  artist: "anonyme",
  latitude: 29.8739,
  longitude: 31.2156,
  creation_date: -2450,
  dimensions: "H. : 53.5 cm",
  materials: "Limestone, Crystal Eyes",
  info_link: "https://en.wikipedia.org/wiki/Seated_Scribe",
  attribution_licence: "By Rama, CC BY-SA 3.0 fr, https://commons.wikimedia.org/w/index.php?curid=73338717",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449344/800px-The_seated_scribe-E_3023-IMG_4267-gradient-contrast_lwhpdh.png").open
artwork83.photo.attach(io: file, filename: "seated_scribe", content_type: "image/jpeg")

artwork83.categories = [egyptian, sculpture, louvre]

puts "creating more asian artworks"

artwork84 = Artwork.create!(
  average_score: 6000,
  name: "The Great Wave off Kanagawa",
  artist: "Katsushika Hokusai",
  latitude: 35.6768601,
  longitude: 139.7638947,
  creation_date: 1831,
  dimensions: "H. : 25.7 cm, W. : 37.8 cm",
  materials: "Woodblock print, Ink on paper",
  info_link: "https://www.metmuseum.org/art/collection/search/45434"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449526/DP130155_mmfbxr.png").open
artwork84.photo.attach(io: file, filename: "great_wave", content_type: "image/jpeg")

artwork84.categories = [eastasian, painting, met]

puts "creating more islamic artworks"

artwork85 = Artwork.create!(
  average_score: 6000,
  name: "Pyxis of al-Mughira",
  artist: "anonyme",
  latitude: 37.8845813,
  longitude: -4.7760138,
  creation_date: 968,
  dimensions: "H. : 13.6 cm, Diameter: 10.7 cm",
  materials: "Ivory",
  info_link: "https://en.wikipedia.org/wiki/Pyxis_of_al-Mughira",
  attribution_licence: "By Workshop at the court of Medina Azahara - Marie-Lan Nguyen (2005), Public Domain, https://commons.wikimedia.org/w/index.php?curid=303871",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449323/800px-Pyxid_Al_Mughira_OA_4068_o5vrfr.png").open
artwork85.photo.attach(io: file, filename: "pyxis_of_al_mughira", content_type: "image/jpeg")

artwork85.categories = [islamic, decorative, louvre]

puts "creating more renaissance artworks"

artwork86 = Artwork.create!(
  average_score: 6000,
  name: "The Creation of Adam",
  artist: "Michelangelo",
  latitude: 41.9029,
  longitude: 12.4534,
  creation_date: 1512,
  dimensions: "H. : 280 cm, W. : 570 cm",
  materials: "Fresco",
  info_link: "https://en.wikipedia.org/wiki/The_Creation_of_Adam",
  attribution_licence: "By Michelangelo - See below., Public Domain, https://commons.wikimedia.org/w/index.php?curid=71427942",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449733/Michelangelo_-_Creation_of_Adam__cropped_jrlntc.png").open
artwork86.photo.attach(io: file, filename: "creation_of_adam", content_type: "image/jpeg")

artwork86.categories = [renaissance, painting, insitu]

puts "creating more medieval artworks"

artwork88 = Artwork.create!(
  average_score: 6000,
  name: "Smiling Angel",
  artist: "anonyme",
  latitude: 49.2535616,
  longitude: 4.033298,
  creation_date: 1230,
  dimensions: "H. : 2.1 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Smiling_Angel",
  attribution_licence: "By Mbzt - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=79420073",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449601/F3369_Reims_Cathedrale_portail_gauche_ange_rwk_b294zu.png").open
artwork88.photo.attach(io: file, filename: "smiling_angel_reims", content_type: "image/jpeg")

artwork88.categories = [medieval, sculpture, insitu]

artwork89 = Artwork.create!(
  average_score: 6000,
  name: "Sainte-Chapelle",
  artist: "anonyme",
  latitude: 48.8554,
  longitude: 2.3450,
  creation_date: 1248,
  dimensions: "",
  materials: "Stone, Stained Glass",
  info_link: "https://en.wikipedia.org/wiki/Sainte-Chapelle",
  attribution_licence: "By Didier B (Sam67fr) - Own work, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1109265",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449351/800px-Sainte_Chapelle_-_Upper_level_1_xnj5eh.png").open
artwork89.photo.attach(io: file, filename: "sainte_chapelle", content_type: "image/jpeg")

artwork89.categories = [medieval, architecture, insitu]

puts "creating more ancient nearEastern artworks"

artwork90 = Artwork.create!(
  average_score: 6000,
  name: "Statue of Ebih-Il",
  artist: "anonyme",
  latitude: 35.4833,
  longitude: 40.5494,
  creation_date: -2200,
  dimensions: "H. : 65 cm",
  materials: "Limestone, Shell, Lapis Lazuli",
  info_link: "https://en.wikipedia.org/wiki/Ebih-Il",
  attribution_licence: "By Applejuice - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=55087912",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449588/Ebih-ii_en_priere_miaeoe.png").open
artwork90.photo.attach(io: file, filename: "ebih_il", content_type: "image/jpeg")

artwork90.categories = [nearEast, sculpture, louvre]

artwork90 = Artwork.create!(
  average_score: 6000,
  name: "Panel with striding lion",
  artist: "anonyme",
  latitude: 32.5419444,
  longitude: 44.419999999999995,
  creation_date: -580,
  dimensions: "H. : 97 cm",
  materials: "glazed ceramic",
  info_link: "https://www.metmuseum.org/art/collection/search/322585"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449567/DT891_up7duu.png").open
artwork90.photo.attach(io: file, filename: "lion", content_type: "image/jpeg")

artwork90.categories = [nearEast, architecture, met]

puts "creating more indian artworks"

artwork91 = Artwork.create!(
  average_score: 6000,
  name: "Sanchi Stupa",
  artist: "anonyme",
  latitude: 23.4933,
  longitude: 77.7383,
  creation_date: -250,
  dimensions: "Diameter: 36.5 m, Height: 16.4 m",
  materials: "Stone",
  info_link: "https://en.wikipedia.org/wiki/Sanchi",
  attribution_licence: "By Shakti - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6355509",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449809/Sanchi_portique_ouest_obnaoi.png").open
artwork91.photo.attach(io: file, filename: "sanchi_stupa", content_type: "image/jpeg")

artwork91.categories = [indian, architecture, insitu]

artwork91 = Artwork.create!(
  average_score: 6000,
  name: "Shiva as the Lord of Dance",
  artist: "anonyme",
  latitude: 10.9094334,
  longitude: 78.3665347,
  creation_date: 1000,
  dimensions: "H: 76 cm",
  materials: "Bronze",
  info_link: "https://collections.lacma.org/node/240893"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449733/ma-84315_mhgr0b.png").open
artwork91.photo.attach(io: file, filename: "shiva", content_type: "image/jpeg")

artwork91.categories = [indian, sculpture, lacma]

artwork92 = Artwork.create!(
  average_score: 6000,
  name: "Buddha",
  artist: "anonyme",
  latitude: 27.4936111,
  longitude: 77.68222222222222,
  creation_date: 500,
  dimensions: "H: 85 cm",
  materials: "Red Sandstone",
  info_link: "https://www.metmuseum.org/art/collection/search/38198"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449538/DT237_srvau1.png").open
artwork92.photo.attach(io: file, filename: "mathura", content_type: "image/jpeg")

artwork92.categories = [indian, sculpture, met]

artwork93 = Artwork.create!(
  average_score: 6000,
  name: "Mahakala, Protector of the Tent",
  artist: "anonyme",
  latitude: 28.9238889,
  longitude: 89.59527777777777,
  creation_date: 1500,
  dimensions: "163x135 cm",
  materials: "Distemper on cloth ",
  info_link: "https://www.metmuseum.org/art/collection/search/78195"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449569/DP291219_edt_tjwud5.png").open
artwork93.photo.attach(io: file, filename: "mahakala", content_type: "image/jpeg")

artwork93.categories = [indian, painting, met]

puts "creating more asian artworks"

artwork94 = Artwork.create!(
  average_score: 6000,
  name: "Finches and bamboo",
  artist: "Emperor Huizong",
  latitude: 34.604167,
  longitude: 114.497222,
  creation_date: 1120,
  dimensions: "33 x 55 cm",
  materials: "ink, color, silk ",
  info_link: "https://www.metmuseum.org/art/collection/search/39936"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449506/DP151504_CRDFORMAT_hc1bmo.png").open
artwork94.photo.attach(io: file, filename: "Finches", content_type: "image/jpeg")

artwork94.categories = [eastasian, painting, met]

artwork95 = Artwork.create!(
  average_score: 6000,
  name: "Old Plum",
  artist: "Kano Sansetsu",
  latitude: 35.02385330200195,
  longitude: 135.72105407714844,
  creation_date: 1646,
  dimensions: "174,6 x 485,5 cm",
  materials: "ink, color, gold, and gold leaf on paper",
  info_link: "https://www.metmuseum.org/art/collection/search/44858"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449544/DT229FORMAT_cdcjt5.png").open
artwork95.photo.attach(io: file, filename: "oldPlum", content_type: "image/jpeg")

artwork95.categories = [eastasian, painting, met]

puts "creating more african artworks"

artwork96 = Artwork.create!(
  average_score: 6000,
  name: "Tombs of Buganda Kings",
  artist: "anonyme",
  latitude: 0.3291667,
  longitude: 32.5527775,
  creation_date: 1881,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Kasubi_Tombs"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449658/Kampala_Kasubi_Tombs_q2gre5.png").open
artwork96.photo.attach(io: file, filename: "buganda", content_type: "image/jpeg")

artwork96.categories = [african, architecture, insitu]

artwork97 = Artwork.create!(
  average_score: 6000,
  name: "Plaque: Warrior and Attendants",
  artist: "anonyme",
  latitude: 6.3330586,
  longitude: 5.6221058,
  creation_date: 1600,
  dimensions: "H.: 48cm",
  materials: "Brass",
  info_link: "https://www.metmuseum.org/art/collection/search/316393"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449576/DT1231_rsx3mj.png").open
artwork97.photo.attach(io: file, filename: "buganda", content_type: "image/jpeg")

artwork97.categories = [african, sculpture, met]

artwork98 = Artwork.create!(
  average_score: 6000,
  name: "Illuminated Gospel",
  artist: "anonyme",
  latitude: 11.9507719,
  longitude: 37.294878,
  creation_date: 1400,
  dimensions: "42x29 cm",
  materials: "Parchment (vellum), wood (acacia), tempera, ink",
  info_link: "https://www.metmuseum.org/art/collection/search/317618"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449517/DP109439_n6qm0c.png").open
artwork98.photo.attach(io: file, filename: "gospel", content_type: "image/jpeg")

artwork98.categories = [african, painting, met]

artwork99 = Artwork.create!(
  average_score: 6000,
  name: "Lidded Vessel",
  artist: "anonyme",
  latitude: 7.0209686,
  longitude: 5.0567477,
  creation_date: 1700,
  dimensions: "H. : 21 cm",
  materials: "Ivory, wood or coconut shell inlay",
  info_link: "https://www.metmuseum.org/art/collection/search/316594"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449577/DT1675_g5bewy.png").open
artwork99.photo.attach(io: file, filename: "vessel", content_type: "image/jpeg")

artwork99.categories = [african, decorative, met]

puts "creating more archeo artworks"

artwork100 = Artwork.create!(
  average_score: 6000,
  name: "Dome with dragons",
  artist: "anonyme",
  latitude: 49.003493,
  longitude: 2.517537,
  creation_date: -300,
  dimensions: "dia. : 21 cm",
  materials: "Bronze",
  info_link: "https://galeriemuseale.inrap.fr/index.php/Detail/objects/199924?lang=en_US",
  attribution_licence: "BastienM, CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0>, via Wikimedia Commons"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449509/D%C3%B4me_aux_dragons_kbenyh.png").open
artwork100.photo.attach(io: file, filename: "dôme", content_type: "image/jpeg")

artwork100.categories = [archeo, decorative, germain]

artwork101 = Artwork.create!(
  average_score: 6000,
  name: "Torc",
  artist: "anonyme",
  latitude: 46.8205556,
  longitude: 8.650277777777777,
  creation_date: -300,
  dimensions: "",
  materials: "Gold",
  info_link: "https://www.academia.edu/9826760/Der_keltische_Goldschatz_von_Erstfeld_-_Entdeckungsgeschichte_und_Fundort",
  attribution_licence: "Par Adrian Michael — Travail personnel, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=74511331"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449355/1024px-Goldschmuck_Erstfeld2_cyvbhc.png").open
artwork101.photo.attach(io: file, filename: "torc", content_type: "image/jpeg")

artwork101.categories = [archeo, decorative, zurich]

artwork102 = Artwork.create!(
  average_score: 6000,
  name: "Warrior Statue",
  artist: "anonyme",
  latitude: 50.3063889,
  longitude: 9.006944444444445,
  creation_date: -450,
  dimensions: "H. : 1,86 m",
  materials: "Limestone",
  info_link: "https://en.wikipedia.org/wiki/Glauberg",
  attribution_licence: "By Heinrich Stürzl - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=20241000",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449659/Keltenf%C3%BCrst_Glauberg_vorne_rechts_1_i0apvl.png").open
artwork102.photo.attach(io: file, filename: "glauberg", content_type: "image/jpeg")

artwork102.categories = [archeo, sculpture, glauberg]

artwork103 = Artwork.create!(
  average_score: 6000,
  name: "Disc",
  artist: "anonyme",
  latitude: 45.9732338,
  longitude: 3.4459862,
  creation_date: 600,
  dimensions: "dia. : 6,3 cm",
  materials: "Gold, garnet",
  info_link: "https://medaillesetantiques.bnf.fr/ws/catalogue/app/collection/record/ark:/12148/c33gbfs7q",
  attribution_licence: "Cabinet des médailles, CC BY-SA 3.0 <http://creativecommons.org/licenses/by-sa/3.0/>, via Wikimedia Commons",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449525/Disque_de_Limons_ruh9vn.png").open
artwork103.photo.attach(io: file, filename: "disc", content_type: "image/jpeg")

artwork103.categories = [archeo, decorative, cabinet]

puts "creating more medieval artworks"

artwork104 = Artwork.create!(
  average_score: 6000,
  name: "Book of Kells",
  artist: "anonyme",
  latitude: 54.8084156,
  longitude: -6.2204439,
  creation_date: 800,
  dimensions: "33 x 22 cm",
  materials: "Vellum, Ink",
  info_link: "https://en.wikipedia.org/wiki/Book_of_Kells",
  attribution_licence: "Domaine public, https://commons.wikimedia.org/w/index.php?curid=44550",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449678/KellsFol034rChiRhoMonogram_fnsnoq.png").open
artwork104.photo.attach(io: file, filename: "Kells", content_type: "image/jpeg")

artwork104.categories = [medieval, decorative, trinity]

artwork105 = Artwork.create!(
  average_score: 6000,
  name: "Virgin with Child",
  artist: "anonyme",
  latitude: 48.853364443382844,
  longitude: 2.34886444647068,
  creation_date: 1330,
  dimensions: "H. : 68 cm",
  materials: "Gilded silver, stones, pearls and translucent enamels.",
  info_link: "https://en.wikipedia.org/wiki/Virgin_of_Jeanne_d%27Evreux",
  attribution_licence: "By Shonagon - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=123638756",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449917/Vierge_%C3%A0_l_Enfant_dite_de_Jeanne_d_Evreux_-_Mus%C3%A9e_du_Louvre_Objets_d_Arts_MR_342_nbgg5y.png").open
artwork105.photo.attach(io: file, filename: "viergeEvreux", content_type: "image/jpeg")

artwork105.categories = [medieval, decorative, louvre]

puts "creating more preco artworks"

artwork106 = Artwork.create!(
  average_score: 6000,
  name: "Colossal Head",
  artist: "anonyme",
  latitude: 17.76201759838607,
  longitude: -94.75887274418815,
  creation_date: 1000,
  dimensions: "H. : 2,6 m",
  materials: "Basalt",
  info_link: "https://en.wikipedia.org/wiki/Olmec_colossal_heads",
  attribution_licence: "Par Utilisateur:Olmec — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=687051",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449552/Cabeza_Colosal_n%C2%BA1_del_Museo_Xalapa_orofuz.png").open
artwork106.photo.attach(io: file, filename: "olmeque", content_type: "image/jpeg")

artwork106.categories = [preco, sculpture, xalapa]

artwork107 = Artwork.create!(
  average_score: 6000,
  name: "Funerary Mask and jewellery",
  artist: "anonyme",
  latitude: 17.4836111,
  longitude: -92.04666666666667,
  creation_date: 683,
  dimensions: "H. 25,6 cm",
  materials: "jade stone, shell, nacre, obsidian stone",
  info_link: "https://en.wikipedia.org/wiki/Jade_mask_of_Pakal",
  attribution_licence: "© José Luiz Bernardes Ribeiro",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449659/Jade_Mask_of_Pakal_-_National_Museum_of_Antropology_-_Mexico_2024_xbeiww.png").open
artwork107.photo.attach(io: file, filename: "pakal", content_type: "image/jpeg")

artwork107.categories = [preco, decorative, mexico]

artwork108 = Artwork.create!(
  average_score: 6000,
  name: "Shirt",
  artist: "anonyme",
  latitude: -10.0643674,
  longitude: -77.9718798,
  creation_date: 675,
  dimensions: "",
  materials: "camelid hair, cotton",
  info_link: "https://www.metmuseum.org/art/collection/search/315786",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449608/DT1269_e0qeri.png").open
artwork108.photo.attach(io: file, filename: "tunique", content_type: "image/jpeg")

artwork108.categories = [preco, costume, met]

artwork109 = Artwork.create!(
  average_score: 6000,
  name: "Codex Borbonicus",
  artist: "anonyme",
  latitude: 19.4326296,
  longitude: -99.1331785,
  creation_date: 1525,
  dimensions: "L. : 14.2 m",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Codex_Borbonicus",
  attribution_licence: "Par Auteur inconnu — Codex Borbonicus from the Loubat collection, Domaine public, https://commons.wikimedia.org/w/index.php?curid=88926447",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449427/Borbonicus_Codex_p14_WikiFORMAT_r9lqk8.png").open
artwork109.photo.attach(io: file, filename: "Borbonicus", content_type: "image/jpeg")

artwork109.categories = [preco, painting, assemblée]

puts "creating more oceanian artworks"

artwork110 = Artwork.create!(
  average_score: 6000,
  name: "Hei Tiki",
  artist: "anonyme",
  latitude: -39.180047911895144,
  longitude: 176.10369949648918,
  creation_date: 1750,
  dimensions: "H. : 11 cm",
  materials: "Nephrite and Haliotis shell",
  info_link: "https://collections.lacma.org/node/238055",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734617345/HeiTiki_mkzs9f.png").open
artwork110.photo.attach(io: file, filename: "Tiki", content_type: "image/jpeg")

artwork110.categories = [oceanian, sculpture, lacma]

artwork111 = Artwork.create!(
  average_score: 6000,
  name: "Twig Snake's dream",
  artist: "Maggie Napangardi Watson",
  latitude: -23.6983884,
  longitude: 133.8812885,
  creation_date: 1990,
  dimensions: "92 x 92 cm",
  materials: "Acrylics on canva",
  info_link: "https://www.cooeeart.com.au/artists/napangardimaggi",
  attribution_licence: "Sailko, CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0>, via Wikimedia Commons"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734617354/AusPainting_yelg5c.png").open
artwork111.photo.attach(io: file, filename: "AboPaint", content_type: "image/jpeg")

artwork111.categories = [oceanian, painting, branly]

artwork112 = Artwork.create!(
  average_score: 6000,
  name: "Canoe Prow",
  artist: "anonyme",
  latitude: -39.03939,
  longitude: 177.4271389,
  creation_date: 1860,
  dimensions: "H. : 50.8 cm",
  materials: "Wood and Haliotis shell",
  info_link: "https://collections.lacma.org/node/215725",
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449715/ma-32951_qi7u9q.png").open
artwork112.photo.attach(io: file, filename: "Canoe", content_type: "image/jpeg")

artwork112.categories = [oceanian, sculpture, lacma]

puts "creating more renaissance artworks"

artwork112 = Artwork.create!(
  average_score: 6000,
  name: "Annunciation",
  artist: "Fra Angelico",
  latitude: 43.8011111,
  longitude: 11.285833333333333,
  creation_date: 1426,
  dimensions: "154 x 194 cm",
  materials: "Tempera on panel",
  info_link: "https://www.museodelprado.es/en/the-collection/art-work/the-annunciation/9b02b6c9-3618-4a92-a6b7-26f9076fcb67?searchMeta=angelico",
  attribution_licence: "By Fra Angelico - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=125056530",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449704/La_Anunciaci%C3%B3n_de_Fra_Angelico_bdttah.png").open
artwork112.photo.attach(io: file, filename: "annunciation", content_type: "image/jpeg")

artwork112.categories = [renaissance, painting, prado]

puts "creating more asian artworks"

artwork113 = Artwork.create!(
  average_score: 6000,
  name: "Potala Palace",
  artist: "anonyme",
  latitude: 29.6577778,
  longitude: 91.11694444444444,
  creation_date: 1688,
  dimensions: "",
  materials: "",
  info_link: "https://en.wikipedia.org/wiki/Potala_Palace",
  attribution_licence: "Par René Heise — Travail personnel, CC0, https://commons.wikimedia.org/w/index.php?curid=12851200",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734449726/Lhasa_Potala_o1atey.png").open
artwork113.photo.attach(io: file, filename: "potala", content_type: "image/jpeg")

artwork113.categories = [indian, architecture, insitu]

# Arms & Armors
puts "creating arms&Armors artworks"

artwork114 = Artwork.create!(
  average_score: 6000,
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
artwork114.photo.attach(io: file, filename: "asianArmor.png", content_type: "image/png")

artwork114.categories = [eastasian, arms, met]

artwork115 = Artwork.create!(
  average_score: 6000,
  name: "Short Sword (Yatagan) ",
  artist: "Ahmed Tekelü",
  latitude: 41.006381,
  longitude: 28.9758715,
  creation_date: 1530,
  dimensions: "H.: 59 cm",
  materials: "Steel, gold, ivory (walrus), silver, turquoise, pearls, rubies",
  info_link: "https://www.metmuseum.org/art/collection/search/24953",
  )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1734692791/Yatagan_nffqd1.png").open
artwork115.photo.attach(io: file, filename: "Yatagan.png", content_type: "image/png")

artwork115.categories = [islamic, arms, met]



  puts "Seed succesfuly created !"

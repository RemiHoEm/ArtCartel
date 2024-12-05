class GameCreator

  def initialize(category: nil)
    @category = category
  end

  def call
    @game = Game.create(invitation_code: SecureRandom.hex(3))
    if @category
      @category_artworks = @category.artworks
    else
      @category_artworks = Artwork.all
    end
    @category_artworks.shuffle.first(4).each_with_index do |artwork, index|
      GamesArtwork.create(game: @game, artwork: artwork, position: index + 1)
    end
    @game
  end

  private

  # def create_game
  #   new_game = []
  #   5.times do
  #     @artwork = Artwork.find(Artwork.pluck(:id).sample)
  #     if new_game.include?(@artwork)
  #     else
  #       @artwork.
  #     end
  #   end
  #     #create challenge
  #     #with random artworks
  #     #artworks are all unique
  #     #(final score made of 5 challenges scores)
  # end

  # def create_challenge
  #     #includes challenge new + create
  #     #save users input in db
  #     #(includes storing challenges scores)
  # end

end

# GameCreator.new(categories: []).call

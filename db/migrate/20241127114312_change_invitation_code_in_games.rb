class ChangeInvitationCodeInGames < ActiveRecord::Migration[7.1]
  def change
    change_column :games, :invitation_code, :string
  end
end

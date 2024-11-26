class CategoriesController < ApplicationController
  def filter_by_theme
    theme = params[:theme]

    # Vérifie que le paramètre "theme" est présent
    if theme.present?
      categories = Category.where(theme: theme)
      render json: categories
    else
      render json: { error: "Theme parameter is missing" }, status: :unprocessable_entity
    end
  end
end

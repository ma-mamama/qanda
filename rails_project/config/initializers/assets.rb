# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# scss個別読み込み設定
Rails.application.config.assets.precompile += %w(
    questions/show.css
    questions/index.css
    questions/new.css
    questions/edit.css
    common/header.css
    bootstrap.min.js
    popper.js
 )

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

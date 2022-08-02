json.extract! insta_post, :id, :image, :created_at, :updated_at
json.url insta_post_url(insta_post, format: :json)

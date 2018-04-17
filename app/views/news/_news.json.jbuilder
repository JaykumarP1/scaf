json.extract! news, :id, :s_no, :img, :title, :url, :created_at, :updated_at
json.url news_url(news, format: :json)

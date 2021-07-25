namespace :show_deleted do
  desc "Show deleted comments..."
  task comments: :environment do
    @comments = Comment.where(is_deleted: true)
    puts JSON.pretty_generate(JSON.parse(@comments.to_json))   
  end

  desc "Show deleted articles..."
  task articles: :environment do
    @articles = Article.where(is_deleted: true)
    puts JSON.pretty_generate(JSON.parse(@articles.to_json))
  end

end

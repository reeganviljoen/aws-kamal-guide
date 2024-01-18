require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test 'it should create an article' do
    article = Article.create(title: 'test', body: 'test123456')
    assert article.persisted?
  end

  test 'it should not create an article without a title' do
    article = Article.create(body: 'test')
    assert_not article.persisted?
  end

  test 'it should not create an article without a body' do
    article = Article.create(title: 'test')
    assert_not article.persisted?
  end

  test 'it should not create an article with a short body' do
    article = Article.create(title: 'test', body: 'test')
    assert_not article.persisted?
  end
end

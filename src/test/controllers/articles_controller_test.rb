require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get articles_path
    assert_response :success
  end

  test "should get show" do
    article = articles(:one)
    get article_path(article)
    assert_response :success
  end

  test "should get new" do
    get new_article_path
    assert_response :success
  end

  test "should create an article" do
    assert_difference("Article.count") do
      post articles_path, params: { article: { title: "test", body: "test123456" } }
    end
    assert_redirected_to article_path(Article.last)
  end

  test "should get edit" do
    article = articles(:two)
    get edit_article_path(article)
    assert_response :success
  end
end

require "test_helper"

class GridFor::Rails::GridForHelperTest < ActionView::TestCase

  def with_concat_grid_for(*args, &block)
    concat grid_for(*args, &block)
  end

  test "#row(options, &block)" do
    with_concat_grid_for(Object.new) { |g| g.row { "row content" } }
    assert_select "div.row-fluid", text: "row content"
  end

  test "#col(options = {}, &block) renders a div wihth span 12" do
    with_concat_grid_for(Object.new) { |g| g.col { "column content" } }
    assert_select "div.span12", text: "column content"
  end

  test "#col with size option renders a div with a span of the given size" do
    with_concat_grid_for(Object.new) { |g| g.col(size: 4) { "span4 content" } }
    assert_select "div.span4", text: "span4 content"
  end

  test "#col with class option renders a div with the given classes" do
    with_concat_grid_for(Object.new) { |g| g.col(class: "form-actions") { "custom css content" } }
    assert_select "div.span12.form-actions", text: "custom css content"
  end
end

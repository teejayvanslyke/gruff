#!/usr/bin/ruby

require File.dirname(__FILE__) + "/gruff_test_case"

class TestGruffSideStackedBar < GruffTestCase

  def setup
    @datasets = [
      [:A, [ 25 ]],
      [:B, [ 25 ]],
      [:C, [ 25 ]],
      [:D, [ 25 ]]
    ]
    @labels = {
      0 => 'Foobar'
    }
  end

  def test_graph_should_render_100_wide
    g = Gruff::SideStackedBar.new
    g.title = "Side Stacked Bar As Percentile"
    g.labels = @labels
    @datasets.each do |data|
      g.data(data[0], data[1])
    end
    g.write "test/output/side_stacked_bar_percentile.png"
  end

end

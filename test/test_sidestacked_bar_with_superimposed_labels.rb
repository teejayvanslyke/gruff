#!/usr/bin/ruby
require File.dirname(__FILE__) + "/gruff_test_case"

class TestGruffSideStackedBarWithSuperimposedLabels < GruffTestCase

  def setup
    @datasets = [
      [:Jimmy, [25, 36, 86, 39]],
      [:Charles, [80, 54, 67, 54]],
      [:Julie, [22, 29, 35, 38]]
      ]
    @sample_labels = {
        0 => '5/6', 
        1 => '5/15', 
        2 => '5/24'
      }      

  end

  def test_bar_graph
    g = Gruff::SideStackedBar.new
    g.title = "Stacked Bar With Superimposed Labels"
    g.labels = @sample_labels
    @datasets.each do |data|
      g.data(data[0], data[1], :overlay => data[1].map {|d| "#{d}%"})
    end
    g.write "test/output/side_stacked_with_superimposed_labels.png"
  end

end

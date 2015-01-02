require './lib/christmas_tree'

describe ChristmasTree do


  let(:tree){ChristmasTree.new(4)}

  context "#initialize" do
    it "contains a height" do

      expect(tree.height).to eq 4

    end

    it "contains a width double the height" do

      expect(tree.width).to eq 8
    end

    it "raises an error if height is less than 4" do
      
      expect { ChristmasTree.new(2) }.to raise_error
    end
  end

  context "#drawing_stars" do
    it "draws two spaces and a star" do
      blank_spaces = 2
      stars = 1

      expect(tree.drawing_stars(blank_spaces, stars)).to eq "  *\n"
    end

    it "draws one space and two stars" do
      blank_spaces = 1
      stars = 2

      expect(tree.drawing_stars(blank_spaces, stars)).to eq " **\n"
    end
  end

  context "#draw_tree" do

    it "draws a tree with a height of 4" do
      expected = <<-ct
   *
  ***
 *****
*******
      ct

      expect(tree.draw_tree).to eq expected
    end
  end

  context "#draw_base" do
    it "draws a tree with a base" do
      expected = <<-ct
   x
   x
   x
      ct

      expect(tree.draw_base).to eq expected
    end
  end

  context "#draw_tree_with_base" do
    it "draws a Christmas Tree" do
      expected = <<-ct
   *
  ***
 *****
*******
   x
   x
   x
      ct

      expect(tree.draw_tree_with_base).to eq expected

    end
  end

  # context "#user_input" do
  #   it "accepts user input" do
  #   end
  # end

end
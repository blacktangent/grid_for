require "spec_helper"

describe GridFor::GridForHelper do
  describe GridFor::GridForHelper::GridForBuilder do

    let(:object) { Struct.new(:name).new("Name") }

    describe "#row(options, &block)" do
      it "renders a div with bootstrap row css" do
        expect(described_class.new(object, ActionView::Base.new).row { "Hello" }).to eq(
          "<div class=\"row-fluid\">Hello</div>"
        )
      end
    end

    describe "#col(size, options = {}, &block)" do
      it "renders a div of the given size" do
        expect(described_class.new(object, ActionView::Base.new).col(4) { "Hello"}).to eq(
          "<div class=\"span4\">Hello</div>"
        )
      end
    end
  end
end

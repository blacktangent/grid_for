module GridFor
  module GridForHelper

    def grid_for(object, options = {}, &block)
      capture GridForBuilder.new(object, self), &block
    end

    class GridForBuilder
      include ActionView::Helpers

      attr_accessor :object, :template, :output_buffer

      def initialize(object, template)
        @object, @template = object, template
      end

      def row(options = {}, &block)
        content_tag(:div, class: "row-fluid") do
          template.capture(&block)
        end
      end

      def col(size = 12, options = {}, &block)
        content_tag(:div, class: "span#{size}") do
          template.capture(&block)
        end
      end

    end
  end
end

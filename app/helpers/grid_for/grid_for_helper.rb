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

      def col(options = {}, &block)
        options[:size] ||= 12

        content_tag(:div, class: classes(options)) do
          template.capture(&block)
        end
      end

      private

      def classes(options)
        "span#{options[:size]}".tap do |s|
          s << " #{options[:class]}" if options[:class]
        end
      end

    end
  end
end

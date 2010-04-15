$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/../../vendor/prawn/lib"
require "prawn"

module PDF
  class Writer
    
    def initialize
      @doc = Prawn::Document.new(:margin => 72)
    end
    
    def select_font(name)
      @doc.font(name)
    end
    
    def text(string, options={})
      @doc.text(string, :size => options[:font_size], 
                        :align => options[:justification])
    end
    
    def save_as(filename)
      @doc.render_file(filename)
    end
  end
end
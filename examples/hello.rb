require "#{File.dirname(__FILE__)}/example_helper"

pdf = PDF::Writer.new
pdf.select_font "Times-Roman"
pdf.text "Hello, Ruby.", :font_size => 72, :justification => :center

pdf.save_as("hello.pdf")

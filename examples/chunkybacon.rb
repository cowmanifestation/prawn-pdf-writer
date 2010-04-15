require "#{File.dirname(__FILE__)}/example_helper"

pdf = PDF::Writer.new
pdf.select_font "Times-Roman"
pdf.text "Chunky Bacon!!", :font_size => 72, :justification => :center

i0 = pdf.image "../images/chunkybacon.jpg", :resize => 0.75
i1 = pdf.image "../images/chunkybacon.png", :justification => :center, :resize => 0.75
pdf.image i0, :justification => :right, :resize => 0.75

pdf.text "Chunky Bacon!!", :font_size => 72, :justification => :center

pdf.save_as("chunkybacon.pdf")

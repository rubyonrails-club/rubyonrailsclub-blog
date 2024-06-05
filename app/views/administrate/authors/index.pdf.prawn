# frozen_string_literal: true

prawn_document do |pdf|
  pdf.text("Listando autores:")
  pdf.move_down(20)
  pdf.table(@authors.collect { |p| [p.id, p.name] })
end

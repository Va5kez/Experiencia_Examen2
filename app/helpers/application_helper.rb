module ApplicationHelper
  def total_ordenes(ordenes)
    return 0 unless ordenes.any?
    ordenes.sum(:total)
  end
end

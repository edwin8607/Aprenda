class EquipoAprendiz < ActiveRecord::Base
  belongs_to :equipo
  belongs_to :aprendiz
end

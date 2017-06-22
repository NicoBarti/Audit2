class Item < ApplicationRecord
validates :i1, presence: true
	validate :llenado_correcto
	validate :puntaje_valido

def llenado_correcto
	if i1.to_i > 0 
		if i2 == nil
			errors.add(:i2, "Por favor, contesta la segunda pregunta")
		end
		if i3 == nil
			errors.add(:i3, "Por favor, contesta la tecera pregunta")
		end
	end

	if i1.to_i == 0
		if i2.to_i > 0 || i3.to_i > 0
			errors.add(:i1, "Si no ha consumido alcohol en el último año, por favor revisa las preguntas dos y tres")
		end
	end
end

def puntaje_valido
	if i1.to_i == 0 || i1.to_i == 1 || i1.to_i == 2 || i1.to_i == 3 || i1.to_i == 4 
	else errors.add(:i1, "El puntaje de la pregunta uno no es válido")
	end

	if i2.to_i == 0 || i2.to_i == 1 || i2.to_i == 2 || i2.to_i == 3 || i2.to_i == 4 
	else errors.add(:i1, "El puntaje de la pregunta uno no es válido")
	end

	if i3.to_i == 0 || i3.to_i == 1 || i3.to_i == 2 || i3.to_i == 3 || i3.to_i == 4 
	else errors.add(:i1, "El puntaje de la pregunta uno no es válido")
	end
end


end

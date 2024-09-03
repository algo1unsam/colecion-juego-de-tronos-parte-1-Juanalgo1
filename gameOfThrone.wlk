import artefactos.*
import lugares.*

object daenerys{
    const property artefactos = #{}
    const property historial_objetos = []
    var property max_artefactos = 2

    method volverACasa() {
        rocadragon.artefactos().addAll(self.artefactos())
        artefactos.clear()
    }

    method encontrar(artefacto){
        historial_objetos.add(artefacto)
        if (artefactos.size() < max_artefactos) {
            artefactos.add(artefacto)
        } 
    }

    method posesiones(){
        return #{self.artefactos(), rocadragon.artefactos()}.flatten() 
    }

    method posee(artefacto){
        return artefactos.contains(artefacto) or rocadragon.artefactos().contains(artefacto)
    }

    
}

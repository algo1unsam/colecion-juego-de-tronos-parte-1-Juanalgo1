import artefactos.*
import lugares.*

object daenerys{
    const property artefactos = #{}
    const property historial_objetos = []

    method volverACasa() {
        rocadragon.artefactos().addAll(self.artefactos())
        artefactos.clear()
    }

    method encontrar(artefacto){
        historial_objetos.add(artefacto)
        if (artefactos.size() < 2) {
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

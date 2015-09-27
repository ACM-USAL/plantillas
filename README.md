# Plantillas ACM

Plantilla para informes del capítulo de estudiantes ACM USAL, siguiendo los [estándares de identidad de ACM](http://identitystandards.acm.org/).

### Contenidos

El paquete incluye clases para los siguientes tipos de documentos:

- Artículo (Completo)
- Libro (Pendiente)
- Nota de prensa (Pendiente)
- Portadas (Pendiente)

Además, se incluyen las fuentes utilizadas en los documentos y diferentes alternativas para la portada.

### Requisitos

[XeLaTeX](https://en.wikipedia.org/wiki/XeTeX) es necesario para la compilación de varios documentos.
Los documentos utilizan fuentes de la familia Myriad Pro. Se incluyen la misma en formato TrueType en la carpeta Myriad Pro

El documento ``certificate.tex`` utiliza la fuente Arial, incluida en el paquete ``uarial``, no incluido en la instalación por defecto de ``LaTeX``. Para instalar:

```bash
wget -q http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts
sudo texlua ./install-getnonfreefonts
sudo getnonfreefonts -a
```
(Ver [1](http://tex.stackexchange.com/a/60650/76599) y [2](http://www.ctan.org/tex-archive/fonts/urw/arial/) para más información)

### Uso

Se incluyen varios paquetes y clases:

- `acmusal.sty` Estilo básico aplicable a todos los documentos
- `acmreport.cls` Formato para documentos de varias páginas, como informes

Para compilar los ejemplos:

```bash
make
```


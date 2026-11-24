# Plantilla_laboratorio_ua Format

## Installing

```bash
quarto use template npulecio/plantilla-informes-de-laboratorio-UA-en-quarto
```

Esto instalará la plantilla y creará un .qmd de ejemplo que puedes usar para escribir tu documento. 

## Uso

La plantilla está diseñada para ser utilizada como formato para informes de laboratorio y otras tareas similares para cualquier facultad de la
universidad del atlántico, para este objetivo se crearon diversas variables que se pueden usar en el YAMl header y se modificaron otras.
A continuación se describen cuales son. 

author: Se modificó para que aparezca en "italic" con 10pt debajo de "Programa de - universidad del atlántico" Funciona igual que el default.

Programa: Indica a qué programa perteneces dentro de la institución, automaticamente lo agrega junto con el texto "Programa de (programa puesto) - Universidad del atlántico" No se puede modificar dicho texto automatico. 

sede: Nombre de la sede adjunta a la universidad del atlántico a la cual se pertenece, la palabra "atlántico" no es automática. 

linea-seccion: Dibuja una linea de color gris no modificable sobre cada titulo de nivel 1. Si no se utiliza titulos de nivel 1, debido a la configuración de quarto se le resta 1 a todos los titulos, dejando los titulos de segundo nivel como de primero y los de tercero como segundo, por lo cual, se recomienda utilizar titulos de primer nivel para dividir las secciones como se indica en el ejemplo. Por defecto viene en true, por lo que se puede quitar del YAML header sin problema, de querer desactivarlo puede ponerse en false.

## Otras modificaciones y consideraciones

Se agregaron y modificaron otros aspectos durante la creación de la plantilla, entre ellas, el encabezado, el cual no es modificable. También se modificó el comportamiento de los titulos de nivel 1 2 y 3 de tal forma que los titulos de nivel 1 se les dibuja una línea horizontal que puede desactivarse poniendo el linea-seccion en false mediante el YAML header. Tambien se modificó su posición por defecto, poniendolas en el centro, este mismo comportamiento se repite para los titulos de nivel 2 a diferencia de que a estos no se les dibuja la linea. El comportamiento de los textos de nivel 3 se mantiene igual.

Se recomienda usar los titulos de nivel 1 para dividir las secciones como resumen, introducción, resultados, etc. Los titulos de nivel 2 para dividir las secciones anteriores en secciones más pequeñas (como objetivos especificos dentro de objetivos) y los titulos de nivel 3 si se quiere dividir en secciones aún más pequeñas. Como aclaración, la plantilla solo sirve para renderizar en pdf mediante typst. 





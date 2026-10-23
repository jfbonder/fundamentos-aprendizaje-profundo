# Fundamentos matemáticos del aprendizaje profundo

Material del curso optativo *Fundamentos matemáticos del aprendizaje profundo* (Departamento de Matemática, FCEN-UBA), a cargo de Julián Fernández Bonder.

- `notas/` — notas de clase en español (LaTeX + PDF), con las figuras en `notas/Fig*.pdf` y sus fuentes TikZ en `notas/figuras_fuente/`.
- `practicas/` — 9 prácticas en notebooks de Jupyter/Colab (ejercicios teóricos + parte computacional en NumPy y PyTorch).

## Compilar las notas

```
cd notas
latexmk -pdf Notas-DL.tex
```

## Prácticas

Cada notebook corre en Google Colab (File → Open notebook → GitHub) o localmente con `numpy`, `matplotlib`, `scipy`, `scikit-learn` y `torch`.

## Origen y licencias

Las notas son una traducción y adaptación al español de partes de O. Calin, *Deep Learning Architectures. A Mathematical Approach*, Springer, 2020 (los capítulos 1–9 siguen los capítulos 1–9 del libro; el capítulo 10 sigue el capítulo 18), con correcciones, convenciones y figuras propias. **No se reclama autoría sobre el contenido del libro**; los derechos sobre el material original pertenecen a su autor y a Springer. Ver `NOTICE.md`.

Las prácticas, el código, las figuras y las modificaciones originales de este repositorio se publican bajo [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.es) (código bajo MIT, ver `LICENSE`). Esta licencia no se extiende al contenido adaptado de Calin.

Parte de la revisión, las figuras y las prácticas se elaboraron con asistencia de herramientas de inteligencia artificial; el contenido es responsabilidad del docente. Se agradecen correcciones vía *issues* o *pull requests*.

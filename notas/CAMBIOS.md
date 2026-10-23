# Cambios en notasv2 (respecto de Notas/Notas-DL.tex, que no se tocó)

Referencia: documento "Revisión de las notas". `Notas-DL.orig.tex` es la copia exacta del original.

## Lote 1: limpieza mecánica (etapa 2a)
- hyperref con `hidelinks` y metadatos (título y autor del PDF).
- `\label` movido después de `\caption` en las 44 figuras (ahora `\ref` da el número de figura), `\centering` y `[htbp]`.
- Quitado `\printindex` (no había entradas); cabecera del archivo actualizada (44 figuras).
- Erratas: "Agua en un tanque", "donde", "Hahn-Banach", "separabilidad", "aprender", "estará", "Ornstein".

## Lote 2: correcciones matemáticas (etapa 2b), parte 1
- Cap. 1: Ej. 1.5.4(a) reformulado (R inversible si |K|>0; contraejemplo si |K|=0).
- Cap. 3: G = C + λU (había un signo menos).
- Cap. 4: Teorema 4.2.2, reparametrización γ(t) = α(t/(1−t)) y γ' corregida.
- Cap. 5: perceptrón con H(x)=1 si x≥0 e y = φ(w·x − b); OR con b = 0,5; Ej. 5.8.7 (x2 < x1 − 0,5); pie de la Fig. 5.7 (−5x1+115); gradiente de 5.4.2 (denominador 1+e^{+u}).
- Cap. 6: inicializar con ceros no funciona (simetría), en 6.3 y en el resumen; fórmula de la varianza con w² y desigualdades corregidas.
- Cap. 7: transformada de Fourier con e^{−ixξ} (coincide con los ejemplos); Ej. 7.7.6 con convergencia puntual.
- Cap. 9: "=0" faltantes (3), Lema de separación L(f0)=δ, signo de H_{w,θ}.
- Cap. 10: |I_n∖D| < ε (Prop. 10.3.2 y Lusin), K ⊂ B en el Cor. 10.6.2, test de softmax z1>½ ⇒ G.

## Lote 3: estética al estilo de las notas de Transporte Óptimo

- Preámbulo: `hyperref` con enlaces de color (azul marino), paquetes `tikz`, `mathtools`, `enumitem`, paleta IC/DM.
- Portada TikZ (banda azul/cian/magenta, título, autor, tres figuras de las notas) y reverso con datos y atribución a Calin. Los logos IC.jpeg y DM.png se incluyen solo si están en la carpeta (hoy no están).
- Prefacio nuevo: autoría, contenido, convenciones y sobre la revisión (con mención a herramientas de IA; revisar el texto).
- Se eliminó `\frontmatter`/`\mainmatter`; el índice sigue al prefacio.
- Cada capítulo abre con un mapa de sus secciones y la correspondencia con Calin; todas las secciones tienen etiqueta `sec.cN.k`.

## Lote 4: correcciones matemáticas (etapa 2b), parte 2: caps. 2 a 5

- Cap. 2: delta de Dirac definida como distribución; ReLU' en 0; SiLU (nombre, cola, mínimo −0,278); S(0)=1 no es sgn; se agregan tanh = 2σ(2x)−1 y softplus; "tres tipos" corregido.
- Cap. 3: demostración de Gibbs rehecha (signo, soporte, caso de igualdad, KL); entropía discreta y continua (puede ser 0, +∞ o −∞); esperanza condicional (Ẑ y cota inferior C ≥ E[(Ẑ−Z)²]); log-verosimilitud negativa; U ≥ 0 con U(x)=0 ⇔ x=0 (condiciones necesarias); regularización L² (norma vs cuadrado) y L¹ (esparsidad); validación vs test (parada temprana con validación); doble descenso; geometría (b no regularizado, equivalencia penalización/restricción solo con convexidad); sobreajuste (heurística y cota de Rademacher); Ej. 3.1 y 3.5.
- Cap. 4: Taylor para C²; Hessiano 2D (casos det<0, det=0); nivel (conjuntos de subnivel dentro de una bola); Teorema 4.2.2 con demostración completa por flujo del gradiente (sin Lyapunov; se agrega entorno W); la crítica a Calin queda como observación formal; poligonal (cotas, m inferior); derivada direccional; o(η); Cauchy–Schwarz; Prop. 4.2.5 con hipótesis de compacto; ejemplo ½y²−x; Prop. H (c)(d); lema del descenso y definición del método de Newton; búsqueda estocástica (o(δ), N(0,δI), H definida positiva, tensión en plateau, ejemplo OU).
- Cap. 5: figuras con \ref; XOR (tres perceptrones, prueba algebraica con ≥); variante 1 (no se puede por descenso de gradiente, regla de Rosenblatt); softmax (índice w_12, costo); sigmoide (tiende, log-odds); 5.4.1 (entropía cruzada, convexidad, datos separables); 5.4.2 (mal clasificados, I(x), σ en −ln); 5.5 (signo −2η, I_{n+1}, condición η < 1/α_max, número de condición, ecuaciones normales); 5.6 (cálculo de variaciones corregido con φ = x − ½); Ej. 5.5 con margen y teorema de Novikoff; erratas.

## Lote 5: correcciones matemáticas (etapa 2b), parte 3: caps. 6 a 10

- Cap. 6: XOR (tres neuronas alcanzan, con dos no); `(W¹W²)ᵗ`; variación total V(f)=∫‖∇f‖; D=diag(φ'(s)) en las fórmulas de dy; cota de Lipschitz en norma de operador y gradiente que se desvanece; costo promedio C=(1/N)ΣC_n (lote, online, minilote, época); δ como derivadas parciales de C; ejemplos con entropía cruzada y softmax+CE (δ = x − z); definición formal de red feedforward; inicialización (He, LeCun, Glorot–Bengio); ejercicios 6.6 a 6.9.
- Cap. 7: teorema de existencia con |σ|≤1 y conclusión "F relativamente compacta en C([a,b])" (no "aprende"); definición de densidad (f∈A); polinomios trigonométricos como álgebra en C(S¹) (en C([0,2π]) no separan puntos); aplicación 7.2.1 con hipótesis (w, b continuas, σ Lipschitz, para toda sucesión h_n); red con coseno (ν fijo; heurística de frecuencias y subarmónicos); Wiener: sólo traslaciones; ejemplo de Dini (finitos puntos de inflexión); punto fijo (y_n=Aⁿ(x̄₀), x̄₀∈I, δ=(1−λ)ε/C); redes resonantes (norma de operador, sin √N, X*=Y*=Z*); resumen y Ej. 7.6 (≤, contraejemplo).
- Cap. 8: coeficientes c_i de la escalera (c_0=g(0) no es pequeño); proposición de la delta con convergencia dominada (g continua y acotada); Teorema 8.3 (sigmoide) con prueba corregida: sesgo de salida β, cálculo exacto de (H*ψ_α)=φ_α−φ(−∞), cotas por cambio de variables (se evita el hueco en x=0 y el término de borde); ReLU en [a,b] con paso Δ y diferencias segundas; softplus: núcleo, lema G_α calculado directamente, corolario por cota α ln 2 (Dini no aplica con signos mixtos); resumen sin afirmaciones no respaldadas; typos.
- Cap. 9: introducción sin "garantiza el éxito"; gravedad con d_min>0; audio con t∈[0,1]; d₂ con raíz; lema de separación (λ=0); Riesz–Markov (finita); lema "choto" renombrado, definido sobre funciones acotadas en [−R,R] (aproximación uniforme sólo en compactos) y con ν(I_n)=0; Cybenko con σ(−∞)=0, σ(+∞)=1, convergencia dominada y paso final; observación de redundancia L^p; proposición L² demostrada; Heaviside y logística con tratamiento de w=0; etiquetas U.dense/U.denso renombradas; EDO: solución global, proposición de estabilidad (Gronwall) y Hornik 1991 para C¹; resumen (Leshno–Lin–Pinkus–Schocken, Barron como cota superior, una capa oculta); ejercicios 9.5, 9.6, 9.7, 9.9.
- Cap. 10: partición/relación sobre Ω; entropía H≥0 (0 ln 0=0, máximo ln N por Jensen); se elimina la "entropía de una función de decisión"; one-hot (equidistancia, softmax); "posición general" → afínmente independientes; separación con semiespacios abiertos; Obs. (i) h∘F afín; Obs. (ii)/(iii) (Cybenko, condición abierta, ejemplo F(x)=(x,‖x‖²)); k clusters: dos a dos vs uno contra todos y CONTRAEJEMPLO a la proposición de las k bolas (la proposición se reemplaza por la existencia de un mapa continuo para clusters finitos disjuntos); lema bola–semiespacio (índice m, crecimiento demostrado); contracción al centro (condición λ₁ρ₁+λ₂ρ₂<|c₁−c₂|) y promesa de la sección siguiente corregida; mínimos cuadrados (matriz de Gram, contraejemplo 1D, Novikoff); softmax (distribución, nunca llega a vértices, argmax, entropía cruzada); neurona sigmoide (borde = recta; XOR; capa oculta); resumen; ejercicios 10.1, 10.2, 10.3, 10.8 (falso, reformulado), 10.9.

## Lote 6: convenciones (etapa 2b)

- Sesgo **+b** en toda la nota: y = φ(w·x + b), x₀ = +1, w₀ = b. Cap. 1 (tanque: b = −R; L, C), cap. 5 (neurona abstracta, perceptrón con umbral −b, hiperplano {w·x = −b}, b = −w·p, AND con b = −1,5 y OR con b = −0,5, prueba algebraica de XOR rehecha, logística, ejemplos), cap. 6 (x₀ = 1, ∂C/∂b = +δ, s = +w₀₁ + …, actualización b ← b − ηδ, "sumar" el vector de sesgos).
- Caps. 7–10: el sesgo θ pasa a b (H_{w,b}, softplus con sp(wx + b_j), b_j = −x_j/α). En el cap. 9 (sección de EDO) θ es el vector de todos los parámetros y la red se nota u_θ.
- Tasa de aprendizaje **η** en todas partes: cap. 1 (λ → η), cap. 4 (δ → η; el paso normalizado de la poligonal pasa a τ, con τ_k = η‖∇f‖), cap. 5 (aclaración del paso η' = 2η). En la búsqueda estocástica λ queda como intensidad del ruido.
- **φ** es la activación general y **σ** siempre la logística: ϕ del cap. 6 → φ; σ genérica de la sección 7.5 y de Cybenko/L² (cap. 9) → φ; el parámetro escalar de la prueba de Cybenko pasa a ρ. σ-álgebras sin cambios.
- Prefacio: convenciones actualizadas (φ, σ, H(0)=1, θ en el cap. 9).
- Otros: `\ff` indefinido en el cap. 10 (gradiente respecto de las señales de la última capa); ecuación de varianza del cap. 6 partida para que entre en la página.
- Las figuras con x₀ = −1 quedaron desactualizadas en este lote; se rehicieron en el Lote 7.
- Sin cambiar: filas vs columnas (los caps. 1, 4 y 5 usan filas; el cap. 6 columnas con Wᵗ); la función objetivo ϕ del cap. 3 sigue con ese símbolo.

## Lote 7: figuras (etapa 2c)

- Se rehicieron **las 44 figuras** en TikZ/pgfplots (vectoriales, PDF), con texto en español, la convención x₀ = 1, w₀ = b, la paleta navy/cian/magenta de las notas y el mismo estilo en todas. Ya no se usa ningún recorte del libro de Calin.
- Archivos: `Fig1.pdf` … `Fig44.pdf` (reemplazan a los PNG); fuentes en `figuras_fuente.zip` (preámbulo `pre.tex`, `build.sh` y un `figN.tex` por figura; se recompilan con `./build.sh N`).
- La Fig. 45 (borde de decisión) está comentada en el texto y no se rehízo.
- Cambios de contenido asociados: Fig. 19 usa datos **sintéticos** (el texto lo dice; antes eran datos reales de estudiantes de Michigan tomados de Calin); Fig. 21 pasa de grises a azules (texto: "región oscura", "escala de azules"); Fig. 28a es una red de perceptrones propia (XOR con tres perceptrones), no la del libro; Fig. 5 con pesos u₁, u₂, u₃ en la segunda capa; Figs. 15–18 con +b y umbral −b; Fig. 24/25 con x₀ = 1; Fig. 33 con sesgos b_i = −x_i; Fig. 10 con paso τ y Fig. 12 con tasa η; se corrige el doble w₂₂ de la Fig. 5.
- Las figuras se escalan al ancho de línea (`max width=\linewidth`, paquete `adjustbox`); la portada usa las Figs. 13, 27 y 37 nuevas.
- Los PNG originales se movieron a la subcarpeta `figuras_calin_originales/` (no se usan más).

## Pendiente (próximos lotes)
Vectores fila/columna, objetivo ϕ del cap. 3, contenido nuevo (tasas de convergencia, SGD/Adam, reescribir el cap. 10: perceptrón/Novikoff, regresión logística), numeración de las 21 clases.

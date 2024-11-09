# Tratando el desbalanceo en LightGBM

Descripción breve del proyecto, indicando su propósito y lo que el usuario puede lograr al ejecutarlo.

## Requisitos previos

- **R**: Asegúrate de tener instalada la última versión de R.
- **Paquetes R necesarios**: Instala los paquetes necesarios listados en los scripts antes de ejecutarlos.
  - rlang
  - yaml
  - data.table


## Instrucciones de Ejecución

Para ejecutar los scripts en el orden adecuado, sigue estos pasos:

1. Dirígete a la carpeta `workflows` y ejecuta el primer script:

 ```r
 source("workflows/501_run_workflow_conceptual.r")
 ```

2. Una vez completado el primer paso, ejecuta el segundo script:

 ```r
source("workflows/519_workflow_base_f202109_conc.r")
 ```


## Descripción de los Scripts

501_run_workflow_conceptual.r: Este script tiene como objetivo ejecutar un workflow específico en un entorno temporal en la máquina.

519_workflow_base_f202109_conc.r: Este script ejecuta un workflow completo desde una configuración base, cargando varias funciones que procesan datos y preparan variables en el entorno de trabajo. Algunas de las funciones principales son:

DT_incorporar_dataset_competencia2024: Agrega datos al workflow de manera determinista.
CA_catastrophe_base: Realiza un análisis de "catástrofes" o corrección de datos.
FEintra_manual_base: Ingeniería de características dentro del mes.
DR_drifting_base: Corrige desajustes en los datos.
FEhist_base: Realiza ingeniería de características históricas.
FErf_attributes_base: Genera atributos con Random Forest usando LightGBM.
TS_strategy_base9: Define una estrategia de entrenamiento que submuestrea un porcentaje de la clase "CONTINUA".
HT_tuning_base: Optimización de hiperparámetros utilizando Bayesian Optimization.
FM_final_models_lightgbm: Proceso de generación de modelos finales de línea base utilizando LightGBM.
SC_scoring: Proceso de generación de puntajes para un conjunto de datos final.
KA_evaluate_kaggle: Evaluación final del modelo en la plataforma de Kaggle.

## Contacto
Para dudas o contribuciones, contacta a sebastiancendra@gmail.com y gomezleogabriel@gmail.com

# Actividad 02 – Generación de entornos y procesado inicial de datos

Este proyecto tiene como objetivo crear un entorno reproducible para el análisis de reposicionamiento de fármacos mediante la creación de un entorno mediante "conda".

## Requisitos
- Miniconda instalado en Ubuntu/WSL2
- Tres entornos conda:
  - tools (JupyterLab, nb_conda_kernels)
  - python (Python 3.10 + ipykernel + dotenv, click, pandas, lxml, biothings_client)
  - r (R-base, irkernel, here)

## Configuración inicial
1. Crear archivo `.env` con:
   name="Mario Brea"
   uem_id=224D2000
   seed=123

2. Crear archivo `.here` en la raíz del proyecto.

## Ejecución de notebooks (en orden)
1. 00a_test_r_setup.ipynb  → prueba entorno R (Código 01)
2. 00b_test_python_setup.ipynb → prueba entorno Python (Código 02)
3. 01a_process_data.ipynb  → descarga de datos crudos a ./data/raw
4. 01b_process_data.ipynb  → parseo de DrugBank → ./data/processed/


## Estructura final del proyecto
reposicionamiento/
├─ .env
├─ .here
├─ src/
│ ├─ py/db_parser.py
│ └─ r/utils.r
├─ data/
│ ├─ raw/ # archivos crudos
│ └─ interim/ # archivos intermedios (para Actividad 03)
├─ results/
├─ notebooks:
│ ├─ 00a_test_r_setup.ipynb
│ ├─ 00b_test_python_setup.ipynb
│ ├─ 01a_process_data.ipynb
│ └─ 01b_process_data.ipynb
├─ py_environment.yml
├─ r_environment.yml
└─ tools_environment.yml



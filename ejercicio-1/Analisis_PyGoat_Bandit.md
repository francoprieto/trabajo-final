# Análisis de Seguridad del Proyecto PyGoat usando Bandit

Repositorio analizado:
https://github.com/adeyosemanputra/pygoat

---

## 1. Metodología de Análisis con Bandit

### Preparación del entorno
```bash
git clone https://github.com/adeyosemanputra/pygoat
cd pygoat
python -m venv .venv
source .venv/bin/activate
pip install bandit
```

### Ejecución del análisis
```bash
bandit -r . -f txt -o bandit_report.txt
bandit -r . -f json -o bandit_report.json
```

---

## 2. Vulnerabilidades Analizadas

### CWE-502 – Deserialización de datos no confiables
- OWASP Top 10 (2021): A08 – Software and Data Integrity Failures
- Bandit: B301 (pickle)
- Remediación: evitar pickle, usar JSON y validar con esquemas estrictos.

### CWE-78 – OS Command Injection
- OWASP Top 10 (2021): A03 – Injection
- Remediación: evitar `shell=True`, usar listas de argumentos y validar entradas.

### CWE-259 – Contraseñas hardcodeadas
- OWASP Top 10 (2021): A02 – Cryptographic Failures
- Remediación: usar variables de entorno y rotar credenciales.

### CWE-330 – Aleatoriedad insuficiente
- OWASP Top 10 (2021): A07 – Identification and Authentication Failures
- Remediación: usar el módulo `secrets`.

### CWE-327 – Criptografía insegura
- OWASP Top 10 (2021): A02 – Cryptographic Failures
- Remediación: usar SHA-256, bcrypt, Argon2 o PBKDF2.

---

## 3. Conclusión

El proyecto PyGoat contiene vulnerabilidades intencionales útiles para el aprendizaje.
El uso de Bandit permite identificarlas y proponer remediaciones alineadas con CWE y OWASP Top 10.

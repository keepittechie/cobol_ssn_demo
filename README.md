# COBOL SSN Checker 

---
## Simulating Legacy Government System Data Issues 👴🏽📼
Created by Josh from [KeepItTechie](https://www.keepittechie.com)

This project is a **COBOL-based demo** that simulates how legacy systems — like those still used by the U.S. Social Security Administration — can contain records of people who appear to be **over 150 years old and still alive**. This often happens due to outdated or incomplete data, not because of widespread fraud.

> ⚠️ **Note:** *All SSN data is fake! Used for educational purposes only.*

🧠 Use this repo to:
- Understand how COBOL processes data line-by-line
- See how legacy data issues can be misinterpreted
- Create discussions around system modernization in the public sector

---

## 🗃️ Project Structure

```
cobol_ssn_demo/
├── people.dat        # Mock SSN records (flat file)
├── ssn_check.cob     # COBOL program to scan the file
├── build.sh          # Script to compile the COBOL program
└── run.sh            # Script to run the compiled binary
```

---

## 📦 Dependencies

This project relies on the [GnuCOBOL](https://gnucobol.sourceforge.io/) compiler.

### ✅ Install on Ubuntu/Debian

```bash
sudo apt update
sudo apt install gnucobol
```

> If your distro uses the older naming convention, try:
> `sudo apt install open-cobol`

### 🧠 Why GnuCOBOL?

GnuCOBOL is an open-source COBOL compiler that translates COBOL code into C, then compiles it using GCC. It's perfect for running COBOL code on modern Linux systems — no mainframe required.

---

## 🚀 How to Run the Demo

1. **Clone the repo or unzip the package:**

```bash
git clone https://github.com/yourusername/cobol-ssn-demo.git
cd cobol-ssn-demo
```

2. **Make the scripts executable:**

```bash
chmod +x build.sh run.sh
```

3. **Build the COBOL program:**

```bash
./build.sh
```

4. **Run the age checker:**

```bash
./run.sh
```

You should see output like:

```
WARNING: John Smith (SSN 123456789) appears to be 150 years old and still alive.
WARNING: Alice Brown (SSN 112233445) appears to be 135 years old and still alive.
```

---

## 📂 Modifying the Data

Edit the `people.dat` file to add or modify records. Format:

```
SSN,Name,DOB,DateOfDeath
```

- Leave `DateOfDeath` empty to simulate someone marked alive.
- DOBs from the 1800s with no death date will be flagged as "alive" and over 150 years old.

> ⚠️ **Note:** *All SSN data is fake! Used for educational purposes only.*

---

## 🧩 Why This Matters

This demo is designed to educate people on:
- **Legacy COBOL systems** still used in government agencies
- **Poor data hygiene** leading to strange results (like 180-year-olds)
- How misinformation can weaponize legacy quirks to suggest fraud

It's not a proof of "rampant fraud" — it's proof that **our critical systems need updates** and proper funding.

---

## 🙌🏽 Created With Purpose

> I'm Josh from [KeepItTechie](https://www.youtube.com/c/KeepItTechie), and this project is here to spark discussions about legacy tech, COBOL, and the importance of clean data. Share this, remix it, and keep it educational.

---

## 📘 License

MIT License — use it, remix it, just keep it respectful and educational.

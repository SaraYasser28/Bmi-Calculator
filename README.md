# BMI Calculator App

A modern, interactive **Body Mass Index (BMI) Calculator** built with [Flutter](https://flutter.dev/).  
This app allows users to input their **height**, **weight**, **age**, and **gender** to calculate their BMI.  
It includes **dynamic BMI range interpretation**, smooth UI components, and real-time updates.

---

## 📑 Table of Contents
1. [Features](#-features)
2. [Screenshots](#-screenshots)
3. [Installation](#-installation)
4. [Usage](#-usage)
5. [BMI Formula](#bmi-formula)
6. [BMI Ranges](#bmi-ranges)
7. [Technologies Used](#-technologies-used)
8. [Author](#-author)

---

## Features
- Select **Male** or **Female**.
- Input **height**, **weight**, and **age** with easy-to-use increment/decrement buttons.
- **Single tap** for one-step changes and **long press** for continuous updates.
- Real-time **BMI calculation** and interpretation.
- Clean, responsive UI design.

---

## Screenshots

| Home Screen | Result Screen |
|-------------|---------------|
|![Home](https://1drv.ms/i/c/c5b381e6f3108507/EeHCP6-6x5VPgEjdcbF3A0EBylztd4co0upCOeVwLcVowg?e=0jVtjC) | ![Result](https://1drv.ms/i/c/c5b381e6f3108507/EcJkS9j_ctFLn1u7kzbT6cgBCzRROLNFs2N-DgHj99qdtg?e=j1eEvr) |

---

## Installation

### 1️⃣ Prerequisites
- Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Install [Dart](https://dart.dev/get-dart)
- Install an IDE such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### 2️⃣ Clone the repository
```bash
git clone https://github.com/SaraYasser28/Bmi-Calculator.git
cd bmi-calculator
````

### 3️⃣ Install dependencies

```bash
flutter pub get
```

### 4️⃣ Run the app

```bash
flutter run
```

---

## Usage

1. Launch the app.
2. Select your **gender**.
3. Adjust your **height**, **weight**, and **age** using the + / - buttons.
4. Press **Calculate** to view your BMI and health category.
5. Review the interpretation and suggested health tips.

---

## BMI Formula

BMI is calculated as:

$$
\text{BMI} = \frac{\text{weight (kg)}}{\text{height (m)} \times \text{height (m)}}
$$

**Example:**
If `weight = 70 kg` and `height = 1.75 m`:

$$
\text{BMI} = \frac{70}{1.75 \times 1.75} = 22.86
$$

---

## BMI Ranges

| Underweight | Normal Weight | Overweight  | Obese  |
| ----------- | ------------- | ----------- | ------ |
| < 18.5      | 18.5 - 24.9   | 25 - 29.9   | ≥ 30   |
| < 18.0      | 18.0 - 24.4   | 24.5 - 29.4 | ≥ 29.5 |

---

## Technologies Used

* **Flutter** — Cross-platform UI toolkit.
* **Dart** — Programming language.
* **Material Design** — UI styling.
* **Responsive Layouts** — Works on multiple devices.

---

## Author

**Sara Yasser**

🔗 GitHub: [SaraYasser28](https://github.com/SaraYasser28)

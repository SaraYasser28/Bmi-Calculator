# BMI Calculator App

A modern, interactive **Body Mass Index (BMI) Calculator** built with [Flutter](https://flutter.dev/).  
This app allows users to input their **height**, **weight**, **age**, and **gender** to calculate their BMI.  
It includes **dynamic BMI range interpretation**, smooth UI components, and real-time updates.

---

## 📑 Table of Contents
1. [Features](#-features)
2. [Installation](#-installation)
3. [Usage](#-usage)
4. [BMI Formula](#bmi-formula)
5. [BMI Ranges](#bmi-ranges)
6. [Technologies Used](#-technologies-used)
7. [Author](#-author)

---

## Features
- Select **Male** or **Female**.
- Input **height**, **weight**, and **age** with easy-to-use increment/decrement buttons.
- **Single tap** for one-step changes and **long press** for continuous updates.
- Real-time **BMI calculation** and interpretation.
- Clean, responsive UI design.

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
3. Adjust your **height** using slider, And adjust **weight**, and **age** using the + / - buttons.
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


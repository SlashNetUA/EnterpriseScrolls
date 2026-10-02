---
title: "2dfx: посібник програміста - 2DPT - DRAW_TEXT"
---
### 2DPT - DRAW_TEXT (70h, F0h / 112, 240)

Виводить на екран текст, [завантажений у RRAM](upload_raw.md) починаючи з вказаної адреси, шрифтом [із заданим ідентифікатором](define_font.md), починаючи з указаних координат (**X**/**Y**). Для малювання літер використовується поточний колір чорнила. Якщо [поточний колір паперу](2dpt-set_color.md) не є прозорим, область за символами заповнюється кольором паперу. Текст зчитується з RRAM і виводиться до першого завершального байта зі значенням **80h** (**128**) або, за його відсутності, до ліміту у **255** символів.

| **Назва параметра**   | **7** | **6** | **5** | **4** | **3** | **2** | **1** | **0** | **Опис**                                               |
| --------------------- |:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:| ------------------------------------------------------ |
| **slot_number**       |   •   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | номер слота 2DPT (0…255)                               |
| **highbits**          |   x   |   x   |   a   |   a   |   b   |   x   |   x   |   x   | див. пояснення нижче                                   |
| **X_low**             |   •   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | молодші вісім бітів координати X **лівого верхнього кута** |
| **Y_low**             |   •   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | молодші вісім бітів координати Y **лівого верхнього кута** |
| **font_id**           |   0   |   0   |   •   |   •   |   •   |   •   |   •   |   •   | ідентифікатор обраного шрифту                          |
| **RRAM_address_low**  |   •   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | початкова адреса RRAM збереженого тексту, біти 7..0    |
| **RRAM_address_mid**  |   •   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | початкова адреса RRAM збереженого тексту, біти 15..8   |
| **RRAM_address_high** |   0   |   •   |   •   |   •   |   •   |   •   |   •   |   •   | початкова адреса RRAM збереженого тексту, біти 22..16  |

- **a** — старші два біти координати X початкової точки
- **b** — старший біт координати Y початкової точки
- **x** — ці біти ігноруються 2dfx
- **0** — обов'язково має бути встановлено в нуль

----

Див. також: [DEFINE_FONT](define_font.md)

----

<!-- Початок компонента 2dfx Calculator -->
<style>
    .dfx-calc-container {
        --dfx-bg: #f8f9fa;
        --dfx-card: #ffffff;
        --dfx-text: #212529;
        --dfx-accent: #0d6efd;
        --dfx-accent-hover: #0b5ed7;
        --dfx-border: #dee2e6;
        --dfx-code-bg: #1e1e1e;
        --dfx-code-text: #d4d4d4;
        --dfx-success: #198754;
        
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        color: var(--dfx-text);
        line-height: 1.5;
        max-width: 800px;
        margin: 2rem auto;
        box-sizing: border-box;
    }
    .dfx-calc-container *, .dfx-calc-container *::before, .dfx-calc-container *::after {
        box-sizing: border-box;
    }
    .dfx-calc-container h3 {
        margin-top: 1.5rem;
        margin-bottom: 0.75rem;
        border-bottom: 1px solid var(--dfx-border);
        padding-bottom: 0.3rem;
    }
    .dfx-calc-container .dfx-card {
        background: var(--dfx-card);
        border: 1px solid var(--dfx-border);
        border-radius: 6px;
        padding: 1.25rem;
        margin-bottom: 1.5rem;
        box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    }
    .dfx-calc-container .dfx-grid {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 1rem;
    }
    @media (max-width: 600px) {
        .dfx-calc-container .dfx-grid { grid-template-columns: 1fr; }
    }
    .dfx-calc-container .dfx-form-group {
        display: flex;
        flex-direction: column;
    }
    .dfx-calc-container label {
        font-weight: 600;
        margin-bottom: 4px;
        font-size: 0.9em;
    }
    .dfx-calc-container .dfx-hint {
        font-size: 0.75em;
        color: #6c757d;
        font-weight: normal;
    }
    .dfx-calc-container input, .dfx-calc-container select {
        padding: 8px 12px;
        border: 1px solid var(--dfx-border);
        border-radius: 4px;
        font-size: 1em;
        width: 100%;
        background: var(--dfx-card);
        color: var(--dfx-text);
    }
    .dfx-calc-container input:focus, .dfx-calc-container select:focus {
        outline: none;
        border-color: var(--dfx-accent);
        box-shadow: 0 0 0 2px rgba(13,110,253,0.25);
    }
    .dfx-calc-container button {
        background-color: var(--dfx-accent);
        color: #fff;
        border: none;
        padding: 10px 16px;
        font-size: 1em;
        font-weight: 600;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        margin-top: 1rem;
        transition: background-color 0.15s;
    }
    .dfx-calc-container button:hover { background-color: var(--dfx-accent-hover); }
    .dfx-calc-container .dfx-btn-copy { background-color: var(--dfx-success); }
    .dfx-calc-container .dfx-btn-copy:hover { background-color: #157347; }
    
    .dfx-calc-container table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 1rem;
        font-family: monospace;
        font-size: 0.95em;
    }
    .dfx-calc-container th, .dfx-calc-container td {
        border: 1px solid var(--dfx-border);
        padding: 8px;
        text-align: center;
    }
    .dfx-calc-container th { background-color: var(--dfx-bg); }
    
    .dfx-calc-container pre {
        background: var(--dfx-code-bg);
        color: var(--dfx-code-text);
        padding: 1rem;
        border-radius: 4px;
        overflow-x: auto;
        font-size: 0.9em;
        margin: 0;
        line-height: 1.4;
    }
    .dfx-calc-container .dfx-error {
        color: #dc3545;
        font-weight: bold;
        text-align: center;
        margin-top: 10px;
        min-height: 1.2em;
    }
</style>

<div class="dfx-calc-container">
    <div class="dfx-card">
        <div class="dfx-grid">
            <div class="dfx-form-group">
                <label for="dfx-slot">Slot (0-255)</label>
                <input type="number" id="dfx-slot" value="0" min="0" max="255">
            </div>
            <div class="dfx-form-group">
                <label for="dfx-playlist">Playlist</label>
                <select id="dfx-playlist">
                    <option value="240" selected>Foreground (0xF0 / 240)</option>
                    <option value="112">Background (0x70 / 112)</option>
                </select>
            </div>
            <div class="dfx-form-group">
                <label for="dfx-x">X coordinate <span class="dfx-hint">(0-1023)</span></label>
                <input type="number" id="dfx-x" value="126" min="0" max="1023">
            </div>
            <div class="dfx-form-group">
                <label for="dfx-y">Y coordinate <span class="dfx-hint">(0-511)</span></label>
                <input type="number" id="dfx-y" value="49" min="0" max="511">
            </div>
            <div class="dfx-form-group">
                <label for="dfx-font">Font ID <span class="dfx-hint">(0-63)</span></label>
                <input type="number" id="dfx-font" value="0" min="0" max="63">
            </div>
            <div class="dfx-form-group">
                <label for="dfx-addr">String RRAM Address <span class="dfx-hint">(0-8388607)</span></label>
                <input type="number" id="dfx-addr" value="16384" min="0" max="8388607">
            </div>
        </div>
        <button onclick="dfxCalculate()">Розрахувати та згенерувати код</button>
        <div id="dfx-error-msg" class="dfx-error"></div>
    </div>

    <div class="dfx-card" id="dfx-results-card" style="display:none;">
        <h3>Розпаковані байти (F9h)</h3>
        <table>
            <thead>
                <tr>
                    <th>Параметр</th>
                    <th>Десяткове (Dec)</th>
                    <th>Шістнадцяткове (Hex)</th>
                </tr>
            </thead>
            <tbody id="dfx-results-body"></tbody>
        </table>

        <h3>Готовий код для IS-BASIC</h3>
        <pre id="dfx-basic-code"></pre>
        <button class="dfx-btn-copy" onclick="dfxCopyCode()">📋 Копіювати код</button>
    </div>
</div>

<script>
    function dfxCalculate() {
        const slot = parseInt(document.getElementById('dfx-slot').value);
        const cmd = parseInt(document.getElementById('dfx-playlist').value);
        const x = parseInt(document.getElementById('dfx-x').value);
        const y = parseInt(document.getElementById('dfx-y').value);
        const font = parseInt(document.getElementById('dfx-font').value);
        const addr = parseInt(document.getElementById('dfx-addr').value);
        const errDiv = document.getElementById('dfx-error-msg');
        errDiv.innerText = "";

        if ([slot, x, y, font, addr].some(isNaN)) {
            errDiv.innerText = "Будь ласка, заповніть усі поля коректними числами.";
            return;
        }
        if (x > 1023 || y > 511 || font > 63 || addr > 8388607) {
            errDiv.innerText = "Значення виходять за межі допустимих лімітів протоколу 2dfx.";
            return;
        }

        // v1.0.1 Protocol calculations
        const highbits = (((x >> 8) & 3) << 4) | (((y >> 8) & 1) << 3);
        const xLow = x & 255;
        const yLow = y & 255;
        
        const addrLow = addr & 255;
        const addrMid = (addr >> 8) & 255;
        const addrHigh = (addr >> 16) & 127; // Bit 7 reserved 0

        const params = [
            { name: "Command (F8h)", dec: cmd, hex: cmd.toString(16).toUpperCase().padStart(2, '0') },
            { name: "1. Slot", dec: slot, hex: slot.toString(16).toUpperCase().padStart(2, '0') },
            { name: "2. Highbits (XXY)", dec: highbits, hex: highbits.toString(16).toUpperCase().padStart(2, '0') },
            { name: "3. X low", dec: xLow, hex: xLow.toString(16).toUpperCase().padStart(2, '0') },
            { name: "4. Y low", dec: yLow, hex: yLow.toString(16).toUpperCase().padStart(2, '0') },
            { name: "5. Font ID", dec: font, hex: font.toString(16).toUpperCase().padStart(2, '0') },
            { name: "6. Addr low", dec: addrLow, hex: addrLow.toString(16).toUpperCase().padStart(2, '0') },
            { name: "7. Addr mid", dec: addrMid, hex: addrMid.toString(16).toUpperCase().padStart(2, '0') },
            { name: "8. Addr high7", dec: addrHigh, hex: addrHigh.toString(16).toUpperCase().padStart(2, '0') }
        ];

        const tbody = document.getElementById('dfx-results-body');
        tbody.innerHTML = "";
        params.forEach(p => {
            tbody.innerHTML += `<tr><td>${p.name}</td><td>${p.dec}</td><td>${p.hex}h</td></tr>`;
        });

        const basicCode = `OUT 248,${cmd}\nOUT 249,${slot}\nOUT 249,${highbits}\nOUT 249,${xLow}\nOUT 249,${yLow}\nOUT 249,${font}\nOUT 249,${addrLow}\nOUT 249,${addrMid}\nOUT 249,${addrHigh}`;

        document.getElementById('dfx-basic-code').innerText = basicCode;
        document.getElementById('dfx-results-card').style.display = "block";
    }

    function dfxCopyCode() {
        const code = document.getElementById('dfx-basic-code').innerText;
        navigator.clipboard.writeText(code).then(() => {
            const btn = document.querySelector('.dfx-btn-copy');
            const originalText = btn.innerText;
            btn.innerText = "✅ Скопійовано!";
            setTimeout(() => btn.innerText = originalText, 2000);
        });
    }

    // Auto-calculate on load
    window.addEventListener('DOMContentLoaded', dfxCalculate);
</script>
<!-- Кінець компонента 2dfx Calculator -->
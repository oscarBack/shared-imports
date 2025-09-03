# Prototypes Directory

Este directorio es para explorar y probar múltiples conceptos de UI/UX para la plataforma de merchandise **shared-imports**. Los prototipos están organizados en opciones numeradas (op1, op2, op3...) para permitir la exploración paralela de diferentes enfoques de diseño.

## Approach: Multiple Design Options

Cada directorio "op" (opción) representa una exploración completa e independiente de:
- **Conceptos visuales diferentes**: Variaciones en estilo, layout y presentación
- **Arquitecturas de información alternativas**: Distintas formas de organizar y presentar contenido
- **Patrones de interacción diversos**: Múltiples enfoques para navegación y flujos de usuario
- **Temas y personalidades de marca**: Adaptaciones para diferentes tipos de comunidades fan

Esto permite comparar y evaluar múltiples direcciones de diseño antes de decidir la implementación final en `apps/web/`.

## Platform Context

The shared-imports platform helps fan communities coordinate merchandise orders by:
- **Group coordination**: Fans organize collective purchases to meet minimum order quantities
- **Import management**: Streamlining international merchandise ordering and customs
- **Order tracking**: Progress visibility from organization to delivery

## Technical Requirements

### Technology Stack
- **Markup**: HTML5 semantic elements
- **Styling**: Tailwind CSS via Play CDN (no build step required)
- **JavaScript**: Vanilla JavaScript for interactions (optional)

### Setup
Simply add the Tailwind CSS Play CDN script to your HTML:
```html
<!doctype html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body>
    <!-- Your prototype content here -->
</body>
</html>
```

### Design Principles
- **Simple**: Plain HTML files with Tailwind CSS classes
- **Responsive**: Mobile-first design using Tailwind breakpoints
- **Accessible**: Follow WCAG guidelines, proper semantic markup
- **User-friendly**: Clear navigation, intuitive interactions
- **Fan community focused**: UI that appeals to and serves fan communities

## Prototype Categories

### Core User Flows
- **Group creation**: Starting a new merchandise coordination group
- **Joining groups**: Discovering and joining existing coordination efforts
- **Product browsing**: Exploring available merchandise with group pricing
- **Order coordination**: Managing group orders from start to delivery
- **Communication**: In-group messaging and coordination tools

### Key Components
- **Navigation**: Main app navigation and user account areas
- **Product displays**: Cards, grids, and detail views for merchandise
- **Group management**: Dashboards for group coordinators and members
- **Progress tracking**: Visual indicators for order status and milestones
- **Forms**: User registration, group creation, order placement

### Layout Examples
- **Landing page**: First impression for new users
- **Dashboard**: Main app interface after login
- **Product pages**: Individual merchandise detail views
- **Group pages**: Coordination spaces for specific groups
- **Profile pages**: User account and preferences

## File Organization

Los prototipos se organizan en directorios numerados como "op1", "op2", etc., donde cada directorio representa una opción de diseño diferente para explorar distintas aproximaciones al UI/UX de la plataforma.

```
docs/prototypes/
├── PURPOSE.md              # This file
├── op1/                    # Option 1: Design approach #1
│   ├── components/         # HTML component examples
│   │   ├── navigation/
│   │   ├── product-cards/
│   │   ├── forms/
│   │   └── layout/
│   ├── pages/              # Full page prototypes
│   │   ├── landing.html
│   │   ├── dashboard.html
│   │   ├── product-detail.html
│   │   └── group-coordination.html
│   └── flows/              # Multi-step user journeys
│       ├── onboarding/
│       ├── group-creation/
│       └── order-process/
├── op2/                    # Option 2: Alternative design approach
│   ├── components/
│   ├── pages/
│   └── flows/
├── op3/                    # Option 3: Another design variation
│   ├── components/
│   ├── pages/
│   └── flows/
└── experiments/            # One-off UI explorations (cross-option)
```

### Prototype Options (op1, op2, op3...)

Cada directorio "op" representa una exploración completa de diseño que puede incluir:
- **Diferentes enfoques visuales**: Variaciones en layout, color, tipografía
- **Distintas arquitecturas de información**: Organización alternativa de contenido
- **Diversos patrones de interacción**: Diferentes formas de navegación y flujo de usuario
- **Múltiples conceptos temáticos**: Adaptaciones para diferentes tipos de comunidades fan

## Opening Prototypes in Browser

### Local Development
Para visualizar los prototipos en tu navegador:

1. **Abrir archivos HTML directamente**:
   ```bash
   # Navegar al directorio del prototipo
   cd docs/prototypes/op1/pages
   
   # Abrir en el navegador por defecto
   $BROWSER dashboard.html
   
   # O usar xdg-open en Linux
   xdg-open dashboard.html
   ```

2. **Usar servidor local simple** (recomendado para evitar problemas de CORS):
   ```bash
   # Desde el directorio raíz del proyecto
   cd docs/prototypes
   
   # Servidor Python (si está disponible)
   python3 -m http.server 8000
   
   # O servidor Node.js
   npx serve -p 8000
   
   # Luego navegar a: http://localhost:8000/op1/pages/dashboard.html
   ```

3. **Usar VS Code Live Server extension**:
   - Instalar la extensión "Live Server"
   - Hacer clic derecho en cualquier archivo HTML
   - Seleccionar "Open with Live Server"

### URLs de Ejemplo
Una vez configurado el servidor local, podrás acceder a:
- `http://localhost:8000/op1/pages/dashboard.html` - Dashboard principal opción 1
- `http://localhost:8000/op2/pages/landing.html` - Landing page opción 2
- `http://localhost:8000/op1/components/navigation/main-nav.html` - Componente navegación

## Development Guidelines

### HTML & Tailwind CSS
- Create simple HTML files with the Tailwind Play CDN
- Use Tailwind utility classes for all styling
- Implement responsive design with Tailwind breakpoints (`sm:`, `md:`, `lg:`, `xl:`)
- Use semantic HTML elements (`<nav>`, `<main>`, `<section>`, etc.)

### Custom Styling (Optional)
For custom CSS, use the `type="text/tailwindcss"` approach:
```html
<style type="text/tailwindcss">
  @theme {
    --color-brand: #da373d;
  }
</style>
```

### Interactions (Optional)
- Use vanilla JavaScript for any interactive elements
- Keep JavaScript simple and focused on prototype functionality
- Add `<script>` tags directly in HTML files for simplicity

## Testing Prototypes

Before implementing in the main web app:
1. **Responsive testing**: Verify layouts work on mobile, tablet, and desktop
2. **Accessibility testing**: Check keyboard navigation and screen reader compatibility
3. **Cross-browser testing**: Test in different browsers for compatibility
4. **User feedback**: Gather input from potential users in fan communities
5. **Integration planning**: Consider how HTML/CSS can be converted to React components

## Integration Path

Successful prototypes should be:
1. **Documented**: Clear explanation of intended functionality
2. **Responsive**: Working layouts across all screen sizes
3. **Accessible**: Proper semantic markup and keyboard navigation
4. **Tested**: Verified in multiple browsers and devices
5. **Conversion-ready**: Easy to convert to React components for `apps/web/`
# AccessibleComponents

## Requirements

- Elixir/OTP
- Postgres Database running on port 5432

## Getting started

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Install Node.js dependencies with `pnpm install` inside the `assets` directory
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Automatic A11y tests

- `npm install @axe-core/cli -g`
- `mix phx.server`
- e.g. `axe http://localhost:4000/radio`

Note that the following error occurs because of LiveView:

```
Violation of "region" with 1 occurrences!
Ensures all page content is contained by landmarks. Correct invalid elements at:
    - canvas
For details, see: https://dequeuniversity.com/rules/axe/4.2/region
```

## Ressources used

**flag-icon-css**
Locale flags by [flag-icon-css](https://github.com/lipis/flag-icon-css) (MIT License)

**material icons**
Material icons by [Material Icons](https://fonts.google.com/icons?selected=Material+Icons&icon.query=info)

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

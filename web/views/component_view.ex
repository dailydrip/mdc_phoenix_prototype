defmodule FirestormPrototype.ComponentView do
  use FirestormPrototype.Web, :view

  def render("button.html", %{raised: raised, primary: primary, ripple: ripple, do: do_it} = assigns) do
    class_mappings = [
      {"mdc-button--raised", raised},
      {"mdc-button--primary", primary},
      {"mdc-ripple-surface", ripple}
    ]

    classes =
      for {class, active} <- class_mappings,
        active == true
        do
        class
      end

    IO.puts "---------"
    IO.inspect classes

    render("button.html", class: Enum.join(["mdc-button" | classes], " "), do: do_it)
  end
end

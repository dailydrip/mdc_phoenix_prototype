defmodule FirestormPrototype.ComponentHelpers do
  def mdc(template, assigns) do
    FirestormPrototype.ComponentView.render("#{Atom.to_string(template)}.html", assigns)
  end

  def mdc(template, assigns, do: block) do
    FirestormPrototype.ComponentView.render("#{Atom.to_string(template)}.html", Keyword.merge(assigns, [do: block]))
  end
end

require 'spec_helper'

<% module_namespacing do -%>
describe <%= class_name %> do

  let(:<%= singular_table_name %>) { <%= class_name %>.new }

  subject { <%= singular_table_name %> }

  # 1. Configuration

  # 2. Attributes
  <%- attributes.each do |attribute| -%>
    <% if attribute.name =~ /_id\z/ && attribute.type == :integer %>
  it { should have_db_index(:<%= attribute.name.humanize.downcase %>) }
    <%- end -%>
  <%- end %>
  # 3. Validations

  it { should be_valid }

  # 4. Associations
  <%- attributes.each do |attribute| -%>
    <% if attribute.name =~ /_id\z/ && attribute.type == :integer %>
  it { should belong_to(:<%= attribute.name.humanize.downcase %>) }
    <%- end -%>
  <%- end %>
  # 5. Scopes

  # 6. Callbacks

  pending "add some examples to (or delete) #{__FILE__}"
end
<% end -%>


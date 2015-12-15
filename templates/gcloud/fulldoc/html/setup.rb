require "yaml"
include Helpers::ModuleHelper

def init
  # Render main index.html page
  Templates::Engine.with_serializer("index.html", options.serializer) do
    # puts (options.readme.methods - Object.new.methods).sort.inspect
    # puts options.readme.to_yaml
    options.file = options.readme
    T('home').run(options)
  end
  options.delete :file

  Templates::Engine.with_serializer("reference.html", options.serializer) do
    T('reference').run(options)
  end

  # Render each class/module page
  options.objects.each do |object|
    puts object.class.inspect
    Templates::Engine.with_serializer(object, options.serializer) do
      options.object = object
      T('class').run(options)
    end
  end

  # Render each extra file page
  options.files.each do |file|
    # puts "#{file.to_yaml} - #{file.path}"
    puts file.attributes[:markup].inspect
    file.attributes[:markup] ||= markup_for_file("", file.filename)
    puts file.attributes[:markup].inspect
    Templates::Engine.with_serializer("#{file.name}.html", options.serializer) do
      options.file = file
      T('file').run(options)
    end
    options.delete :file
  end

  # Render all the assets
end

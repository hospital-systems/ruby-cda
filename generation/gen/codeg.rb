module Gen
  module Codeg
    def gklass(name, opts = {})
      module_name = opts[:module]
      ancestor    = opts[:ancestor]
      body        = opts[:body]

      content = []
      content << "class #{name}"
      content.last << " < #{ancestor}" if ancestor
      content << indent('include Virtus.model', 2)
      if body.present?
        content << indent(body, 2)
      elsif block_given?
        content << yield(2)
      end
      content << 'end'
      if module_name.present?
        content = content.map { |row| indent(row, 2) }
        content.unshift( "module #{module_name}")
        content.push('end')
      end
      content.join("\n")
    end

    def gmodule(name, body)
      content = []
      content  << "module #{name}"
      content  << indent(body, 2)
      content  << 'end'
      content.join("\n")
    end

    def to_prefix_type(type_name)
      return type_name if Object.constants.include?(type_name.to_sym)
      'Cda::' + type_name
    end

    def generate_attribute(aname, type, opts)
      # if type.start_with?('Array')
      #   type = type.sub(/^Array\[/, '').sub(/\]$/, '')
      #   'Array[' + to_prefix_type(type) + ']'
      unless type.start_with?('Array')
        type = to_prefix_type(type)
      end
      if opts.delete :multiple
        type = "Array[#{type}]"
      end

      res = []
      comment = opts.delete(:comment)
      res << "# #{comment.gsub(/\s+$/,'')}" if comment.present?

      attr = [
              "attribute :#{Namings.normalize_name(aname)}",
              type,
              hash_to_str(opts).presence
             ]
      res << attr.compact.join(', ')
      res.join("\n")
    end

    private

    def indent(str, size)
      str.split("\n")
      .map { |s| (' ' * size) + s}
      .join("\n")
    end

    def hash_to_str(hash)
      hash.map { |k,v| "#{k}: #{v.inspect}" }.join(', ')
    end
    extend self
  end
end

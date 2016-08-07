require 'nokogiri'
require 'open-uri'

URL = "http://www.fpml.org/coding-scheme/"

module Fpml

  class Scheme
    attr_reader :name, :records, :doc, :definition, :publication_date, :status,
                :short_name, :version, :canonical_uri, :canonical_version_uri,
                :location_uri

    def initialize(name)
      @name = format_name(name)
      @records = []
      parse
    end

    private

    def format_name(name)
      name.gsub('_','-')
    end

    def parse
      @doc = Nokogiri::XML(open(URL + @name).read).remove_namespaces!

      @definition = doc.css("definition").text
      @publication_date = doc.css("publicationDate").text
      @status = doc.css("status")
      @short_name = doc.css("ShortName").text
      @version = doc.css("Version").text
      @canonical_uri = doc.css("CanonicalUri").text
      @canonical_version_uri = doc.css("CanonicalVersionUri").text
      @location_uri = doc.css("LocationUri").text
      
      records = doc.css("Row").map do |row|
        row.css("SimpleValue").map(&:text)
      end
      records.each do |record|
        @records << Record.new(record[0],record[1],record[2])
      end

    end
  end

  class Record
    attr_reader :code, :source, :description

    def initialize(code, source, description)
      @code = code
      @source = source
      @description = description
    end
  end

end

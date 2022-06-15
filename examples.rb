puts "\n------- Identificar uma URL válida -------"

def valid_url?(url)
    regexp = Regexp.new("((http|https)://)(www.)?" +
    "[a-zA-Z0-9@:%._\\+~#?&//=]" +
    "{2,256}\\.[a-z]" +
    "{2,6}\\b([-a-zA-Z0-9@:%" +
    "._\\+~#?&//=]*)")

    puts url.match?(regexp)
end

valid_url?("google.com")
valid_url?("https://")
valid_url?("https://google.com")


puts "\n------- Identificar tags HTML -------"

def get_html_tags(str)
    puts str.match(/<\s*a[^>]*>(.*?)<\s*\/\s*a>/)
end

get_html_tags('grewgreg <a href="/life">oie</a>wjeivnrn gregre gwegrw')


puts "\n------- Evitar palavras duplicadas em um frase -------"

def get_repeated_words(str)
    puts str.scan(/\b(\w+)\s+\1\b/)
end

get_repeated_words('word word only one you you')


puts "\n------- Verificar se é um ip válido -------"

def ip_address?(str)
    puts str.match?(/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

ip_address?("0000.0000")
ip_address?("192.0.32")
ip_address?("192.168.1.1")


puts "\n------- Capitalizar palavras de uma frase -------"

def capit(str)
    puts str.gsub(/\w+/) { |w| w.capitalize }
end

capit("test to capitalize the words and not the numbers like 9")

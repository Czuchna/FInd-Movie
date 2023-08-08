import 'dart:convert';
import 'package:http/http.dart' as http;

class ImdbAPI {
  final String apiKey = 'TWÓJ_KLUCZ_API';  // Zamień 'TWÓJ_KLUCZ_API' na Twój rzeczywisty klucz

  Future<Map<String, dynamic>> fetchMovieDetails(String movieId) async {
    final response = await http.get(
      Uri.parse('https://API_URL/movie/$movieId?api_key=$apiKey'), // Zastąp 'API_URL' odpowiednim adresem URL endpointu IMDb
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load movie details');
    }
  }
}

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static const String supabaseUrl =
      'https://fbzzkgpqdlatdlcalhgt.supabase.co';

  static const String supabaseAnonKey =
      'sb_publishable_bpIkBq5BVGvo_KvnsizCfw_TG3vH6hA';

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      publishableKey: supabaseAnonKey,
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
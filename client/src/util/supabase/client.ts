import { createBrowserClient } from '@supabase/ssr'

const SUPABASE_KEY = "SUPABASE_CLIENT_API_KEY";

export function createClient() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    SUPABASE_KEY,
  )
}

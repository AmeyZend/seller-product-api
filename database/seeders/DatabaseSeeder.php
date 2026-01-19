<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::updateOrCreate(
            ['email' => 'admin@test.com'],
            [
                'name' => 'Admin',
                'password' => Hash::make('password'),
                'role' => 'ADMIN'
            ]
        );

        // Seller
        User::updateOrCreate(
            ['email' => 'seller@test.com'],
            [
                'name' => 'Seller One',
                'password' => Hash::make('password'),
                'role' => 'SELLER'
            ]
        );
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        User::create([
            'name' => 'Admin',
            'email' => 'admin@example.com',
            'role' => 'ADMIN',
            'password' => Hash::make('password')
        ]);

    }
}

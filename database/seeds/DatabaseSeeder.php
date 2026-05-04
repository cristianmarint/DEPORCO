<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Orquesta el sembrado completo de la base de datos.
     * Las tablas estan en espanol (BD legada) pero los seeders/clases en ingles.
     */
    public function run()
    {
        $this->truncateTables([
            'users',
            'departamento',
            'municipio',
            'telefono',
            'tipo_sangre',
            'genero',
            'eps',
            'direccion',
            'datos_basicos',
            'tipo_educacion',
            'instituto',
            'color',
            'equipo',
            'tarjeta',
            'categoria',
            'tarjeta_categoria',
            'temporada',
            'criterio',
            'torneo',
            'criterio_torneo',
            'jugador',
            'programa',
            'tipo_jugador',
            'inscripcion_equipo',
            'inscripcion_jugador',
            'fase',
            'calendario',
            'arbitro',
            'arbitro_puesto',
            'lugar',
            'enfrentamiento',
            'enfrentamiento_arbitro',
            'tiempo_enfrentamiento',
            'resultado',
            'estadistica',
            'anotacion',
            'falta',
        ]);

        // Voyager + tablas base de admin
        $this->call(VoyagerDatabaseSeeder::class);

        // Catalogos basicos
        $this->call(CityTableSeeder::class);
        $this->call(BloodTypeTableSeeder::class);
        $this->call(GenderTableSeeder::class);
        $this->call(HealthProviderTableSeeder::class);
        $this->call(AddressTableSeeder::class);

        // Personas + usuarios (debe ir antes de cualquier seeder que dependa de user_id)
        $this->call(ProfileTableSeeder::class);
        $this->call(UsersTableSeeder::class);

        // Catalogos secundarios
        $this->call(EducationTypeTableSeeder::class);
        $this->call(InstitutionTableSeeder::class);
        $this->call(ColorTableSeeder::class);
        $this->call(CardTableSeeder::class);
        $this->call(CategoryTableSeeder::class);
        $this->call(CardCategoryTableSeeder::class);
        $this->call(SeasonTableSeeder::class);
        $this->call(CriterionTableSeeder::class);

        // Torneos + criterios + jugadores
        $this->call(TournamentTableSeeder::class);
        $this->call(TournamentCriterionTableSeeder::class);
        $this->call(PlayerTableSeeder::class);
        $this->call(ProgramTableSeeder::class);
        $this->call(PlayerTypeTableSeeder::class);

        // Equipos e inscripciones (este orden importa para FK)
        $this->call(TeamTableSeeder::class);
        $this->call(TeamRegistrationTableSeeder::class);
        $this->call(PlayerRegistrationTableSeeder::class);

        // Lugares, arbitros, fases, calendarios
        $this->call(VenueTableSeeder::class);
        $this->call(RefereePositionTableSeeder::class);
        $this->call(PhaseTableSeeder::class);
        $this->call(ScheduleTableSeeder::class);

        // Partidos y resultados (chain coherente con FKs reales)
        $this->call(MatchPeriodTableSeeder::class);
        $this->call(GameMatchTableSeeder::class);
        $this->call(MatchResultTableSeeder::class);

        // Estadisticas + anotaciones + faltas (lo que alimenta /playerstats)
        $this->call(PlayerMatchStatTableSeeder::class);
        $this->call(GoalTableSeeder::class);
        $this->call(FoulTableSeeder::class);
    }

    public function truncateTables(array $tables)
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        foreach ($tables as $table) {
            DB::table($table)->truncate();
        }
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
    }
}

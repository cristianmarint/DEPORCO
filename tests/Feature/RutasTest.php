<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class RutasTest extends TestCase
{
    /**
     * return de admin view
     *
     * @test
     */
    public function admin()
    {
        $this->withExceptionHandling();
        $this->get('/admin')
//            ->assertSee('')
            ->assertStatus(200);
    }

    /**
     * return de institution view
     *
     * @test
     */
    public function institution()
    {
        $this->get('/institutos')
            ->assertStatus(200);
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('navbars', function (Blueprint $table) {
            $table->id();
            $table->string('image'); // Field to store the image as a BLOB
            $table->string('background_color'); // Field to store the background color
              $table->string('body_image');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *cc
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('navbars');
    }
};

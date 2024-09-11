<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBodyImageToNavbarsTable extends Migration
{
    public function up()
    {
        Schema::table('navbars', function (Blueprint $table) {
            $table->string('body_image')->nullable()->after('image');
        });
    }

    public function down()
    {
        Schema::table('navbars', function (Blueprint $table) {
            $table->dropColumn('body_image');
        });
    }
}

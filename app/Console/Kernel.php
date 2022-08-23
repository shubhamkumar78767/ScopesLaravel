<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use App\Jobs\SendEmailJob;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->call(function(){
        //     info('called fucntion every min');
        // })->everyMinute();

        // $schedule->command('hello:world')->everyMinute();
        
        // $schedule->call(function () {
        //     info('xyz');
        // })->weekly()->sundays()->timezone('Asia/Kolkata')->at('18:17');

        // $schedule->command('hello:world')->everyMinute()->withoutOverlapping();

        $schedule->command('hello:world')->everyMinute()->runInBackground();
        $schedule->command('hello:world')->everyMinute()->runInBackground();
        $schedule->command('hello:world')->everyMinute()->runInBackground();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}

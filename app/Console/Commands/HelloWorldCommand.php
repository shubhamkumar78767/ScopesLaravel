<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class HelloWorldCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'hello:world';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Hello World Command Description';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        sleep(2);
        info('hello');
        return 0;
    }
}

<?php

namespace App\View\Components;

use Illuminate\View\Component;

class InputField extends Component
{
    public $label;
    public $name;
    public $type;

    public function __construct($label, $name, $type = 'text')
    {
        $this->label = $label;
        $this->name = $name;
        $this->type = $type;
    }

    public function render()
    {
        return view('components.input-field');
    }
}

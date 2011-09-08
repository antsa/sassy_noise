Sassy noise
===========

A Sass port of Noisy JS (https://github.com/DanielRapp/Noisy) for generating
noise background images as base64 data URIs.

Based on work of @philippbosch & @aaronrussell.

No templates?
=============

I've omitted the project template because probably no-one wants to build a
project based on noise. I might add another pattern later.

Basic usage
===========

In your config.rb etc:

    require "sassy_noise"
    
In your .scss:

    // Default values
    // $bg-noise-intensity-default:  0.5;
    // $bg-noise-opacity-default:    0.08;
    // $bg-noise-size-default:       200;
    // $bg-noise-mono-default:       false;

    @import "sassy_noise";
    // Example usage
    body {
      @include bg-noise();
    }
    // Monochrome example
    body {
      @include bg-noise($mono: true);
    }


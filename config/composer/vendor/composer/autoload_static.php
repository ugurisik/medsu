<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit792144db253153d0f92bba2e630f28ac
{
    public static $prefixLengthsPsr4 = array (
        'T' => 
        array (
            'Treinetic\\ImageArtist\\' => 22,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Treinetic\\ImageArtist\\' => 
        array (
            0 => __DIR__ . '/..' . '/treinetic/imageartist/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit792144db253153d0f92bba2e630f28ac::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit792144db253153d0f92bba2e630f28ac::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit792144db253153d0f92bba2e630f28ac::$classMap;

        }, null, ClassLoader::class);
    }
}

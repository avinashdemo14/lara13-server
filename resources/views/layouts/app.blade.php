<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>

    {{-- @vite([
        'resources/css/app.css',
        'resources/js/app.js'
    ]) --}}
</head>
<body>

<nav>
    <a href="/">Home</a>
    <a href="/about">About</a>
    <a href="/services">Services</a>
    <a href="/contact">Contact</a>
</nav>

<hr>

@yield('content')

</body>
</html>
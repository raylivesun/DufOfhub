#!/usr/bin/pwsh -w
# Let $u = \frac{2}{x^3}$. The equation becomes

# $$
# 2 + u + \cosh(u) + \cosh(u) + \cosh(u) + \cosh(u) + O(u^9) = 0
# $$

# $$
# 2 + u + 4\cosh(u) + O(u^9) = 0
# $$
$u = 2 / $x^3
$cosh = [math]::Cosh($u)
$equation = 2 + $u + 4 * $cosh
Write-Output $equation

if ($equation -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}

# Using the Taylor series expansion for $\cosh(u) = 1 + \frac{u^2}{2!} + \frac{u^4}{4!} + \dots$, we get

# $$
# 2 + u + 4\left(1 + \frac{u^2}{2!} + \frac{u^4}{4!} + \dots\right) + O(u^9) = 0
# $$

# $$
# 2 + u + 4 + 2u^2 + \frac{4u^4}{24} + \dots + O(u^9) = 0
# $$

# $$
# 6 + u + 2u^2 + \frac{u^4}{6} + \dots + O(u^9) = 0
# $$
function CalculateEquation {
    param (
        [double]$x
    )
    
    $u = 2 / $x**3
    $cosh = [math]::Cosh($u)
    $equation = 2 + $u + 4 * $cosh
    
    if ($equation -eq 0) {
        Write-Output "The equation is satisfied for x = $x"
    } else {
        Write-Output "The equation is not satisfied for x = $x"
    }
    return $equation
}
$x = 1.0
$equation = CalculateEquation $x
Write-Output $equation

# Using the Taylor series expansion for $\cosh(u) = 1 + \frac{u^2}{2!} + \frac{u^4}{4!} + \dots$, we get

# $$
# 2 + u + 4\left(1 + \frac{u^2}{2!} + \frac{u^4}{4!} + \dots\right) + O(u^9) = 0
# $$

# $$
# 2 + u + 4 + 2u^2 + \frac{4u^4}{24} + \dots + O(u^9) = 0
# $$

# $$
# 6 + u + 2u^2 + \frac{u^4}{6} + \dots + O(u^9) = 0
# $$
$u = 2 / $x**3
$cosh = [math]::Cosh($u)
$equation = 2 + $u + 4 * $cosh
Write-Output $equation
if ($equation -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}

# Substituting $u = \frac{2}{x^3}$ back, we have

# $$
# 6 + \frac{2}{x^3} + 2\left(\frac{2}{x^3}\right)^2 + \frac{1}{6}\left(\frac{2}{x^3}\right)^4 + \dots = 0
# $$


# $$
# 6 + \frac{2}{x^3} + \frac{8}{x^6} + \frac{16}{6x^{12}} + \dots = 0
# $$


# $$
# 6 + \frac{2}{x^3} + \frac{8}{x^6} + \frac{8}{3x^{12}} + \dots = 0
# $$

$fraction = 2 / $x**3
$series = 6 + $fraction + $fraction**2 / 2 + $fraction**4 / 24 + $fraction**6 / 720
Write-Output "The series representation is $series"
if ($series -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}
$livestream = 6 + $fraction + $fraction**2 / 2 + $fraction**4 / 24 + $fraction**6 / 720
Write-Output "The series representation is $livestream"
if ($livestream -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}


# Continuing the series, we get

# $$
# 6 + \frac{2}{x^3} + \frac{8}{x^6} + \frac{8}{3x^{12}} + \frac{8}{15x^{18}} + \dots = 0
$jasp =  6 + $fraction + $fraction**2 / 2 + $fraction**4 / 24 + $fraction**6 / 720 + $fraction**8 / 40320 + $fraction**10 / 3628800
Write-Output "The series representation is $jasp"
if ($jasp -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}
$jasp =  6 + $fraction + $fraction**2 / 2 + $fraction**4 / 24 + $fraction**6 / 720 + $fraction**8 / 40320 + $fraction**10 / 3628800
Write-Output "The series representation is $jasp"
if ($jasp -eq 0) {
    Write-Output "The equation is satisfied for x = $x"
} else {
    Write-Output "The equation is not satisfied for x = $x"
}
$jasp =  6 + $fraction + $fraction**2 / 2 + $fraction**4 / 24 + $fraction**6 / 720 + $fraction**8 / 40320 + $fraction**10 / 3628800

Write-Output "The series representation is $jasp"

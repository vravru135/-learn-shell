echo Hellow world

# Colour syntax: echo -e "\e[COLm MESSAGE \e[0m"
# echo -e , -e is to allow colours
# Double quotes are mandatory, Single quotes can be used but not preferred.
\e[COLm  -> COL is a color code we need provide
# RED        -31
# GREEN      -32
# YELLOW     -33
# BLUE       -34
# MAGENTA    -35
# CYAN       -36
# \e[0m  -> This is disable the enabled colour

echo -e "\e[31m This text in Red Colour \e[0m "
echo -e "\e[33m This text in YELLOW Colour \e[0m "

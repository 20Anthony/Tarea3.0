# test_app.py
from app import sumar

def test_sumar():
    # Caso de prueba automatizado
    assert sumar(2, 3) == 5
    assert sumar(-1, 1) == 0
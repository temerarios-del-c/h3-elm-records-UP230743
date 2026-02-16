module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



--Simple Excercises


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 float1 float2 float3 =
    float1 + float2 + float3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--Ejercicio 1


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



--Ejercicio 2


users : List { name : String, uType : String }
users =
    [ { name = "Roberto", uType = "Student" }, { name = "Mitsiu", uType = "Professor" } ]


verificarEstudiante : { name : String, uType : String } -> String
verificarEstudiante usuario =
    if usuario.uType == "Student" then
        usuario.name

    else
        ""


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map verificarEstudiante list



--Ejercicio 3


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogame : List Videogame
videogame =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 50000, genres = [ "Action", "Shooter" ] }
    , { title = "Ocarina of time", releaseYear = 1995, available = False, downloads = 50000, genres = [ "Action", "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videogameList =
    List.map .genres videogameList



--Homework (HTML)


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16GB", model = "TinkPad T14", brand = "Lenovo", screenSize = "14 Pulgadas" }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]

# Mapa OSM Flutter

Aplicativo de mapas em Flutter utilizando **OpenStreetMap**. Permite:  
- Exibir a localização atual do dispositivo  
- Atualização da posição em tempo real durante o deslocamento  
- Busca por endereços  
- Ícone personalizado no mapa  

## Funcionalidades

- **Mapa interativo:** baseado no Flutter Map e OpenStreetMap  
- **Atualização automática:** marcador segue a posição do dispositivo  
- **Busca de endereços:** reposiciona o marcador conforme a pesquisa  
- **Compatível com Android e iOS**  

## Tecnologias e pacotes usados

- [Flutter](https://flutter.dev/)  
- [flutter_map](https://pub.dev/packages/flutter_map)  
- [latlong2](https://pub.dev/packages/latlong2)  
- [provider](https://pub.dev/packages/provider)  
- [geolocator](https://pub.dev/packages/geolocator)  
- [geocoding](https://pub.dev/packages/geocoding)  
- [battery_plus](https://pub.dev/packages/battery_plus)  

## Como rodar

1. Clone o repositório:

```bash
git clone <URL_DO_REPOSITORIO>
```
```bash
flutter pub get
```
```bash
flutter run
```
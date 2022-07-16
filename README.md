# kilo_6

## Simplest carousel project

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/60324587/179339963-3e81943f-8b29-4089-ac2f-0bf6871af528.png">

```
CarouselSlider(
              options: CarouselOptions(autoPlay: true),
              items: _imagePaths.map((imagePath) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Image.asset(imagePath),
                );
              }).toList(),
            ),

```

### items is excpecting list of widgets , that`s wgy we used (map)
### Mediaquery gives us the size of the current phone


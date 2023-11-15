### Methods of handling data sets for emergency vehicle classification
### Normalizing our data similar to the MNIST dataset
### Data augment to artificially inflate the number of data sets points
### Publically available open labelled data sets


### Keras API

A Keras model simplifies our model creation.

```python
from keras.models import Sequential

template_model = Sequential()

template_model.add(...)
template_model.add(...)
template_model.add(...)
template_model.add(...)
template_model.add(...)
```

where we have several choices for each layer:
- dense, dropout, flatenning
- convolutional (1D, 2D, 3D)
- pooling
- zero padding layers
- rnn layers



# Rudi: The Ruby MIDI Sequencer

Welcome to **Rudi**, the versatile MIDI sequencer built for Ruby enthusiasts, music producers, and creators. Rudi bridges the gap between code and music, offering a unique platform for sequencing drum machines and synthesizers alike. Whether you're laying down beats, composing melodies, or experimenting with soundscapes, Rudi provides the tools you need to bring your musical visions to life.

## Features

- **Versatile Sequencing**: Craft intricate drum patterns, melodic lines, and harmonies with support for both drum machines and synthesizers.
- **Dynamic Tempo Control**: Easily adjust tempos and rhythms to fit the groove of your project.
- **Algorithmic Composition**: Utilize Rudi's capabilities to generate random patterns and explore new musical ideas.
- **Real-Time Interaction**: Modify sequences on the fly with live coding, offering immediate auditory feedback.

## Getting Started

### Prerequisites

Ensure you have Ruby installed on your machine. Rudi is developed with Ruby version 3.1.4, but it should be compatible with newer versions.

### Installation

1. Clone the Rudi repository to your local machine:

```bash
git clone https://github.com/yourusername/rudi.git
```

2. Navigate to the Rudi project directory:

```bash
cd rudi
```

3. (Optional) Install any dependencies specified in the project.

### Usage

To dive into sequencing with Rudi:

```ruby
require_relative 'lib/rudi'

# Initialize your MIDI device
rudi = Rudi.new(output_index: 0)

# Lay down a funky drum pattern
rudi.funk_walk(0.081)

# Compose a melody with your synthesizer
rudi.play_melody

# Explore algorithmic composition
rudi.random_pattern
```

Feel free to explore the documentation and example scripts included in the project for more advanced uses and sequencing techniques. Be sure to write your own methods in order to create your desired sequence. Use a new runner file to make a new composition, and require the relevant file to trigger the synthesizer.

## How to Contribute

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Here's how you can contribute to Rudi:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/YourFeature`)
3. Commit your Changes (`git commit -m 'Add some YourFeature'`)
4. Push to the Branch (`git push origin feature/YourFeature`)
5. Open a Pull Request

## Acknowledgments

- My heartfelt thanks to the Ruby community for their endless inspiration.
- A special shoutout to all the music makers and coders who explore the boundaries of digital sound.

Join me in redefining the boundaries of music production with Rudi, where your code composes the soundtrack.

***Nathan Kirk Lambertson***

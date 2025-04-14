/*
  # Create news table with dummy data

  1. New Tables
    - `news`
      - `id` (bigint, primary key)
      - `title` (text)
      - `content` (text)
      - `author` (text)
      - `date` (text)
      - `read_time` (text)
      - `image_url` (text)
  
  2. Security
    - Enable RLS on `news` table
    - Add policy for public read access
*/

CREATE TABLE IF NOT EXISTS news (
  id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title text NOT NULL,
  content text NOT NULL,
  author text NOT NULL,
  date text NOT NULL,
  read_time text NOT NULL,
  image_url text NOT NULL
);

-- Enable Row Level Security
ALTER TABLE news ENABLE ROW LEVEL SECURITY;

-- Create policy to allow public read access
CREATE POLICY "Allow public read access"
  ON news
  FOR SELECT
  TO public
  USING (true);

-- Insert dummy news data
INSERT INTO news (title, content, author, date, read_time, image_url) VALUES
  (
    'The Future of Artificial Intelligence',
    'AI continues to evolve at an unprecedented pace, transforming industries and creating new possibilities. Researchers are now focusing on developing more ethical and transparent AI systems that can better serve humanity while addressing concerns about bias and privacy.',
    'Sarah Johnson',
    'March 1, 2024',
    '5 min read',
    'https://images.unsplash.com/photo-1677442136019-21780ecad995'
  ),
  (
    'Sustainable Energy Breakthrough',
    'Scientists have developed a new type of solar cell that achieves record-breaking efficiency levels. This breakthrough could revolutionize renewable energy adoption and accelerate the transition to clean energy sources.',
    'Michael Chen',
    'March 2, 2024',
    '4 min read',
    'https://images.unsplash.com/photo-1509391366360-2e959784a276'
  ),
  (
    'Space Tourism Takes Off',
    'Private space companies are making significant strides in commercial space travel. With several successful launches under their belt, they are now focusing on making space tourism more accessible and affordable for the general public.',
    'Emily Rodriguez',
    'March 3, 2024',
    '6 min read',
    'https://images.unsplash.com/photo-1516849841032-87cbac4d88f7'
  ),
  (
    'The Rise of Remote Work',
    'The global shift to remote work has permanently changed the workplace landscape. Companies are adapting their policies and culture to support this new way of working, while employees are finding better work-life balance.',
    'David Kim',
    'March 4, 2024',
    '3 min read',
    'https://images.unsplash.com/photo-1585859615922-097456fd5a14'
  ),
  (
    'Breakthrough in Quantum Computing',
    'Researchers have achieved quantum supremacy in a new experiment, solving complex problems that would take classical computers millions of years. This milestone brings us closer to practical quantum computing applications.',
    'Lisa Zhang',
    'March 5, 2024',
    '7 min read',
    'https://images.unsplash.com/photo-1635070041078-e363dbe005cb'
  ),
  (
    'Mental Health in the Digital Age',
    'As digital technology becomes increasingly integrated into our lives, experts are studying its impact on mental health. New research suggests both benefits and challenges of our connected world.',
    'James Wilson',
    'March 6, 2024',
    '4 min read',
    'https://images.unsplash.com/photo-1493836512294-502baa1986e2'
  ),
  (
    'Ocean Cleanup Innovation',
    'A new system for removing plastic waste from the oceans has shown promising results in initial trials. The technology could help address the growing crisis of marine pollution.',
    'Maria Garcia',
    'March 7, 2024',
    '5 min read',
    'https://images.unsplash.com/photo-1484291470158-b8f8d608850d'
  ),
  (
    'The Future of Transportation',
    'Electric and autonomous vehicles are reshaping the future of transportation. Cities are adapting their infrastructure to support these new technologies while reducing their carbon footprint.',
    'Alex Thompson',
    'March 8, 2024',
    '6 min read',
    'https://images.unsplash.com/photo-1449965408869-eaa3f722e40d'
  ),
  (
    'Advances in Medical Research',
    'New breakthroughs in gene therapy and personalized medicine are offering hope for treating previously incurable diseases. Scientists are optimistic about the potential impact on healthcare.',
    'Rachel Brown',
    'March 9, 2024',
    '5 min read',
    'https://images.unsplash.com/photo-1576086213369-97a306d36557'
  ),
  (
    'Cybersecurity Challenges',
    'As cyber threats evolve, organizations are adopting new strategies to protect their digital assets. Experts emphasize the importance of proactive security measures and employee training.',
    'Tom Anderson',
    'March 10, 2024',
    '4 min read',
    'https://images.unsplash.com/photo-1550751827-4bd374c3f58b'
  );
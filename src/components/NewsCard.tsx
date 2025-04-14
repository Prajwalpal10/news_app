import React from 'react';
import { motion } from 'framer-motion';
import { Calendar, Clock, User } from 'lucide-react';

interface NewsCardProps {
  title: string;
  content: string;
  author: string;
  date: string;
  readTime: string;
  imageUrl: string;
}

export const NewsCard: React.FC<NewsCardProps> = ({
  title,
  content,
  author,
  date,
  readTime,
  imageUrl,
}) => {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5 }}
      className="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow duration-300"
    >
      <img
        src={imageUrl}
        alt={title}
        className="w-full h-48 object-cover"
      />
      <div className="p-6">
        <h2 className="text-2xl font-bold mb-3 text-gray-800">{title}</h2>
        <p className="text-gray-600 mb-4 line-clamp-3">{content}</p>
        
        <div className="flex items-center justify-between text-sm text-gray-500">
          <div className="flex items-center space-x-2">
            <User size={16} />
            <span>{author}</span>
          </div>
          <div className="flex items-center space-x-2">
            <Calendar size={16} />
            <span>{date}</span>
          </div>
          <div className="flex items-center space-x-2">
            <Clock size={16} />
            <span>{readTime}</span>
          </div>
        </div>
      </div>
    </motion.div>
  );
};
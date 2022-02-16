import React from 'react';
// import { Fade } from 'react-slideshow-image';
import 'react-slideshow-image/dist/styles.css';
import './style.css';

const fadeImages = [
  'images/img1.jpeg',
  'images/img2.jpeg',
  'images/img3.jpeg',
	'images/img4.jpeg',
	'images/img5.jpeg',
	'images/img6.jpeg',
	'images/img7.jpeg'
];

const fadeProperties = {
  duration: 5000,
  transitionDuration: 400,
  infinite: true,
  indicators: true,
  onChange: (oldIndex, newIndex) => {
    console.log(`fade transition from ${oldIndex} to ${newIndex}`);
  }
}

export default function Slideshow(){
    return (
      <div className="slide-container">
      {/* <Fade {...fadeProperties}>
        {fadeImages.map(src => (
             <div className="each-fade">
               <img className='slide-img' src={src} alt="About Us" />
             </div> ))
        }
      </Fade> */}
    </div>
     
    )
}
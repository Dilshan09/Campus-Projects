import React from 'react';
import { Link } from 'react-router-dom';

export default function Home(){
    return(
        <div className="home">
            <div className="card-container">
                <Link className="card flex items-center justify-center" to="/nasaphoto"> 
                    See Nasa Photo!
                </Link>
                <Link className="card flex items-center justify-center" to="/marsrover"> 
                    See Mars Rover Photo!
                </Link>
                <Link className="card flex items-center justify-center" to="/nasaphoto"> 
                    See Nasa Photo!
                </Link>
                <Link className="card flex items-center justify-center" to="/nasaphoto"> 
                    See Nasa Photo!
                </Link>
            </div>
        </div>
    );
}

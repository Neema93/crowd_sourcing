import { useHistory} from "react-router-dom";
import React, { useState, useEffect } from "react";
import { MenuItems } from "./MenuItem";
import './Navbar.css';


export default function Navbar(props) {

  const [state, setState] = useState({
    clicked: false
  });

  const [id, setId] = useState();
  const [email, setEmail] = useState();

  useEffect(() => {
      setId(localStorage.getItem("userID"));
      setEmail(localStorage.getItem("email"));
  }, []);

  const logout = function () {
    setEmail("");
    setId("");
    localStorage.removeItem("userID");
    localStorage.removeItem("email");
  }
  const checkLogin = () => {
    setId(localStorage.getItem("userID"));
    setEmail(localStorage.getItem("email"));
  }

  const history = useHistory();
  
  const handleClick = () => {
    setState({clicked : ! state.clicked})
  }
  // const handleRegister = () => {
  //   history.push("/Register")
  // }
  return(
      <nav className="NavbarItems">
        <a className="navbar-logo" href="/Homepage"><img src="/images/logo.png"/></a>
        <div className="menu-icon" onClick={handleClick}>
        </div>
        <ul className="nav-menu">
          {MenuItems.map((item, index) => {

            return (
              <li key={index}>
                <a className="nav-menu-text" href={item.url}>
                  {item.title}
                </a>
              </li>
            )
          })}
          
        </ul>
        {email? 
        <>
            <div className="login-btn">
            <h5>
              Logged in as {email}
            </h5>
          </div>
          <div className="signup-btn">
            <button className="login" onClick={logout}>
              Log-out
            </button>
          </div>
        </>
        :
        <>
          <div className="login-btn">
              <button className="login">
              <a className="nav-menu-login" href={"/Login"}>
                Log-in
                </a>
              </button>
            </div>
            <div className="signup-btn">
              <button className="signup">
              <a className="nav-menu-login" href={"/Register"}>
                Sign-Up
                </a>
              </button>
            </div>
          </>
        }
          


      </nav>
    
  )
}
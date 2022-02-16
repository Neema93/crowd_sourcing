
import './App.css';
import React, { useState } from "react";
import {BrowserRouter as Router, Route, Navigate} from 'react-router-dom';

import About from './components/About';
import Products from './components/Products';
// import Home from './components/Home';
// import About from './components/About';
import RequestGoods from './components/RequestGoods';
import DonateGoods from './components/DonateGoods';
import Register from './components/Register';
import DonateMoney from './components/DonateMoney';
import Login from './components/Login';
import Donate from './components/Donate';
import Search from './components/Search';
import Fundraising from './components/Fundraising';
import Homepage from "./components/Homepage";
import FundraisingOption from './components/FundraisingOptions';

import Cart1 from './components/Cart1';
import DonateForm from './components/DonateForm';
 import UserRequest from './components/UserRequest';
import Navbar from './components/Navbar/Navbar';



export default function App() {

  const [user,setLoginUser] = useState({})
  console.log(user);
  return (
    <div className="App">
<Navbar/>
      <Router>
        <Route path="/Homepage" component={Homepage}/>
        <Route path="/Register" component={Register}/>
        {/* <Route path="/"><Homepage /></Route> */}
        <Route path="/fundrasising" component={Fundraising} />
        <Route path="/fundrasisingoption" component={FundraisingOption} />
        <Route path="/DonateGoods" component={DonateGoods} />
        <Route path="/RequestGoods">< RequestGoods/></Route>
        <Route path="/requestgoods/*" component={Products} />
        <Route path="/about" component={About} />
        <Route path="/Login"><Login setLoginUser={setLoginUser}/></Route>
        {/* <Route path="/Register"><Register/></Route> */}
        {/* <Route path="/DonateGoods">< DonateGoods/></Route> */}
        <Route path="/Fundraising/">< Fundraising/></Route>
        <Route path="/DonateMoney/">< DonateMoney/></Route>
        <Route path="/Donate/">< Donate/></Route>
        <Route path="/Search/">< Search/></Route>
        <Route path="/Cart1/">< Cart1/></Route>
        <Route path="/UserRequest/">< UserRequest/></Route>
        <Route path="/DonateForm"><DonateForm /></Route>
        {/* <Route path="/"><Homepage/></Route> */}
        </Router>
        </div>
  )
};
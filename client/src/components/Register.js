import React, { useState } from "react";
import {useHistory} from "react-router-dom";

import "./form.css"
import axios from "axios";
//import { useAlert } from 'react-alert';

export default function Register(props) {
  const {history} = useHistory()

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [first_name, setFirstname] = useState("");
  const [last_name, setLastname] = useState("");
  const [phone, setPhone] = useState("");
  const [street, setStreet] = useState("");
  const [city, setCity] = useState("");
  const [province, setProvince] = useState("");
  const [postal, setPostal] = useState("");
  const [error, setError] = useState("");
  

  // const alert = useAlert();

  //reset form data 
  function handleReset() {
    setEmail = "";
    setPassword = "";
    setPhone = "";
    setFirstname = "";
    setLastname = "";
    setPhone = "";
    setStreet = "";
    setCity = "";
    setProvince = "";
    setPostal = "";

  }
  //cancel function set onCancel event
  // const Cancel = () => {
  //   // reset();
  //   props.onCancel();
  // }
  
  function handleSubmit(e) {
    e.preventDefault();
	const user = {
       first_name,last_name,email,phone,street,city,province,postal,password 
      };	
    axios.post("http://localhost:3001/api/users/register", user)
		.then(res => {
      localStorage.setItem("userID", res.data.id);
      localStorage.setItem("email", res.data.email);
      alert("Registered successfully");
     
    })
    .catch((error) => {
      alert(error.response.data.message)
    });
    handleReset();
    history.push("/Homepage");
  }
  function handleReset(){
    setEmail("");
      setPassword("");
      setFirstname("");
      setLastname("");
      setPhone("");
      setStreet("");
      setCity("");
      setProvince("");
      setPostal("");
  }
  //check validation for textbox
  // function validate() {
  //   // if (student === "") {
  //   //   setError("Student name cannot be blank");
  //   //   return;
  //   // }
  //   // if (interviewer === null) {
  //   //   setError("Interviewer cannot be unselected");
  //   //   return;
  //   // }
  //   // setError("");
  //   // save(email, password,firstName,lastName,phone,stAddress,province,state,postal);
  // }
  
  //create form 
  return (
    <main className="">
      <section className="main">
        <h1>Register</h1>
        <form onSubmit={handleSubmit}>
        <label name="First Name">First Name</label>
          <input className="" name="first_name"  value={first_name}
            onChange={(event) => setFirstname(event.target.value)}
          /><br/>
          <label name="Last Name">Last Name</label>
          <input className="" name="last_name"  value={last_name}
            onChange={(event) => setLastname(event.target.value)}
          /><br/>
        <label name="Email">Email</label>
          <input className="" name="email" type="email" value={email}
            onChange={(event) => setEmail(event.target.value)}
          /><br/>
          <label name="Password">Password</label>
          <input className="" name="Password" type="password" value={password}
            onChange={(event) => setPassword(event.target.value)}
          /><br/>
          
          <label name="Phone">Phone number</label>
          <input className="" name="phone" value={phone}
            onChange={(event) => setPhone(event.target.value)}
          /><br/>
          <label name="street">St_Address</label>
          <input className="" name="street"  value={street}
            onChange={(event) => setStreet(event.target.value)}
          /><br/>
          <label name="city">City</label>
          <input className="" name="city"  value={city}
            onChange={(event) => setCity(event.target.value)}
          /><br/>
          <label name="province">province</label>
          <input className="" name="province"  value={province}
            onChange={(event) => setProvince(event.target.value)}
          /><br/>
          
          <label name="Postal code">Postal code</label>
          <input className="" name="postal"  value={postal}
            onChange={(event) => setPostal(event.target.value)}
          /><br/>
          {/* <section className="">{error}</section> */}
          <button type="submit" >Submit</button>
          <button onClick={handleReset}>Reset</button>
        </form>
      </section>
      
    </main>
  );
}
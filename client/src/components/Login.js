import React,{useState} from 'react'
import axios from 'axios';
// import Register from "./Register"
import {useHistory} from "react-router-dom";
import {
    BrowserRouter as Router, 
    Switch, 
    Route,
    Link
  
  } from "react-router-dom";
const Login = (props) => {
const history = useHistory()
const {setLoginUser} = props;
    const [user,setUser] = useState({
        email:"",
        password: ""
    })
    const handleChange = e =>{
    const {name,value} = e.target
    setUser({
    ...user ,
    [name]:value
    })
    }
 console.log("hiii user",user);
    const login =(event)=>{
        event.preventDefault()
        axios.post("http://localhost:3001/api/users/Login",user)
        .then(res=>{
            alert(res.data);
            console.log("res.data login",res.data.id,res.data.email);
            // alert("id,email"+res.data.uid,res.data.email);
        // setLoginUser(res.data.user)
        localStorage.setItem("userID", res.data.id);
        localStorage.setItem("email", res.data.email);
        setLoginUser({_id:res.data.id})
    })
        history.push("/Homepage")
        .catch(error => console.log(error));
    }
    return (
        <main className="">
            <section className="main">
                <h1>Login</h1>
                <form action="#" autoComplete="off">
                    <label name="Email">Email</label>
                    <input type="text" name="email" value={user.email}  onChange={handleChange} />
   
                    <br />
                    <label name="Password">Password</label>
                    <input type="password" name="password" value={user.password}  onChange={handleChange} />
                    <br />
                    {/* <section className="">{error}</section> */}
                    <button type="submit"onClick={login} >Login</button><br/><br/>
                    Don't have an account? 
                    <Link to="/Register">Register </Link>
                    {/* <Route path="/Register"><Register/></Route> */}
                </form>
            </section>
        </main>
    );
}
export default Login;
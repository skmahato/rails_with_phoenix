import React, { Fragment, Component } from "react"
import PropTypes from "prop-types"
class Users extends Component {
  constructor(props){
  	super(props);
  	this.state = { users: [] };
  }

  componentDidMount() {
    this.ajax().then(response => {
      this.setState({ users: response });
      return response;
    });
  }

  ajax = () => {
    return fetch('http://18.212.164.13:4000', {method: 'GET', credentials: 'include'})
          .then(response => response.json())
          .catch(error => {
            return [{ name: "Failed to load", email: "http://18.212.164.13:4000" }];
          })
  }

  render () {
    const { users } = this.state;

    return (
      <Fragment>
        {users.map((user) => {
          return(
            <div key={user.email}>
              {user.name} - {user.email}
            </div>
          )
        })}
      </Fragment>
    );
  }
}

export default Users

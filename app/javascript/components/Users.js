import React, { Fragment, Component } from "react"
import PropTypes from "prop-types"
class Users extends Component {
  constructor(props){
  	super(props);
  	this.state = { users: [] };
  }
  componentDidMount() {
    fetch('http://localhost:4000', {method: 'GET', credentials: 'include'}).then(response => response.json()).then(response => {
      this.setState({ users: response });
      return response;
    });
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

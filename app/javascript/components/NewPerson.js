import React from 'react'

const NewPerson = (props)=> {
    return (
        <div>
            <h1>New Person Form Here</h1>
            <form action="/persons" method="post">
                <p>Full Name</p>
                {/*input name='model[attr]'/>*/}
                <input name = "person[full_name]"/>
                <p>Age</p>
                <input name = "person[age]"/>
                <p>Gender</p>
                <input name = "person[gender]"/>
                <button type="submit">Add Here</button>
            </form>
        </div>
    );
};

export default NewPerson;
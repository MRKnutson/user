import React from "react";

const PersonEdit = (props) => {
  const { id, full_name, age, gender } = props.person;
 
  return (
    <div>
      <h1>Edit Page</h1>
      <form action={`/persons/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={full_name} name="person[full_name]" />
        <p>Age </p>
        <input defaultValue={age} name="person[age]" />
        <p>Gender</p>
        <textarea defaultValue={gender} name="person[gender]" />
        <br />
        <button type="submit">update</button>
      </form>
    </div>
  );
};
export default PersonEdit;
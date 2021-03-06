import React from "react";

const Persons = (props) => {
  console.log(props.persons);
 
  const renderPersons = () => {
    return props.persons.map((person) => {
      return (
      <div style={{margin:"20px", border:'1px solid'}}>
        <a href={`/persons/${person.id}`} data-method="delete">Delete a Person&nbsp;&nbsp;</a>
        <a href={`/persons/${person.id}`} data-method="edit">Edit a Person</a>
        <h1>{person.full_name}</h1>
        <p>{person.id}</p>
        <p>{person.age}</p>
        <p>{person.gender}</p>
      </div>
        );
    })
  };

  return (
    <div>
    <a href = "/persons/new">Add a Person</a>
    <p>Persons: {renderPersons()}</p>
  </div>
  );
};

// export component
export default Persons;
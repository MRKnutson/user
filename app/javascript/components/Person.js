import React from "react";

const Person = (props) => {
  console.log(props.person);
  const renderPerson = () => {
    return (
      <div style={{margin:"20px", border:'1px solid'}}>
        <h1>{props.person.full_name}</h1>
        <p>{props.person.age}</p>
        <p>{props.person.gender}</p>
      </div>
          );
  };
  return (
    <div>
      Person: {renderPerson()}
    </div>
  );
};

export default Person;

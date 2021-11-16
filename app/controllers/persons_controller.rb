class PersonsController < ApplicationController

    def new
        render component: "NewPerson"
    end

    def create
        Person.create(full_name:params[:person][:full_name], age: params[:person][:age], gender: params[:person][:gender])
    redirect_to persons_path
        end

    def index
        persons = Person.all 
        render component: "Persons", props: {persons:persons}
    end

    def show
        person = Person.find(params[:id])
        render component: "Person", props: {person: person}
    end

    def edit
        person = Person.find(params[:id])
        render component: "PersonEdit", props: {person: person}
    end

    def update
        person = Person.find(params[:id])
        if person.update(persons_params)
            redirect_to persons_path
        else
            render component: "PersonEdit", props: { person: person }
        end
    end
    
    def destroy
        Person.find(params[:id]).delete
        redirect_to persons_path
        end

    private
    
    def persons_params
        params.require(:person).permit(:full_name, :age, :gender)
    end

end

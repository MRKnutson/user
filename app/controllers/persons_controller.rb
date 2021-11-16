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

end

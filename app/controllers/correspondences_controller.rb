class CorrespondencesController < ApplicationController

    def index
        if params[:intention_id]
            intention = Intention.find(params[:intention_id])
            if intention
                render json: intention.correspondences, status: :ok
            else
                render json: {errors: "Must use a valid intention_id."}, status: :unprocessable_entity
            end
        elsif params[:subintention_id]
            subintention = Subintention.find(params[:subintention_id])
            if subintention
                render json: subintention.correspondences, status: :ok
            else
                render json: {errors: "Must use a valid subintention_id."}, status: :unprocessable_entity
            end
        else
            render json: Correspondence.all
        end
    end


    def create
       if params[:intention_id]
           intention = Intention.find(params[:intention_id])
           if intention
              correspondence = Correspondence.find_or_create_by(name: correspondence_params[:name], category_id: correspondence_params[:category_id])
            if correspondence.valid?
                intention.correspondences << correspondence unless intention.correspondences.include? correspondence 
                if !!correspondence_params[:note]
                    note = Note.new(intention_id: intention.id, content: correspondence_params[:note], correspondence_id: correspondence.id) 
                    correspondence.notes << note if note.save 
                end
                render json: correspondence, status: :ok
            else 
                render json: {errors: correspondence.errors.full_messages}, status: :unprocessable_entity
            end 

           else
               render json: {errors: "Intention not found."}, status: :unprocessable_entity
           end
       else
            correspondence = Correspondence.new(correspondence_params)
            if correspondence.save
                render json: correspondence, status: :created
            else 
                render json: {errors: correspondence.errors.full_messages}, status: :unprocessable_entity
            end 
       end
    end

    def destroy
        if params[:intention_id]
            intention = Intention.find_by(name: params[:intention_id])
            intention.correspondences.delete(params[:id])
            head :ok
        else  
            Correspondence.find(params[:id]).destroy
            head :ok
        end
    end


    private 

    def correspondence_params
        params.require(:correspondence).permit(:name, :desc, :category_id, :note)
    end

end

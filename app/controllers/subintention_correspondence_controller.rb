class SubintentionCorrespondenceController < ApplicationController
    def create 
        subintention = Subintention.find(params[:subintention_id])
        correspondence = Correspondence.find_or_create_by(name: params[:correspondence][:name], category_id: params[:correspondence][:category_id])
        if correspondence.valid?
            subintention.correspondences << correspondence unless subintention.correspondences.include? correspondence 
            correspondence.notes.create(intention_id: subintention.intention.id, content: params[:correspondence][:note], correspondence_id: correspondence.id, subintention_id: subintention.id) if !!params[:correspondence][:note]
            render json: correspondence, status: :created
        else 
            render json: {errors: correspondence.errors.full_messages}, status: :unprocessable_entity
        end
    end
end

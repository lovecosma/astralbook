class NotesController < ApplicationController
    has_and_belongs_to_many :notes
end

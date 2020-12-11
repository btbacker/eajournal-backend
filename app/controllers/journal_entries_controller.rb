class JournalEntriesController < ApplicationController

    def index
        journal_entries = JournalEntry.all
        render json: journal_entries
    end

    def show
        if journal_entry
            render json: journal_entry
        else 
            render json: { error: 'journal entry could not be found' }
        end
    end

    def create
        journal_entry = JournalEntry.new(journal_entry_params)
        if journal_entry.save
            render json: journal_entry 
        else 
            render json: { error: 'journal entry could not be created' }
        end
    end

    def update
        journal_entry.update(journal_entry_params)
        if journal_entry.valid?
            render json: journal_entry
        else 
            render json: { error: 'journal entry could not be found' }
        end
    end

    def destroy
        if journal_entry
            journal_entry.delete
        else
            render json: { error: 'journal entry could not be found' }
        end
    end

    private
    def journal_entry_params
        params.require(:journal_entry)
    end

    def find_journal_entry
        journal_entry = JournalEntry.find(params[:id])
    end
end

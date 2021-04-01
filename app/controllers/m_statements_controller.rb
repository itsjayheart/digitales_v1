class MStatementsController < ApplicationController
	def index
		@tale = Tale.find(params['tale_id'])
		@m_statements = @tale.m_statements
	end

	def new
		@m_statement = MStatement.new
	end

	def create
		@tale = Tale.find(params['tale_id'])
		hash = params['m_statement']

		@m_statement = MStatement.create(tale: @tale, title: hash['title'], description: hash['description'])

		redirect_to tale_m_statements_path(@tale.id)
	end

	def edit
		@tale = Tale.find(params['tale_id'])
		@m_statement = MStatement.find(params['id'])
	end

	def update
		@tale = Tale.find(params['tale_id'])
		@m_statement = MStatement.find(params['id'])

		hash = params['m_statement']

		@m_statement.update(title: hash['title'], description: hash['description'])

		redirect_to tale_m_statements_path(@tale.id)
	end
end

#!/bin/env ruby
# encoding: utf-8
class AddTownToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :town, :string, :default => 'Киев'
  end
end

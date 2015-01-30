require 'spec_helper'
describe EqualLines do
 it 'Compare lines - Equal1' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = EqualLines.new(1,1,4,5)
  expect(line1).to eq line2 
 end
 it 'Compare lines - Equal2' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = EqualLines.new(4,5,1,1)
  expect(line1).to eq line2 
 end
 it 'Compare line - NotEqual1' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = EqualLines.new(1,2,3,4)
  expect(line1).not_to eq line2
 end
 it 'Nil edge check' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = nil
  expect(line1==nil).to eq false
 end
 it 'Reflexive check' do
  line1 = EqualLines.new(1,1,4,5)
  expect(line1).to eq line1
 end

 it 'Symmetric check' do
  line1 = EqualLines.new(1,2,4,5)
  line2 = EqualLines.new(4,5,1,2)
  expect(line1).to eq line2 
  expect(line2).to eq line1 
 end
 it 'transitive check' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = EqualLines.new(4,5,1,1)
  line3 = EqualLines.new(1,1,4,5)
  expect(line1).to eq line2 
  expect(line2).to eq line3 
  expect(line3).to eq line1 
 end
 it 'hash check when all coordinates are the same' do
  line1 = EqualLines.new(1,1,4,5)
  line2 = EqualLines.new(1,1,4,5)
  expect(line1.hash).to eq (line2.hash) 
  
 end

 
 

end
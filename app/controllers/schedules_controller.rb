#encoding: utf-8
class SchedulesController < ApplicationController
  def index
  	@TitleOfPage = "Расписание"
    @maxLessons = CountLesson.last
    @allDay = Day.all
    @allGroup = Group.all
  end

  def new
  	@TitleOfPage = "Добавить пару"
  	@maxLessons = CountLesson.last
    if @maxLessons.nil?
      @maxLessons = CountLesson.new(:count => 0)
    end
  	@allAudience = Audience.all
  	@allDay = Day.all
  	@allGroup = Group.all
  	@allLesson = Lesson.all
    @allLecturer = Lecturer.all
  end
end

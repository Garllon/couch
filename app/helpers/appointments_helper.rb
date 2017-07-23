module AppointmentsHelper
  def static_gmaps_image_url_for(appointment, imgWidth, imgHeight)
    'http://maps.googleapis.com/maps/api/staticmap' \
      "?size=#{imgWidth}x#{imgHeight}" \
      '&sensor=false' \
      '&zoom=14' \
      "&markers=#{appointment.latitude},#{appointment.longitude}" \
      "&key=#{GOOGLE_MAPS_KEY}"
  end
end

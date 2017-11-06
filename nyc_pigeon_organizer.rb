
def nyc_pigeon_organizer(data)
  # write your code here!
  #Get Unique Names
  names = {}
  data.each do |main_key, main_values|
    main_values.each do |sub_key, data_arrays|
      data_arrays.each do |name|
        #create return hash
        if names["#{name}"] == nil
          names["#{name}"] = {color:[],gender:[],lives:[] }
        end

        #all names at this point have sub structure.
        #iterate through the main keys and match key value to sub structure key
        names.each do |name_key, name_aspect_data|
          name_aspect_data.each do |aspect_name, aspect_value|
            if aspect_name.to_s == main_key.to_s
              if not names["#{name}"][:"#{aspect_name}"].include?(sub_key.to_s) and data_arrays.include?("#{name}")
                names["#{name}"][:"#{aspect_name}"] << sub_key.to_s

              end
            end
          end
        end

      end
    end
  end
  names
end

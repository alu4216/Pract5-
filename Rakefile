task :default => :jugarpiedra

 desc 'Ejecuta piedra papel tijeras con opcion "piedra"'
 task :jugarpiedra do
   sh "ruby -Ilib bin/ppt.rb piedra"
end

 desc 'Ejecuta todos los test para la clase'
 task :test do
   sh "ruby -Ilib test/test_ppt.rb"
	end	
 desc 'Ejecuta una test concreto especificando su nombre'
 task :t, :nombre_test do |t, nombre|
   nombre_test = nombre[:nombre_test]
   sh "ruby -w -Ilib test/test_ppt.rb --name #{nombre_test}" 

	end

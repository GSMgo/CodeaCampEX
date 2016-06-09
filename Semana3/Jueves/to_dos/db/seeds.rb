# Este archivo sirve para crear registros de prueba

print "FIND  "
p Task.find(1)

print "TAKE  "
p Task.take

print "FIRST  "
p Task.first

print "LAST  "
p Task.last

# print "FIND_BY  "
# p Task.find_by completed: 'true'

print "CREATE  "
p Task.create(text: 'Esto es una tarea', completed: false)

print "SAVE  "
p Task.save

print "COUNT  "
p Task.count

print "NEW  "
p tarea = Task.new(text: 'segunda tarea', completed: false)
tarea.save


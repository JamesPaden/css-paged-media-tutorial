import os
import glob

names = glob.glob('../lesson-*')
names = [name.lstrip('../') for name in names]


with open('source/lessons.rst', 'wb') as fp_out:
    fp_out.write('Lessons\n')
    fp_out.write('+++++++\n\n')
    fp_out.write('.. toctree::\n')

    for name in names:
        print name
        fp_out.write('  {}.rst\n'.format(name))
        txt = open('lesson-template.rst', 'rb').read()
        txt = txt.replace('lesson-basic', name)
        open('source/{}.rst'.format(name), 'wb').write(txt)

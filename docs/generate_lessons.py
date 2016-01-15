import os
import glob
import jinja2
from ConfigParser import ConfigParser

root_path = os.path.abspath(os.path.join(os.getcwd(), '..'))

names = glob.glob('{}/lesson-*'.format(root_path))
names = [os.path.basename(name) for name in names]


with open('source/lessons.rst', 'wb') as fp_out:
    fp_out.write('Lessons\n')
    fp_out.write('+++++++\n\n')
    fp_out.write('.. toctree::\n')

    with open('lesson.tpl', 'rb') as fp:
        content = fp.read()
        content = unicode(content, 'utf-8')
        template = jinja2.Template(content)

    for name in names:
        print name
        fp_out.write('  {}.rst\n'.format(name))

        lesson_dir = os.path.join(root_path, name)
        conversion_ini = os.path.join(lesson_dir, 'conversion.ini')
        pdfs = list()
        if os.path.exists(conversion_ini):
            CP = ConfigParser()
            CP.read(conversion_ini)
            for section in CP.sections():
                pdf_file = CP.get(section, 'pdf')
                status = CP.get(section, 'status')
                message = CP.get(section, 'message')
                pdfs.append(dict(name=section, pdf_file=pdf_file, status=status, message=message))

        has_css = os.path.exists(os.path.join(lesson_dir, 'styles.css'))

        params = dict(
            name=name,
            pdfs=pdfs,
            has_css=has_css
            )

        output = template.render(params)
        open('source/{}.rst'.format(name), 'wb').write(output.encode('utf8'))
        os.system('git add source/{}.rst'.format(name))


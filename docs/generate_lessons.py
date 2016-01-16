import os
import glob
import jinja2
import collections
from ConfigParser import ConfigParser

root_path = os.path.abspath(os.path.join(os.getcwd(), '..'))

names = glob.glob('{}/lesson-*'.format(root_path))
names = [os.path.basename(name) for name in names]

compliance = collections.OrderedDict()

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
        comp = dict()
        mode = 'html'
        if os.path.exists(conversion_ini):
            CP = ConfigParser()
            CP.read(conversion_ini)
            if CP.has_option('main', 'mode'):
                mode = CP.get('main', 'mode')

            for section in CP.sections():
                if section not in ('PDFreactor', 'PrinceXML', 'Vivliostyle', 'Antennahouse'):
                    continue

                pdf_file = CP.get(section, 'pdf')
                status = CP.get(section, 'status')
                message = CP.get(section, 'message')
                pdfs.append(dict(name=section, pdf_file=pdf_file, status=status, message=message))
                comp[section] = dict(name=section, pdf_file=pdf_file, status=status, message=message)

        compliance[name]  = comp
        has_css = os.path.exists(os.path.join(lesson_dir, 'styles.css'))

        params = dict(
            name=name,
            pdfs=pdfs,
            has_css=has_css,
            mode=mode
            )

        output = template.render(params)
        open('source/{}.rst'.format(name), 'wb').write(output.encode('utf8'))
        os.system('git add source/{}.rst'.format(name))

    fp_out.write('  :maxdepth: 1\n')

# compliance.html
with open('compliance.tpl', 'rb') as fp:
    content = fp.read()
    content = unicode(content, 'utf-8')
    template = jinja2.Template(content)
output = template.render(dict(rows=compliance))
open('source/compliance_include.html'.format(name), 'wb').write(output.encode('utf8'))

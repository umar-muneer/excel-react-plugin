# Base Image
FROM gcr.io/educative-dev-1/ed-live-vm-base-image:testing-9
# Code and Environment Setup
RUN git clone https://github.com/umar-muneer/excel-react-plugin.git /var/educative/excel_react_plugin
WORKDIR /var/educative/excel_react_plugin/add_in
RUN npm install
WORKDIR /var/educative/excel_react_plugin/add_in/my_office_add_in
RUN npm install
WORKDIR /var/educative/excel_react_plugin/add_in
# Launch the process
ENTRYPOINT npm start
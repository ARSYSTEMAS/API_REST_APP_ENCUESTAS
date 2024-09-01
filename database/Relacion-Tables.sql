Use encuestas;

/*TABLA ENCUESTAS*/
Describe survey; 
/*TABLA PREGUNTAS*/
describe questions;
/*TABLA OPCIONES DE PREGUNTAS*/
describe answer_options;
/*TABLA RESPUESTAS DE ENCUESTAS*/
describe response;

/*RELACION SURVEY ON QUESTIONS*/
ALTER TABLE questions
ADD CONSTRAINT fk_survey_questions
FOREIGN KEY(IdEncuesta) REFERENCES survey(Id);

/*RELACION SURVEY ON ANSWER_OPTIONS*/
ALTER TABLE answer_options
ADD CONSTRAINT fk_survey_answer_options
FOREIGN KEY(IdEncuesta) REFERENCES survey(Id);

/*RELACION SURVEY ON RESPONSE*/
ALTER TABLE response
ADD CONSTRAINT fk_survey_response
FOREIGN KEY(IdEncuesta) REFERENCES survey(Id);

/*RELACION SURVEY ON QUESTION_BRANCHES*/
ALTER TABLE question_branches
ADD CONSTRAINT fk_survey_question_branches
FOREIGN KEY(IdEncuesta) REFERENCES survey(Id);

/*RELACION QUESTIONS ON ANSWER_OPTIONS*/
ALTER TABLE answer_options
ADD CONSTRAINT fk_questions_answer_options
FOREIGN KEY(IdQuestion) REFERENCES questions(IdQuestion);

/*RELACION QUESTIONS ON RESPONSE*/
ALTER TABLE response
ADD CONSTRAINT fk_questions_response
FOREIGN KEY(IdQuestion) REFERENCES questions(IdQuestion);

/*RELACION QUESTIONS ON QUESTION_BRANCHES*/
ALTER TABLE question_branches
ADD CONSTRAINT fk_questions_question_branches
FOREIGN KEY(IdQuestion) REFERENCES questions(IdQuestion);

/*RELACION LIBRARYQUESTIONS ON LIBRARYANSWERS*/
ALTER TABLE libraryanswers
ADD CONSTRAINT fk_libraryquestions_libraryanswers
FOREIGN KEY(IdQuestion) REFERENCES libraryquestions(IdQuestion);

/*RELACION USUARIOS ON AUTH*/
ALTER TABLE auth
ADD CONSTRAINT fk_usuarios_auth
FOREIGN KEY(Id) REFERENCES usuarios(Id);
# Atividade: Sistema de Recomendação de Música

## Descrição da Atividade
![WhatsApp Image 2025-11-18 at 21 24 21_e4d39c28](https://github.com/user-attachments/assets/55befcd7-1a8b-4c14-8cd0-9c7497f35292)


## Modelagem (arrows.app)
<img width="835" height="511" alt="Untitled graph (3)" src="https://github.com/user-attachments/assets/dc8259c6-ec79-41eb-8024-6ba57231dcc8" />

### Modelagem em cypher (gerada automáticamente)

    MERGE (Music {id: "int", title: "String", time: "Time"})<-[:RELEASE {date: "Date"}]-({id: "int", name: "String"})<-[:FOLLOW]-({id: "int", name: "String", cpf: "String", email: "String"})-[:LISTEN {rating: "int", nListen: "int"}]->(Music)-[:HAS]->({id: "int", name: "String"})

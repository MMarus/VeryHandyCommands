## Create Hello World project
```
mvn io.quarkus:quarkus-maven-plugin:0.18.0:create \
-DprojectGroupId=org.acme \
-DprojectArtifactId=getting-started \
-DclassName="org.acme.quickstart.GreetingResource" \
-Dpath="/hello"
```
## Run the app
```bash
$  mvn compile quarkus:dev
```

## Open http://localhost:8080/hello

## Start DB (postgreSQL in docker)
```
docker run --ulimit memlock=-1:-1 -it --rm=true --memory-swappiness=0 --name quarkus_test -e POSTGRES_USER=quarkus_test -e POSTGRES_PASSWORD=quarkus_test -e POSTGRES_DB=quarkus_test -p 5432:5432 postgres:10.5
```

## DB setup resources/application.properties
```
quarkus.datasource.url=jdbc:postgresql:quarkus_test
quarkus.datasource.driver=org.postgresql.Driver
quarkus.datasource.username=quarkus_test
quarkus.datasource.password=quarkus_test
quarkus.datasource.max-size=8
quarkus.datasource.min-size=2
quarkus.hibernate-orm.database.generation=drop-and-create
quarkus.hibernate-orm.log.sql=true
```

## Create resources/import.sql
```
INSERT INTO fruit(id, name) VALUES (nextval('hibernate_sequence'), 'Cherry')
INSERT INTO fruit(id, name) VALUES (nextval('hibernate_sequence'), 'Apple')
INSERT INTO fruit(id, name) VALUES (nextval('hibernate_sequence'), 'Banana')
```

## Add deps
```
<dependency>
    <groupId>io.quarkus</groupId>
    <artifactId>quarkus-hibernate-orm-panache</artifactId>
</dependency>
<dependency>
    <groupId>io.quarkus</groupId>
    <artifactId>quarkus-resteasy-jsonb</artifactId>
</dependency>
<dependency>
    <groupId>io.quarkus</groupId>
    <artifactId>quarkus-jdbc-postgresql</artifactId>
</dependency>
```

## Create Fruit entity & FruitResource
```java
package org.acme.quickstart;

import javax.persistence.Column;
import javax.persistence.Entity;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class Fruit extends PanacheEntity {

    @Column(length = 40, unique = true)
    public String name;

    public Fruit() {
    }

    public Fruit(String name) {
        this.name = name;
    }
}
```


## Add /fruits to the GreetingResource
```java
@GET
public List<Fruit> get() {
    return Fruit.listAll(Sort.by("name"));
}
```

## Go to http://localhost:8080/hello/fruits

## Add weight to the Fruit & to the import.sql

## Refresh the app

## CDI - create Greeter
```java
package org.acme.quickstart;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class Greeter {

    public String greet() {
        return "Hello Loepfe";
    }

}
```

## Inject it to the GreetingResource & use the greeter
```java
@Inject
Greeter greeter;

@GET
@Path("/loepfe")
@Produces(MediaType.TEXT_PLAIN)
public String helloLoepfe() {
    return greeter.greet();
}
```
## Go to http://localhost:8080/hello/loepfe

# ReeBook
0115 길어서 나중에 한번에 
2020학년도 1학기 교재대여사업

Working History>
0101
/
o.s.w.s.r.ResourceHttpRequestHandler : Path with
jsp 파일의 경로를 올바르게 지정했음에도 STS에서 경로 오류가 발생하며
웹페이지에선 404 에러.

Solve > https://dogcowking.tistory.com/326
걍 리부팅;

+ 스프링부트로 실행한 상태에서 properties에 경로를 변경해줘서 발생하는 듯.

/
Error starting ApplicationContext. To display the conditions report re-run your application with 'debug' enabled.
2020-01-01 08:09:50.334 ERROR 8968 --- [  restartedMain] o.s.boot.SpringApplication               : Application run failed

org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Invocation of init method failed; nested exception is java.lang.NoClassDefFoundError: Docs
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1796) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:595) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:517) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:323) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:222) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:321) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1108) ~[spring-context-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:868) ~[spring-context-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:550) ~[spring-context-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:141) ~[spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:747) [spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:397) [spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:315) [spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1226) [spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1215) [spring-boot-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at net.skhu.Rb0Application.main(Rb0Application.java:10) [classes/:na]
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[na:1.8.0_221]
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source) ~[na:1.8.0_221]
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source) ~[na:1.8.0_221]
	at java.lang.reflect.Method.invoke(Unknown Source) ~[na:1.8.0_221]
	at org.springframework.boot.devtools.restart.RestartLauncher.run(RestartLauncher.java:49) [spring-boot-devtools-2.2.2.RELEASE.jar:2.2.2.RELEASE]
Caused by: java.lang.NoClassDefFoundError: Docs
	at java.lang.Class.getDeclaredMethods0(Native Method) ~[na:1.8.0_221]
	at java.lang.Class.privateGetDeclaredMethods(Unknown Source) ~[na:1.8.0_221]
	at java.lang.Class.getDeclaredMethods(Unknown Source) ~[na:1.8.0_221]
	at org.hibernate.annotations.common.reflection.java.JavaXClass.getDeclaredMethodProperties(JavaXClass.java:95) ~[hibernate-commons-annotations-5.1.0.Final.jar:5.1.0.Final]
	at org.hibernate.annotations.common.reflection.java.JavaXClass.getDeclaredProperties(JavaXClass.java:112) ~[hibernate-commons-annotations-5.1.0.Final.jar:5.1.0.Final]
	at org.hibernate.annotations.common.reflection.java.JavaXClass.getDeclaredProperties(JavaXClass.java:104) ~[hibernate-commons-annotations-5.1.0.Final.jar:5.1.0.Final]
	at org.hibernate.cfg.InheritanceState.determineDefaultAccessType(InheritanceState.java:252) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.cfg.InheritanceState.getElementsToProcess(InheritanceState.java:211) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.cfg.AnnotationBinder.bindClass(AnnotationBinder.java:781) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.boot.model.source.internal.annotations.AnnotationMetadataSourceProcessorImpl.processEntityHierarchies(AnnotationMetadataSourceProcessorImpl.java:254) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.boot.model.process.spi.MetadataBuildingProcess$1.processEntityHierarchies(MetadataBuildingProcess.java:230) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.boot.model.process.spi.MetadataBuildingProcess.complete(MetadataBuildingProcess.java:273) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.metadata(EntityManagerFactoryBuilderImpl.java:1202) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.build(EntityManagerFactoryBuilderImpl.java:1233) ~[hibernate-core-5.4.9.Final.jar:5.4.9.Final]
	at org.springframework.orm.jpa.vendor.SpringHibernateJpaPersistenceProvider.createContainerEntityManagerFactory(SpringHibernateJpaPersistenceProvider.java:58) ~[spring-orm-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.createNativeEntityManagerFactory(LocalContainerEntityManagerFactoryBean.java:365) ~[spring-orm-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.buildNativeEntityManagerFactory(AbstractEntityManagerFactoryBean.java:391) ~[spring-orm-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.afterPropertiesSet(AbstractEntityManagerFactoryBean.java:378) ~[spring-orm-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.afterPropertiesSet(LocalContainerEntityManagerFactoryBean.java:341) ~[spring-orm-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1855) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1792) ~[spring-beans-5.2.2.RELEASE.jar:5.2.2.RELEASE]
	... 21 common frames omitted
Caused by: java.lang.ClassNotFoundException: Docs
	at java.net.URLClassLoader.findClass(Unknown Source) ~[na:1.8.0_221]
	at java.lang.ClassLoader.loadClass(Unknown Source) ~[na:1.8.0_221]
	at sun.misc.Launcher$AppClassLoader.loadClass(Unknown Source) ~[na:1.8.0_221]
	at java.lang.ClassLoader.loadClass(Unknown Source) ~[na:1.8.0_221]
	at org.springframework.boot.devtools.restart.classloader.RestartClassLoader.loadClass(RestartClassLoader.java:144) ~[spring-boot-devtools-2.2.2.RELEASE.jar:2.2.2.RELEASE]
	at java.lang.ClassLoader.loadClass(Unknown Source) ~[na:1.8.0_221]
	... 42 common frames omitted

Docs Table Join Error
외래키 두개의 조합을 기본키로 사용하려 했으나, 위와 같은 오류 발생.
핵심은 Error starting ApplicationContext. To display the conditions report re-run your application with 'debug' enabled.
이 아니라 org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Invocation of init method failed; nested exception is javax.persistence.PersistenceException: [PersistenceUnit: default] Unable to build Hibernate SessionFactory; nested exception is org.hibernate.MappingException: Repeated column in mapping for entity: net.skhu.domain.Document column: id (should be mapped with insert="false" update="false")
# 기본키 값이 중복이 발생할 수 있는 경우? 등 무결성이 침해될 때 생기는 듯

기본키 id 만들기, 설정 변경 등등 해봤으나 

+ docs table 수정.
mysql> desc docs;
+-------+------------------+------+-----+---------+-------+
| Field | Type             | Null | Key | Default | Extra |
+-------+------------------+------+-----+---------+-------+
| bid   | int(10) unsigned | YES  | MUL | NULL    |       |
| lid   | int(10) unsigned | YES  | MUL | NULL    |       |
| kind  | char(10)         | YES  |     | NULL    |       |
+-------+------------------+------+-----+---------+-------+

>

mysql> desc document;
+-------+------------------+------+-----+---------+-------+
| Field | Type             | Null | Key | Default | Extra |
+-------+------------------+------+-----+---------+-------+
| id    | int(10) unsigned | NO   | PRI | NULL    |       |
| bid   | int(10) unsigned | YES  | MUL | NULL    |       |
| lid   | int(10) unsigned | YES  | MUL | NULL    |       |
| kind  | char(10)         | YES  |     | NULL    |       |
+-------+------------------+------+-----+---------+-------+

그럴필요없이
애초 기획대로 외래키 두개를 기본키로 사용하고,
primary key(bid,lid)
엔티티에서 @Id 두개의 컬럼에 모두 붙여주며 엔티티 클래스는 implements Serializable.

Sol> https://dkfkslsksh.tistory.com/64

document table creation query update.

데이터베이스 연동은 성공. 실행 확인. &*1


/
 문제 재발
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Invocation of init method failed; nested exception is javax.persistence.PersistenceException: [PersistenceUnit: default] Unable to build Hibernate SessionFactory; nested exception is org.hibernate.MappingException: Repeated column in mapping for entity: net.skhu.domain.Document column: id (should be mapped with insert="false" update="false")

걍 JoinColumn 잘못씀

+복합 PK Mapping 
Sol>http://blog.breakingthat.com/2018/03/16/jpa-entity-%EB%B3%B5%ED%95%A9pk-%EB%A7%B5%ED%95%91-embeddedid-idclass/

/
Json 형식으로 테스트
Sol>https://mrrootable.tistory.com/75
성공.

/
Github 연동
Sol>https://all-record.tistory.com/163
성공.

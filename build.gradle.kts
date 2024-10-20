import org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_21
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
  kotlin("jvm") version "2.0.21"
}

repositories {
  mavenCentral()
}


java {
  toolchain {
    languageVersion = JavaLanguageVersion.of(21)
  }
}

tasks.withType<KotlinCompile> {
  compilerOptions.jvmTarget = JVM_21
}

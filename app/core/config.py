from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_file=".env", env_file_encoding="utf-8")
    API_V1_STR: str = "/api/v1"
    PROJECT_NAME: str = "CESI MICSI"

settings = Settings(_env_file=".env")
